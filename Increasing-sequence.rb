# FInd the minimum number of increments in an array to create a strictly increasing sequence.

def arrayChange(inputArray)
count = 0
inputArray[1..(inputArray.length-1)].each_with_index do |number, index|
if number <= inputArray[index]
    count += (inputArray[index] + 1 - number)
    inputArray[index+1] = (inputArray[index] + 1)
    end
end
return count
end
