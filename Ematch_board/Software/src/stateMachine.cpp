/* 
Inital State machine framework written by Daniele Bella <3
Code used to process states, and the transitions between them, contains parent class for states

Written by the Electronics team, Imperial College London Rocketry
*/

#include "stateMachine.h"
#include <string>
#include <vector>
#include <functional>

#include "global_config.h"
#include "ricardo_pins.h"

#include "States/state.h"


#include "Network/interfaces/usb.h"

#include "Network/interfaces/canbus.h"

#include "rnp_networkmanager.h"
#include "rnp_default_address.h"
#include "rnp_nvs_save.h"

#include "Storage/logController.h"
#include "Storage/systemstatus.h"

#include "SPI.h"
#include "Wire.h"





stateMachine::stateMachine() : 
    I2C(0),
    usbserial(Serial,systemstatus,logcontroller),
    canbus(systemstatus,logcontroller,2),
    networkmanager(5,NODETYPE::HUB,true),
    commandhandler(this),
    logcontroller(networkmanager),
    systemstatus(&logcontroller),
    pyro0(Nuke0,Cont0,networkmanager),
    pyro1(Nuke1,Cont1,networkmanager),
    pyro2(Nuke2,Cont2,networkmanager),
    pyro3(Nuke3,Cont3,networkmanager),
    pyro4(Nuke4,Cont4,networkmanager),
    pyro5(Nuke5,Cont5,networkmanager)

{};


void stateMachine::initialise(State* initStatePtr) {

  //internal io initilization must happen here so io buses setup for sensor initialzation
  //intialize i2c interface
  I2C.begin(-1,-1,I2C_FREQUENCY);
  //initalize spi interface
  //open serial port on usb interface
  Serial.begin(Serial_baud);
  Serial.setRxBufferSize(SERIAL_SIZE_RX);


  //setup interfaces
  usbserial.setup();
  canbus.setup();

  //setup network manager so communication is running
  // add interfaces
  networkmanager.addInterface(&usbserial);
  networkmanager.addInterface(&canbus);

  networkmanager.enableAutoRouteGen(true);
  networkmanager.setNoRouteAction(NOROUTE_ACTION::BROADCAST,{1,2});

  //load default routing table
  RoutingTable routetable;
  routetable.setRoute((uint8_t)DEFAULT_ADDRESS::ROCKET,Route{2,1,{}});
  routetable.setRoute((uint8_t)DEFAULT_ADDRESS::GROUNDSTATION,Route{2,1,{}});

  networkmanager.setRoutingTable(routetable);
  networkmanager.updateBaseTable(); // save the new base table

  networkmanager.setAddress(default_address);

  networkmanager.enableAutoRouteGen(true); // enable route learning
  networkmanager.setNoRouteAction(NOROUTE_ACTION::BROADCAST,{1,2}); // enable broadcast over serial and radio only
  Serial.println(networkmanager.getAddress());
  
  logcontroller.setup();
  networkmanager.setLogCb([this](const std::string& message){return logcontroller.log(message);});

  //configure save function from network manager
  networkmanager.setSaveConfigImpl(RnpNvsSave::SaveToNVS);

  //try to load previous net config from nvs
  RnpNetworkManagerConfig savedNetworkConfig;
  if (!RnpNvsSave::ReadFromNVS(savedNetworkConfig))
  {
    logcontroller.log("loading saved config");
    networkmanager.loadconfig(savedNetworkConfig);
  }

  pyro0.setup();
  pyro1.setup();
  pyro2.setup();
  pyro3.setup();
  pyro4.setup();
  pyro5.setup();

   // command handler callback
  networkmanager.registerService(static_cast<uint8_t>(DEFAULT_SERVICES::COMMAND),commandhandler.getCallback()); 
  networkmanager.registerService(10,pyro0.getThisNetworkCallback());
  networkmanager.registerService(11,pyro1.getThisNetworkCallback());
  networkmanager.registerService(12,pyro2.getThisNetworkCallback());
  networkmanager.registerService(13,pyro3.getThisNetworkCallback());
  networkmanager.registerService(14,pyro4.getThisNetworkCallback());
  networkmanager.registerService(15,pyro5.getThisNetworkCallback());


  //call setup state
  changeState(initStatePtr);

  
};

void stateMachine::update() {

  networkmanager.update();

  State* newStatePtr = _currStatePtr->update();

  if (newStatePtr != _currStatePtr) {
    changeState(newStatePtr);
  }

  
};

void stateMachine::changeState(State* newStatePtr) {
  // Delete old state instance and change to new one
  if (_currStatePtr != NULL){
    //if not null pointer call exitstate method
    _currStatePtr->exitstate();

  };

  delete _currStatePtr;
  
  _currStatePtr = newStatePtr;
  _currStatePtr->initialise();



};

