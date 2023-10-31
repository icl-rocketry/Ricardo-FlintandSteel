#pragma once

#include <libriccore/riccoresystem.h>
#include <librrc/nrcremotepyro.h>
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

        NRCRemotePyro pyro0;
        NRCRemotePyro pyro1;
        NRCRemotePyro pyro2;
        NRCRemotePyro pyro3;

        TwoWire I2C;
        // INA219 curr_sensor;

    //private:


};