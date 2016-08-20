︠192b679c-5e09-4b80-b46f-861958512642s︠
'''
Purpose: To provide a basic overview to SageMath.  This is a commented section.  Everything in this block is commented out.
Inputs:
Outputs:

Notes:
    - It is good practice to write an input and output for your code, and to comment your code throughout (for your own sake and for others who will read your code).  For the purpose of this exercise and because there are many snippets of computations, the overall inputs and outputs will be left blank at this top section.
    -For smaller comments throughout your code, use #.
    - SageMath will execute code by cells.
    - This code is modified from the awesome work done by Kate Stange (CU Boulder).
'''
#You can ask SageMath to do basic computations.
2+2 
︡dbf20bdb-6c75-4125-baa8-8f5e0ea84eb8︡{"stdout":"'\\nPurpose: To provide a basic overview to SageMath.  This is a commented section.  Everything in this block is commented out.\\nInputs:\\nOutputs:\\n\\nNotes:\\n    - It is good practice to write an input and output for your code, and to comment your code throughout (for your own sake and for others who will read your code).  For the purpose of this exercise and because there are many snippets of computations, the overall inputs and outputs will be left blank at this top section.\\n    -For smaller comments throughout your code, use #.\\n    - SageMath will execute code by cells.\\n    - This code is modified from the awesome work done by Kate Stange (CU Boulder).\\n'\n"}︡{"stdout":"4\n"}︡{"done":true}︡
︠55d2d66a-7890-473f-b940-31a4748c9494s︠
#You can assign things (like numbers) to variables. Use * for multiplication and ^ for exponent.
n = 2*(10^7+1) 
n #If you don't type in this line, nothing will display.
︡4e9c2335-eee3-40a4-8464-6e971f1da011︡{"stdout":"20000002\n"}︡{"done":true}︡
︠52cc04de-e24d-484c-a170-37f1e52d95dfs︠

factor(n) #There are many built-in functions.
︡8e0ad631-a088-4dc4-83bb-4e9a2ed2fca0︡{"stdout":"2 * 11 * 909091\n"}︡{"done":true}︡
︠c5fc7df5-7143-4cde-ad51-18510123e099s︠
#This is another example of syntax which does the same thing as the line above.
n.factor()
︡982f752f-334b-4c1a-a269-ae75b790b6e3︡{"stdout":"2 * 11 * 909091\n"}︡{"done":true}︡
︠64cd3d1e-076a-4f60-9df6-d4828d796d2ds︠
#Lists are very useful in sage. A list is an ordered collection of things.
myList = [1,2,3,4,5]
myList
︡ede9efd3-ac1a-4aee-9d4d-190c8950c5d9︡{"stdout":"[1, 2, 3, 4, 5]\n"}︡{"done":true}︡
︠a5ef4ea5-6c12-4961-a8ff-9a8f5a871da9s︠
#The for loop is a central tool in programming. This tells the computer to do something repeatedly, once for each member of a list. Guess what the following example does before you try it.
for n in [1,5,10,11,200]:
    print n
︡f2f3d1f0-95cc-4170-bb2b-a767c309538c︡{"stdout":"1\n5\n10\n11\n200\n"}︡{"done":true}︡
#In general, if you are online, go ahead and go to http://sagecell.sagemath.org/ to run some snippets of SageMath code.









