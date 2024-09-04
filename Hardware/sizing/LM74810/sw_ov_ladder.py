Vov = 32 #Overvoltage Cutoff
VBMax = 35 #Maximum expected bus voltage
VBMon = 3.0 #Bus monitor output voltage. 3V to take advantage of the ESP32 ADC.
R1 = 100000 #Arbitrary R1 value

#Constants
Vovr = 1.23 #Overvoltage reference
VR = Vovr / Vov #Constant ratio between Vovr and Vov to make final equations easier
VBr = VBMon/VBMax #Same as above
C1 = VR / (1-VR) #Another constant to make final eq easier

R2 =  R1 * (VBr * (1+C1) - C1)/(1+C1-VBr*(1+C1))
R3 = VR*(R1+R2)/(1-VR)


print("R1: {}".format(R1))
print("R2: {}".format(R2))
print("R3: {}".format(R3))

#Validation
R2 = 5100
R3 = 4220
Vov_out = Vovr * (R1+R2+R3) / R3
VBMon_out = VBMax * (R2+R3) / (R1+R2+R3)

print("Overvoltage cutoff setpoint from given resistor ladder values: {}".format(Vov_out))
print("BAT_MON pin output voltage at maximum expected bus Voltage: {}".format(VBMon_out))

if (R1+R2+R3 > 120000):
    print("Datasheet recommendation is that the sum of the resistor values is below 120k!")