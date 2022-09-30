#include "idle.h"

#include "ricardo_pins.h"

#include <rnp_default_address.h>

Idle::Idle(stateMachine* sm):
State(sm, SYSTEM_FLAG::STATE_IDLE)
{};

void Idle::initialise(){
    State::initialise();
};

State* Idle::update(){
    return this;

};

void Idle::exitstate(){
    State::exitstate();
};


