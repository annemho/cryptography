︠cb132cc4-cbdf-493c-a3ec-f2d820bcadffs︠
'''
Purpose: To determine the frequencies of English letters which show up in a body of text.
Input: string = text to analyze
Outputs:
    - The 3-tuples consisting of (letter, number of occurrences, frequency of occurrence of letter in text).
    - The total number of characters in the text.
    - A bar graph of the frequencies of each letter.
'''

import collections

string = "VVHQWVVRHMUSGJGTHKIHTSSEJCHLSFCBGVWCRLRYQTFSVGAHWKCUHWAUGLQHNSLRLJSHBLTSPISPRDXLJSVEEGHLQWKASSKUWEPWQTWVSPGOELKCQYFNSVWLJSNIQKGNRGYBWLWGOVIOKHKAZKQKXZGYHCECMEIUJOQKWFWVEFQHKIJRCLRLKBIENQFRJLJSDHGRHLSFQTWLAUQRHWDMWLGUSGIKKFLRYVCWVSPGPMLKASSJVOQXEGGVEYGGZMLJCXXLJSVPAIVWIKVRDRYGFRJLJSLVEGGVEYGGEIAPUUISFPBTGNWWMUCZRVTWGLRWUGUMNCZVILE" #Inputs the text.
#"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." #Alternative input to play with.

string = string.replace(' ', '') #Gets rid of spaces.
for character in '.,?!:;1234567890()[]{}+-@#$%^&*"`': #Gets rid of most punctuation, numbers, and common special symbols.
    string = string.replace(character, '')

c = collections.Counter(string) #Sets up counter.
list_letter = [] #Creates list of letters.
list_frequency = [] #Creates list of frequencies.

for letter in 'ABCDEFGHIJKLMNOPQRSTUVWXYZ': #Counts and prints the tuples of letters and frequencies.
    list_letter.append(letter)
    list_frequency.append((c[letter]+c[letter.lower()])/float(len(string)))
    print '(%s, %d, %f)' % (letter, c[letter]+c[letter.lower()], (c[letter]+c[letter.lower()])/float(len(string)))

len(string) #Returns the length of the string (without spaces).

import matplotlib.pyplot as plt
import numpy as np
x_axis = np.arange(len(list_letter)) #Creates numpy array.
plt.bar(x_axis, list_frequency, align='center') #Plots letters and frequencies.
plt.xticks(x_axis, list_letter) #Labels x-axis with letters.
plt.show() #Shows plot.

︡cbd53347-d169-4d55-9a8b-eca435cb0831︡{"stdout":"'\\nPurpose: To determine the frequencies of English letters which show up in a body of text.\\nInput: string = text to analyze\\nOutputs:\\n    - The 3-tuples consisting of (letter, number of occurrences, frequency of occurrence of letter in text).\\n    - The total number of characters in the text.\\n    - A bar graph of the frequencies of each letter.\\n'\n"}︡{"stdout":"(A, 8, 0.024169)\n(B, 5, 0.015106)\n(C, 12, 0.036254)\n(D, 4, 0.012085)\n(E, 15, 0.045317)\n(F, 10, 0.030211)\n(G, 27, 0.081571)\n(H, 16, 0.048338)\n(I, 13, 0.039275)\n(J, 14, 0.042296)\n(K, 17, 0.051360)\n(L, 25, 0.075529)\n(M, 7, 0.021148)\n(N, 7, 0.021148)\n(O, 5, 0.015106)\n(P, 9, 0.027190)\n(Q, 14, 0.042296)\n(R, 17, 0.051360)\n(S, 24, 0.072508)\n(T, 8, 0.024169)\n(U, 12, 0.036254)\n(V, 22, 0.066465)\n(W, 22, 0.066465)\n(X, 5, 0.015106)\n(Y, 8, 0.024169)\n(Z, 5, 0.015106)\n"}︡{"stdout":"331\n"}︡{"stdout":"<Container object of 26 artists>\n"}︡{"stdout":"([<matplotlib.axis.XTick object at 0x7fdef1b05990>, <matplotlib.axis.XTick object at 0x7fdef4de9090>, <matplotlib.axis.XTick object at 0x7fdef4e0f990>, <matplotlib.axis.XTick object at 0x7fdef45a0d10>, <matplotlib.axis.XTick object at 0x7fdef45b4490>, <matplotlib.axis.XTick object at 0x7fdef45b4bd0>, <matplotlib.axis.XTick object at 0x7fdef45bc350>, <matplotlib.axis.XTick object at 0x7fdef4e05a10>, <matplotlib.axis.XTick object at 0x7fdef4df8690>, <matplotlib.axis.XTick object at 0x7fdef4de0dd0>, <matplotlib.axis.XTick object at 0x7fdef45bc9d0>, <matplotlib.axis.XTick object at 0x7fdef4548150>, <matplotlib.axis.XTick object at 0x7fdef4548890>, <matplotlib.axis.XTick object at 0x7fdef4548fd0>, <matplotlib.axis.XTick object at 0x7fdef4551750>, <matplotlib.axis.XTick object at 0x7fdef4551e90>, <matplotlib.axis.XTick object at 0x7fdef455a610>, <matplotlib.axis.XTick object at 0x7fdef455ad50>, <matplotlib.axis.XTick object at 0x7fdef45664d0>, <matplotlib.axis.XTick object at 0x7fdef4566c10>, <matplotlib.axis.XTick object at 0x7fdef4570390>, <matplotlib.axis.XTick object at 0x7fdef4570ad0>, <matplotlib.axis.XTick object at 0x7fdef457a250>, <matplotlib.axis.XTick object at 0x7fdef457a990>, <matplotlib.axis.XTick object at 0x7fdef4584110>, <matplotlib.axis.XTick object at 0x7fdef4584850>], <a list of 26 Text xticklabel objects>)\n"}︡{"file":{"filename":"34ccb6b8-c13c-4491-99d5-f28dbfb9a776.svg","show":true,"text":null,"uuid":"b170ffe6-b88d-4394-95db-eec0d4e2b8b3"},"once":false}︡{"done":true}︡
︠a3fdd150-30c3-4807-b5a4-6401233b2b87s︠
'''
Purpose: This section is to plot the frequencies of the input text along with the typical frequencies of the English alphabet.
'''

list_typical_frequency = [0.08167, 0.01492, 0.02782, 0.04253, 0.12702, 0.02228, 0.02015, 0.06094, 0.06966, 0.00153, 0.00772, 0.04025, 0.02406, 0.06749, 0.07507, 0.01929, 0.00095, 0.05987, 0.06327, 0.09056, 0.02758, 0.00978, 0.02361, 0.00150, 0.01974, 0.00074]

fig, comparison = plt.subplots() #Sets up subplots for two lists.
plot1 = comparison.bar(x_axis*2, list_frequency, width = 1, align='center', color = 'r', label = 'Input Frequencies')
plot2 = comparison.bar(x_axis*2+1, list_typical_frequency, width = 1, align='center', label = 'Typical Frequencies')
comparison.legend()
plt.xticks(x_axis*2, list_letter) #Labels x-axis with letters.
plt.legend()
plt.show()
︡8aff989d-ea46-499c-b85b-d07fe4efbdb3︡{"stdout":"'\\nPurpose: This section is to plot the frequencies of the input text along with the typical frequencies of the English alphabet.\\n'\n"}︡{"stdout":"<matplotlib.legend.Legend object at 0x7fdef50f91d0>\n"}︡{"stdout":"([<matplotlib.axis.XTick object at 0x7fdef511a710>, <matplotlib.axis.XTick object at 0x7fdef4e0f550>, <matplotlib.axis.XTick object at 0x7fdef4443a50>, <matplotlib.axis.XTick object at 0x7fdef4448210>, <matplotlib.axis.XTick object at 0x7fdef4566a90>, <matplotlib.axis.XTick object at 0x7fdef4551550>, <matplotlib.axis.XTick object at 0x7fdef45b4fd0>, <matplotlib.axis.XTick object at 0x7fdef50f08d0>, <matplotlib.axis.XTick object at 0x7fdef4df8110>, <matplotlib.axis.XTick object at 0x7fdef4e48510>, <matplotlib.axis.XTick object at 0x7fdef4e3b3d0>, <matplotlib.axis.XTick object at 0x7fdf264c9b10>, <matplotlib.axis.XTick object at 0x7fdef4e2e690>, <matplotlib.axis.XTick object at 0x7fdef4e2e790>, <matplotlib.axis.XTick object at 0x7fdef4de0c90>, <matplotlib.axis.XTick object at 0x7fdef44f1ed0>, <matplotlib.axis.XTick object at 0x7fdef4e05810>, <matplotlib.axis.XTick object at 0x7fdef4e1fa10>, <matplotlib.axis.XTick object at 0x7fdef4e1fc90>, <matplotlib.axis.XTick object at 0x7fdef511a610>, <matplotlib.axis.XTick object at 0x7fdef4537250>, <matplotlib.axis.XTick object at 0x7fdef44df6d0>, <matplotlib.axis.XTick object at 0x7fdef4de9910>, <matplotlib.axis.XTick object at 0x7fdef510bc10>, <matplotlib.axis.XTick object at 0x7fdef510b9d0>, <matplotlib.axis.XTick object at 0x7fdef1b05950>], <a list of 26 Text xticklabel objects>)"}︡{"stdout":"\n"}︡{"stdout":"<matplotlib.legend.Legend object at 0x7fdef1aa3f10>\n"}︡{"file":{"filename":"71524aa4-657f-467d-a26a-39bb2a4e29b0.svg","show":true,"text":null,"uuid":"687fd59c-3a6c-40af-aa99-bb4a14eafef6"},"once":false}︡{"done":true}︡
︠a3d40a31-8258-4710-b0bc-21f581101aed︠









