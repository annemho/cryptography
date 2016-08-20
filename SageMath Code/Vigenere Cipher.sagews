︠f37148c6-2565-442c-b4fc-61eb89458384s︠
'''
Purpose: To define an alphabet, encode a message, define the Vigenere Cryptosystem, and decode the message.
Inputs:
    - plaintext = text to encode (Make sure you designate the length of the keyword too)
    - key = keyword (BONK is the example)
Outputs:
    - encrypted text
    - decrypted text
Note: This code is modified from the awesome work done by Kate Stange (CU Boulder).
'''

alphabet = AlphabeticStrings()
plaintext = alphabet.encoding("We are the champignons.") #Inputs the text.
system = VigenereCryptosystem(alphabet,4) #The number here denotes the length of the key word.
key = alphabet("BONK") #Inputs a key word.
ciphertext = system.enciphering(key, plaintext) #Encrypts message.
ciphertext #Displays encrypted message.

plaintextrecovered = system.deciphering(key, ciphertext) #Decrypts message.
plaintextrecovered #Displays decrypted message.
︡9a66553e-9611-4f7b-bf66-7fe4dc7582dd︡{"stdout":"'\\nPurpose: To define an alphabet, encode a message, define the Vigenere Cryptosystem, and decode the message.\\nInputs:\\n    - plaintext = text to encode (Make sure you designate the length of the keyword too)\\n    - key = keyword (BONK is the example)\\nOutputs:\\n    - encrypted text\\n    - decrypted text\\nNote: This code is modified from the awesome work done by Kate Stange (CU Boulder).\\n'\n"}︡{"stdout":"XSNBFHUODVNWQWTXPBF\n"}︡{"stdout":"WEARETHECHAMPIGNONS\n"}︡{"done":true}︡
︠2a213935-27db-448a-9cf7-a2d33131bb60s︠
'''
Purpose: To provide a second example of Vigenere encryption.
Inputs:
    - plaintext = text to encode (Make sure you designate the length of the keyword too)
    - key = keyword (HELLO is the example)
Outputs:
    - encrypted text
Note: This code is modified from the awesome work done by Kate Stange (CU Boulder).
'''

alphabet = AlphabeticStrings() 
plaintext = alphabet.encoding("We are the zucchini.") #Inputs the text.
system = VigenereCryptosystem(alphabet,5) #The number here denotes the length of the key word.
key = alphabet("HELLO") #Inputs a key word.
ciphertext = system.enciphering(key, plaintext) #Encrypts message.
ciphertext #Displays encrypted message.
︡245f0a07-adce-4b8a-b4d3-1472de50caa4︡{"stdout":"'\\nPurpose: To provide a second example of Vigenere encryption.\\nInputs:\\n    - plaintext = text to encode (Make sure you designate the length of the keyword too)\\n    - key = keyword (HELLO is the example)\\nOutputs:\\n    - encrypted text\\nNote: This code is modified from the awesome work done by Kate Stange (CU Boulder).\\n'\n"}︡{"stdout":"DILCSALPKIJGSTBP\n"}︡{"done":true}︡
︠084cd955-943d-45dc-a80e-d5a3d0635340s︠

'''
Purpose: To provide a second example of Vigenere decryption.
Inputs:
    - ciphertext = text to dencode (Make sure you designate the length of the keyword too)
    - key = keyword (HELLO is the example)
Outputs:
    - decrypted text
Note: This code is modified from the awesome work done by Kate Stange (CU Boulder).
'''

alphabet = AlphabeticStrings() 
ciphertext = alphabet.encoding("DILCSALPKIJGSTBP") #Inputs the text.
system = VigenereCryptosystem(alphabet,5) #The number here denotes the length of the key word.
key = alphabet("HELLO") #Inputs a key word.
plaintext = system.deciphering(key, ciphertext) #Decrypts message.
plaintext #Displays decrypted message.
︡ed345f32-8c8e-4056-a615-81df124b9d06︡{"stdout":"'\\nPurpose: To provide a second example of Vigenere decryption.\\nInputs:\\n    - ciphertext = text to dencode (Make sure you designate the length of the keyword too)\\n    - key = keyword (HELLO is the example)\\nOutputs:\\n    - decrypted text\\nNote: This code is modified from the awesome work done by Kate Stange (CU Boulder).\\n'\n"}︡{"stdout":"WEARETHEZUCCHINI\n"}︡{"done":true}︡
︠672ebe07-cce1-4565-86ba-6cfeb274ad62︠

















