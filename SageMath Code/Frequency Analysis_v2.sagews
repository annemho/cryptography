︠f293a1d2-6d36-42e6-a7a1-328217a82378s︠
'''
Purpose: To provide a second example of code for determining the frequencies of English letters which show up in a body of text.
Input: englishExampleText = text to analyze
Outputs:
    - The pairs consisting of letters and their frequencies.
    - A bar graph of the frequencies of each letter.
Note: This code is modified from the awesome work done by Kate Stange (CU Boulder).
'''

alphabet = AlphabeticStrings()
englishExampleText = alphabet.encoding("VVHQWVVRHMUSGJGTHKIHTSSEJCHLSFCBGVWCRLRYQTFSVGAHWKCUHWAUGLQHNSLRLJSHBLTSPISPRDXLJSVEEGHLQWKASSKUWEPWQTWVSPGOELKCQYFNSVWLJSNIQKGNRGYBWLWGOVIOKHKAZKQKXZGYHCECMEIUJOQKWFWVEFQHKIJRCLRLKBIENQFRJLJSDHGRHLSFQTWLAUQRHWDMWLGUSGIKKFLRYVCWVSPGPMLKASSJVOQXEGGVEYGGZMLJCXXLJSVPAIVWIKVRDRYGFRJLJSLVEGGVEYGGEIAPUUISFPBTGNWWMUCZRVTWGLRWUGUMNCZVILE") #Inputs the text.
distExample = englishExampleText.frequency_distribution() #Determines the frequency distribution.

barData = [distExample(k) for k in alphabet.gens()] #Creates bar graph.
bar_chart(barData, width=1, ymin=0) 
︡b4b76d42-c43d-4f6d-aee2-cedca895e2f9︡{"stdout":"'\\nPurpose: To provide a second example of code for determining the frequencies of English letters which show up in a body of text.\\nInput: englishExampleText = text to analyze\\nOutputs:\\n    - The pairs consisting of letters and their frequencies.\\n    - A bar graph of the frequencies of each letter.\\nNote: This code is modified from the awesome work done by Kate Stange (CU Boulder).\\n'\n"}︡{"file":{"filename":"/projects/75613675-db53-4294-9c75-7e9b14c3e29b/.sage/temp/compute2-us/20714/tmp_0qvRO3.svg","show":true,"text":null,"uuid":"2e3c88b1-0eb2-4d26-9b1b-b6047ff94e92"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡

︠0563aee0-a9c0-4d72-ac58-97f28bf8359f︠
'''
Purpose: To give an example of a Coded message with a Caesar shift, and to decipher the message.
Inputs:
    - mystery = text to analyze
    - keyGuess = values for different guesses at a key
Outputs:
    - An attempted deciphering of the text.  Keep typing in different values until you get some English (keeping in mind that there are no spaces in the attempt at deciphering).
Note: This code is modified from the awesome work done by Kate Stange (CU Boulder).
'''

mystery = alphabet.encoding("JFEPJIVTVEKVLIFGVRETUIVCVRJVJWIFDRIKZJKJJLTYRJTVCZEVUZFEJYRBZIRREUAVEEZWVICFGVQTFEKRZEJFEPURUTJTFGPGIFKVTKZFEDVKYFUDRIBVKVURJBVPRLUZFKYVJPJKVDEFIDRCCPGIVMVEKJLJVIJWIFDIZGGZEXTUKIRTBJKFDGWZCVJSPGCRTZEXRJDRCCSZKFWTFDGLKVIURKRFEKYVUZJTULIZEXKYVGIFTVJJFWDRBZEXKYVXCRJJDRJKVITUKYVEZEJKVRUFWIVTFXEZQZEXZEUZMZULRCRLUZFKIRTBJRTFDGLKVIIVRUJKYVURKRKIRTBREUZXEFIVJKYVRLUZFKIRTBJGIVMVEKZEXGTGCRPSRTBFWKYVDLJZTFECPJKREURCFEVUVMZTVJJLTYRJYFDVJKVIVFJREUGFIKRSCVTUGCRPVIJTREIVTFXEZQVREUGCRPKYVRLUZFKIRTBJFEKYVUZJTJSPFSJTLIZEXKYVURKRKIRTBNZKYRWVCKGVEDRIBFIRGZVTVFWFGRHLVRUYVJZMVGRGVIGIFKVTKVUUZJTJCZBVUZFEJYRMVSVVEDRUVGCRPRSCVREUTFGPRSCVFEYFDVTFDGLKVIJSPIFEYRIIZJKYVRJJFTZRKVUGIVJJWIZURPDRPKYZIKPWZIJKKNFKYFLJREUREUKNF") #Inputs the text.

dist = mystery.frequency_distribution() #Determines the frequency distribution.
system = ShiftCryptosystem(alphabet)
keyGuess = 0 #Inputs different guesses for a key.
system.deciphering(keyGuess,mystery) #Attempts to decipher the text.
︡9240d043-bcb1-4b2e-a18a-31253e1bc40a︡{"stdout":"'\\nPurpose: To give an example of a Coded message with a Caesar shift, and to decipher the message.\\nInput:\\n    - mystery = text to analyze\\n    - keyGuess = values for different guesses at a key\\nOutputs:\\n    - An attempted deciphering of the text.  Keep typing in different values until you get some English (keeping in mind that there are no spaces in the attempt at deciphering).\\nNote: This code is modified from the awesome work done by Kate Stange (CU Boulder).\\n'\n"}︡{"stdout":"JFEPJIVTVEKVLIFGVRETUIVCVRJVJWIFDRIKZJKJJLTYRJTVCZEVUZFEJYRBZIRREUAVEEZWVICFGVQTFEKRZEJFEPURUTJTFGPGIFKVTKZFEDVKYFUDRIBVKVURJBVPRLUZFKYVJPJKVDEFIDRCCPGIVMVEKJLJVIJWIFDIZGGZEXTUKIRTBJKFDGWZCVJSPGCRTZEXRJDRCCSZKFWTFDGLKVIURKRFEKYVUZJTULIZEXKYVGIFTVJJFWDRBZEXKYVXCRJJDRJKVITUKYVEZEJKVRUFWIVTFXEZQZEXZEUZMZULRCRLUZFKIRTBJRTFDGLKVIIVRUJKYVURKRKIRTBREUZXEFIVJKYVRLUZFKIRTBJGIVMVEKZEXGTGCRPSRTBFWKYVDLJZTFECPJKREURCFEVUVMZTVJJLTYRJYFDVJKVIVFJREUGFIKRSCVTUGCRPVIJTREIVTFXEZQVREUGCRPKYVRLUZFKIRTBJFEKYVUZJTJSPFSJTLIZEXKYVURKRKIRTBNZKYRWVCKGVEDRIBFIRGZVTVFWFGRHLVRUYVJZMVGRGVIGIFKVTKVUUZJTJCZBVUZFEJYRMVSVVEDRUVGCRPRSCVREUTFGPRSCVFEYFDVTFDGLKVIJSPIFEYRIIZJKYVRJJFTZRKVUGIVJJWIZURPDRPKYZIKPWZIJKKNFKYFLJREUREUKNF\n"}︡{"done":true}︡









