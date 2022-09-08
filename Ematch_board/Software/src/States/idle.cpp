#include "idle.h"

#include "ricardo_pins.h"

#include <rnp_default_address.h>

Idle::Idle(stateMachine* sm):
State(sm, SYSTEM_FLAG::STATE_IDLE)
{};

void Idle::initialise(){
    State::initialise();

    //load the GroundstationGateway routing table
    RoutingTable routetable;
    routetable.setRoute((uint8_t)DEFAULT_ADDRESS::ROCKET,Route{2,1,{}});
    routetable.setRoute((uint8_t)DEFAULT_ADDRESS::GROUNDSTATION,Route{2,1,{}});

    _sm->networkmanager.setRoutingTable(routetable);
    _sm->networkmanager.updateBaseTable(); // save the new base table
    _sm->networkmanager.setAddress(default_address);

    _sm->networkmanager.enableAutoRouteGen(true); // enable route learning
    _sm->networkmanager.setNoRouteAction(NOROUTE_ACTION::BROADCAST,{1,2}); // enable broadcast over serial and radio only
    Serial.println(_sm->networkmanager.getAddress());
};

State* Idle::update(){
    return this;

};

void Idle::exitstate(){
    State::exitstate();
};


