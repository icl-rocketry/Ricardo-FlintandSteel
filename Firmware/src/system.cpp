#include "system.h"

#include <memory>

#include <libriccore/riccoresystem.h>

#include <HardwareSerial.h>

#include "Config/systemflags_config.h"
#include "Config/commands_config.h"
#include "Config/pinmap_config.h"
#include "Config/general_config.h"
#include "config/services_config.h"

#include "Commands/commands.h"

#include "States/idle.h"


System::System():
RicCoreSystem(Commands::command_map,Commands::defaultEnabledCommands,Serial),
canbus(systemstatus, PinMap::TxCan, PinMap::RxCan, 3),
pyro0(PinMap::Nuke1,PinMap::Cont1,networkmanager),
pyro1(PinMap::Nuke2,PinMap::Cont2,networkmanager),
pyro2(PinMap::Nuke3,PinMap::Cont3,networkmanager),
pyro3(PinMap::Nuke4,PinMap::Cont4,networkmanager)
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

    uint8_t pyroservice0 = (uint8_t) Services::ID::Pyro0;
    uint8_t pyroservice1 = (uint8_t) Services::ID::Pyro1;
    uint8_t pyroservice2 = (uint8_t) Services::ID::Pyro2;
    uint8_t pyroservice3 = (uint8_t) Services::ID::Pyro3;

    networkmanager.registerService(pyroservice0,pyro0.getThisNetworkCallback());
    networkmanager.registerService(pyroservice1,pyro1.getThisNetworkCallback());
    networkmanager.registerService(pyroservice2,pyro2.getThisNetworkCallback());
    networkmanager.registerService(pyroservice3,pyro3.getThisNetworkCallback());
};

void System::systemUpdate(){};