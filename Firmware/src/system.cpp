#include "system.h"

#include <memory>

#include <libriccore/riccoresystem.h>

#include <HardwareSerial.h>

#include "Config/systemflags_config.h"
#include "Config/commands_config.h"
#include "Config/pinmap_config.h"
#include "Config/general_config.h"
#include "Config/services_config.h"

#include "Commands/commands.h"

#include "States/idle.h"


System::System():
RicCoreSystem(Commands::command_map,Commands::defaultEnabledCommands,Serial),
canbus(systemstatus, PinMap::TxCan, PinMap::RxCan, 3),
pyro0(ArduinoGpio(PinMap::Nuke1),ArduinoGpio(PinMap::Cont1),networkmanager),
solenoid0(PinMap::Nuke2,PinMap::Cont2,networkmanager),
solenoid1(PinMap::Nuke3,PinMap::Cont3,networkmanager),
solenoid2(PinMap::Nuke4,PinMap::Cont4,networkmanager),
I2C(0),
curr_sensor(0b1000000, I2C)
{};


void System::systemSetup(){
    
    Serial.setRxBufferSize(GeneralConfig::SerialRxSize);
    Serial.begin(GeneralConfig::SerialBaud);
   
    //intialize rnp message logger
    loggerhandler.retrieve_logger<RicCoreLoggingConfig::LOGGERS::SYS>().initialize(networkmanager);

    //initialize statemachine with idle state
    statemachine.initalize(std::make_unique<Idle>(systemstatus,commandhandler));
    
    //any other setup goes here
    canbus.setup();
    networkmanager.addInterface(&canbus);

    networkmanager.setNodeType(NODETYPE::HUB);
    networkmanager.setNoRouteAction(NOROUTE_ACTION::BROADCAST,{1,3});

    pyro0.setup();
    solenoid0.setup();
    solenoid1.setup();
    solenoid2.setup();

    I2C.begin(PinMap::SDA, PinMap::SCL, GeneralConfig::I2C_FREQUENCY);
    curr_sensor.setup(GeneralConfig::sense_resistance, GeneralConfig::maxExpectedCurrent);

    uint8_t pyroservice0 = static_cast<uint8_t>(Services::ID::Pyro0);
    // uint8_t pyroservice1 = static_cast<uint8_t>(Services::ID::Pyro1);
    // uint8_t pyroservice2 = static_cast<uint8_t>(Services::ID::Pyro2);
    uint8_t solenoidservice0 = static_cast<uint8_t>(Services::ID::Solenoid0);
    uint8_t solenoidservice1 = static_cast<uint8_t>(Services::ID::Solenoid1);
    uint8_t solenoidservice2 = static_cast<uint8_t>(Services::ID::Solenoid2);

    networkmanager.registerService(pyroservice0,pyro0.getThisNetworkCallback());
    // networkmanager.registerService(pyroservice1,pyro1.getThisNetworkCallback());
    // networkmanager.registerService(pyroservice2,pyro2.getThisNetworkCallback());
    networkmanager.registerService(solenoidservice0,solenoid0.getThisNetworkCallback());
    networkmanager.registerService(solenoidservice1,solenoid1.getThisNetworkCallback());
    networkmanager.registerService(solenoidservice2,solenoid2.getThisNetworkCallback());
};

long prevTime = 0;

void System::systemUpdate(){

    curr_sensor.update();
};
// 1 this pc
// 0 serial direct connection
// 10 ID closest to usb
// 3 arm (arg is 1 for overide continuity) 2 fire (seconds in ms)
// 0 (arg)