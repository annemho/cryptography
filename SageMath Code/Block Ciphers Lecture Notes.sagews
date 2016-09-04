︠b9c5f120-22d1-4d2b-bdf8-65413740ca5b︠
'''
Purpose: To provide examples of code mentioned in the Block Ciphers lecture.
Inputs:
    - See comments below.
Outputs:
    - See comments below.
'''

#Greatest common divisor
gcd(1821,1002) #Input the two values you want to find the gcd of.

︡d19052db-c380-46dc-9c75-8383e35116a2︡{"stdout":"'\\nPurpose: To provide examples of code mentioned in the Block Ciphers lecture.\\nInputs:\\n    - See comments below.\\nOutputs:\\n    - See comments below.\\n'\n"}︡{"stdout":"3\n"}︡{"done":true}︡
︠92c65fdd-30c7-4c24-b19e-ad0d74039d64s︠

import numpy as np #Uses NumPy, which is "is the fundamental package for scientific computing with Python."  See http://www.numpy.org/.

#Matrix operations
m = np.matrix([[1,2],[3,4]]) #Inputs a 2x2 matrix.
np.linalg.det(m) #Computes the determinant.
m.getI() #Finds the inverse.


︡6b802893-d83e-40c1-b951-a108dd133648︡{"stdout":"-2.0000000000000004\n"}︡{"stdout":"matrix([[-2. ,  1. ],\n        [ 1.5, -0.5]])\n"}︡{"done":true}︡
︠1fc63a0d-153e-493d-9e25-57eb09b049d5s︠

#Modular arithmetic uses the symbol %.
3^(-1) % 26
︡865846aa-17c1-4bba-b0ac-6898164265d0︡{"stdout":"9\n"}︡{"done":true}









