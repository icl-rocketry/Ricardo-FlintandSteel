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
pyro1(ArduinoGpio(PinMap::Nuke2),ArduinoGpio(PinMap::Cont2),networkmanager),
pyro2(ArduinoGpio(PinMap::Nuke3),ArduinoGpio(PinMap::Cont3),networkmanager),
pyro3(ArduinoGpio(PinMap::Nuke4),ArduinoGpio(PinMap::Cont4),networkmanager),
pyro0_adapter(0,pyro0,[](const std::string& msg) {
    RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::COUT>("PYRO0 " + msg);
}),
pyro1_adapter(1,pyro1,[](const std::string& msg) {
    RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::COUT>("PYRO1 " + msg);
}),
pyro2_adapter(2,pyro2,[](const std::string& msg) {
    RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::COUT>("PYRO2 " + msg);
}),
pyro3_adapter(3,pyro3,[](const std::string& msg) {
    RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::COUT>("PYRO3 " + msg);
}),
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
    pyro1.setup();
    pyro2.setup();
    pyro3.setup();

    pinMode(PinMap::Switch0, INPUT_PULLUP);
    pinMode(PinMap::Switch1, INPUT_PULLUP);
    pinMode(PinMap::Switch2, INPUT_PULLUP);
    pinMode(PinMap::Switch3, INPUT_PULLUP);

    I2C.begin(PinMap::SDA, PinMap::SCL, GeneralConfig::I2C_FREQUENCY);
    curr_sensor.setup(GeneralConfig::sense_resistance, GeneralConfig::maxExpectedCurrent);

    uint8_t pyroservice0 = static_cast<uint8_t>(Services::ID::Pyro0);
    uint8_t pyroservice1 = static_cast<uint8_t>(Services::ID::Pyro1);
    uint8_t pyroservice2 = static_cast<uint8_t>(Services::ID::Pyro2);
    uint8_t pyroservice3 = static_cast<uint8_t>(Services::ID::Pyro3);

    networkmanager.registerService(pyroservice0,pyro0.getThisNetworkCallback());
    networkmanager.registerService(pyroservice1,pyro1.getThisNetworkCallback());
    networkmanager.registerService(pyroservice2,pyro2.getThisNetworkCallback());
    networkmanager.registerService(pyroservice3,pyro3.getThisNetworkCallback());

    pinMode(PinMap::highSideEN,OUTPUT);
    digitalWrite(PinMap::highSideEN, HIGH);
};

void System::systemUpdate(){

    // HIGH or LOW
    bool switch0 = digitalRead(PinMap::Switch0);
    bool switch1 = digitalRead(PinMap::Switch1);
    bool switch2 = digitalRead(PinMap::Switch2);
    bool switch3 = digitalRead(PinMap::Switch3);

    // arm(0) enforces continuity
    if (!switch0)
    {
        pyro0_adapter.arm(0);
    }
    else
    {
        pyro0_adapter.disarm();
    }

    if (!switch1)
    {
        pyro1_adapter.arm(0);
    }
    else
    {
        pyro1_adapter.disarm();
    }

    if (!switch2)
    {
        pyro2_adapter.arm(0);
    }
    else
    {
        pyro2_adapter.disarm();
    }

    if (!switch3)
    {
        pyro3_adapter.arm(0);
    }
    else
    {
        pyro3_adapter.disarm();
    }

    // TODO: adapter.execute() to actually fire armed/disarmed pyro

    curr_sensor.update();
};