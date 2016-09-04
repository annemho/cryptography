︠1c3ed9fd-28ae-400a-9957-36db6f354d1cs︠
'''
Purpose: To provide a series of commonly used cryptanalysis tools.
Inputs:
    - see comments below
Outputs:
    - see comments below
'''

#Frequency analysis of a string.
alphabet = AlphabeticStrings()
inputString = alphabet.encoding("THEQUICKBROWNFOXJUMPSOVERTHELAZYDOG")
dist = inputString.frequency_distribution()
barData = [dist(k) for k in alphabet.gens()]
bar_chart(barData, width=1, ymin=0)
︡f49ad2fb-4c63-483b-bb66-f0e1c7d43a36︡{"stdout":"'\\nPurpose: To provide a series of commonly used cryptanalysis tools.\\nInputs:\\n    - see comments below\\nOutputs:\\n    - see comments below\\n'\n"}︡{"file":{"filename":"/projects/75613675-db53-4294-9c75-7e9b14c3e29b/.sage/temp/compute2-us/8178/tmp_EsyfWE.svg","show":true,"text":null,"uuid":"930f3bd3-7236-4843-8050-726f099c3523"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠5e9a1668-d64d-4073-a588-1b0238c52fads︠

#Rotate a string by n characters.
alphabet = AlphabeticStrings()
n = 3
inputString = alphabet.encoding("THEQUICKBROWNFOXJUMPSOVERTHELAZYDOG")
newString = inputString[n:]*inputString[0:n]
newString
︡e8cc9cf1-591c-432f-bc8a-113d4d20280b︡{"stdout":"QUICKBROWNFOXJUMPSOVERTHELAZYDOGTHE\n"}︡{"done":true}︡
︠d20bb594-d62b-4e4d-b9db-377a67e89b83s︠


#Grab every nth character from a string, starting at the mth
alphabet = AlphabeticStrings()
n = 3
m = 0 # note, m=0 is starting at first letter, m=1 is starting at second, etc
inputString = alphabet.encoding("THEQUICKBROWNFOXJUMPSOVERTHELAZYDOG")
newString = inputString[m::n]
newString
︡99842297-d2d6-447e-bb8a-1d0518e4364a︡{"stdout":"TQCRNXMOREZO\n"}︡{"done":true}
︠22ed9fe5-4d48-43f0-b330-85df3e175289s︠

#Compare two strings, counting the number of coincidences
alphabet = AlphabeticStrings()
stringOne = alphabet.encoding("THEQUICKBROWNFOXJUMPSOVERTHELAZYDOG")
stringTwo = alphabet.encoding("THELAZYDOGJUMPSOVERTHEQUICKBROWNFOX")
numberCoincidences = [x == y for (x, y) in zip(stringOne,stringTwo)].count(True)
numberCoincidences
︡412826a8-586f-4d8d-9cbd-e261715309ca︡{"stdout":"4\n"}︡{"done":true}

















