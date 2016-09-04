︠4bd0ccf2-baaf-41c5-b5ee-7dab2ccacd85︠
'''
Purpose: To describe the built-in SageMath cryptosystems and to work through a Caesar cipher example.  SageMath has some built-in classical ciphers.  Documentation can be found at http://doc.sagemath.org/html/en/reference/cryptography/sage/crypto/classical.html.
Inputs:
    - String to encrypt.
Outputs:
    - Encrypted string using a shift or Caesar cipher.
'''

alphabet = AlphabeticStrings() 
plaintext = alphabet.encoding("We are the zucchini.") 
system = ShiftCryptosystem(alphabet) 
key = 1
ciphertext = system.enciphering(key, plaintext) 
ciphertext
︡60498124-456b-4fbe-9745-b1458107889b︡{"stdout":"'\\nPurpose: To describe the built-in SageMath cryptosystems and to work through a Caesar cipher example.  SageMath has some built-in classical ciphers.  Documentation can be found at http://doc.sagemath.org/html/en/reference/cryptography/sage/crypto/classical.html.\\nInputs:\\n    - String to encrypt\\nOutputs:\\n    - Encrypted string using a shift or Caesar cipher.\\n'\n"}︡{"stdout":"XFBSFUIFAVDDIJOJ\n"}︡{"done":true}︡









