#pragma once

#include <libriccore/riccoresystem.h>
#include <librrc/Remote/nrcremotepyro.h>
#include <librrc/Remote/nrcremotesolenoid.h>

#include <Wire.h>

#include "Config/systemflags_config.h"
#include "Config/commands_config.h"
#include "Config/pinmap_config.h"

#include <libriccore/networkinterfaces/can/canbus.h>

#include "Commands/commands.h"

#include <Sensors/INA219.h>


class System : public RicCoreSystem<System,SYSTEM_FLAG,Commands::ID>
{
    public:

        System();
        
        void systemSetup();

        void systemUpdate();

        CanBus<SYSTEM_FLAG> canbus;

        NRCRemotePyro<ArduinoGpio> pyro0;
        // NRCRemotePyro<ArduinoGpio> pyro1;
        // NRCRemotePyro<ArduinoGpio> pyro2;
        NRCRemoteSolenoid solenoid0;
        NRCRemoteSolenoid solenoid1;
        NRCRemoteSolenoid solenoid2;

        TwoWire I2C;
        INA219 curr_sensor;

    //private:


};