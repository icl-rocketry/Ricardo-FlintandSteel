#pragma once

#include <libriccore/riccoresystem.h>
#include <librrc/Remote/nrcremotepyro.h>
#include <librrc/Local/remoteactuatoradapter.h>
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
        NRCRemotePyro<ArduinoGpio> pyro1;
        NRCRemotePyro<ArduinoGpio> pyro2;
        NRCRemotePyro<ArduinoGpio> pyro3;

        // Adapters to allow local use of pyro objects
        RemoteActuatorAdapter<NRCRemotePyro<ArduinoGpio>> pyro0_adapter;
        RemoteActuatorAdapter<NRCRemotePyro<ArduinoGpio>> pyro1_adapter;
        RemoteActuatorAdapter<NRCRemotePyro<ArduinoGpio>> pyro2_adapter;
        RemoteActuatorAdapter<NRCRemotePyro<ArduinoGpio>> pyro3_adapter;

        TwoWire I2C;
        INA219 curr_sensor;

    //private:


};