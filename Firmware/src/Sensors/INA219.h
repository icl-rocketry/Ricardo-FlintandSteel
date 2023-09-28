#pragma once

#include <Wire.h>
#include <cmath>

class INA219
{
public:
    INA219(uint8_t I2Caddr, TwoWire &I2CObj):
    _deviceAddr(I2Caddr),
    _wire(I2CObj){};

    void setup(float resistance, float maxCurrent);

    void update();

    float getCurrent() { return _current; };
    float getBusV() { return _busV; };
    float getPower() { return _power; };

private:
    // register addresses
    enum class Registers : uint8_t
    {
        Config = 0x00,
        ShuntV = 0x01,
        BusV = 0x02,
        Power = 0x03,
        Current = 0x04,
        Calibration = 0x05,
    };

    // config register settings
    enum class PGAGain : uint8_t // left shift by 11 bits in gain set method
    {
        gain1 = 0b00,
        gain2 = 0b01,
        gain4 = 0b10,
        gain8 = 0b11
    };

    enum class ADCSettings : uint8_t // left shift by different amount for BADC and SADC.
    {
        res9bit = 0b0000,
        res10bit = 0b0001,
        res11bit = 0b0010,
        res12bit = 0b0011,
        avrg2samp = 0b1001,
        avrg4samp = 0b1010,
        avrg8samp = 0b1011,
        avrg16samp = 0b1100,
        avrg32samp = 0b1101,
        avrg64samp = 0b1110,
        avrg128samp = 0b1111
    };

    enum class Modes : uint8_t // no left shift required, last 3 bits of the config register
    {
        PowerDown = 0b000,
        ShuntVTrig = 0b001,
        BusVTrig = 0b010,
        ShuntandBusTrig = 0b011,
        ADCOFF = 0b100,
        ShuntVConti = 0b101,
        BusVConti = 0b110,
        ShuntandBusConti = 0b111
    };

    //  methods
    void writeRegister(INA219::Registers address, uint16_t value);
    uint16_t readRegister(INA219::Registers address);
    
    // device settings
    void setCalibration(float maxCurrent);

    // shadow registers, initialised to default value
    uint16_t ConfigReg = 0x399F;
    uint16_t CalibrationReg = 0x0000;

    // I2C vars
    TwoWire &_wire;
    uint8_t _deviceAddr;
    uint8_t _lastAccessedRegister;

    // calibration consts
    float _currentLSB;

    // sensor readings
    float _current;
    float _busV;
    float _power;

    // magic numbers
    static constexpr float recip2pow15 = 1.0 / 32768.0;
    static constexpr float busVLSB = 4e-3; //4 mV
};