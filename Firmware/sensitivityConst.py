'''
calibrationConst.py - a script to calculate sensitivity constants for the torque-force sensor

This script yields a matrix of constants that can be copied and pasted into arduino firmware
for the force torque sensor. Doing these calculations off the arduino saves time and computing
resources.

Authors: Nathan Mack, Michael Koltisko, Anh Nguyen
ECSE 398 Spring 2021
'''

'''
Returns sensitivity constants based on an input of calibration constants
K: Units sensor counts per unit stress
Kg: Second K-value to account for seconday z-axis moments
W: Width of each rubber module
L: Length of each rubber module
h: Height of each rubber module
r: Distance from barometer hole to x-axis
a: Distance from baromer hole to y-axis
'''
# TODO: Figure out what Kg is
# TODO: Find and document proper calibration units
def get_calibration_consts(K, Kg, W, L, h, r, a):

    # The sensitivity of shear loads along the x-axis
    # (Related to SFx, eq. 4)
    A = (K*a*h)/(2*((L^3*W)/12)+2*(((L*W^3)/12)+r^2*L*W))
    
    # The sensitivity of the sensor to loads along the z-axis
    # (Related to SFz, eq. 2)
    B = (K)/(4*L*W)
    
    # The sensitivity to applied moments around the x-axis
    # (Related to SMx, eq. 3)
    C = (K*a)/(2*((L^3*W)/12)+2*(((L^3*W)/12)+r^2*L*W))
    
    # The sensitivity to applied moments around the z-axis
    # (Related to SMz, eq. 5)
    D = (K*Kg*h*a)/(4*((W^3*L)/12))

    # U-matrix that contains each constant to be used in firmware
    U = [[A, -A, -A, -A, -A, A, A, A],
         [A, A, A, -A, -A, -A, -A, A],
         [B, B, B, B, B, B, B, B],
         [-C, -C, -C, C, C, C, C, -C],
         [C, -C, -C, -C, -C, C, C, C],
         [-D, D, -D, D, -D, D, -D, D]

    # TODO: Implement code that prints out this matrix in a nice format to terminal

# TODO: Implement a main function 
def main():




