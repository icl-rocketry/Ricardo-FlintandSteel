#include "INA219.h"

void INA219::setCalibration(float maxCurrent)
{
    _currentLSB = maxCurrent * recip2pow15;

    CalibrationReg = std::trunc(0.04096 / (_currentLSB * _resistance));

    writeRegister(Registers::Calibration, CalibrationReg);
}

void INA219::update()
{
}