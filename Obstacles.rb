## Given an array of ints, each representing a point on a numberline, this finds the minimum length of a jump to avoid each "obstacle. This assumes jumps have to be equal in length.


def avoidObstacles(inputArray)
  biggestJump = inputArray.max + 1 #Largest possible jump necessary
  jumpRange = (2..biggestJump).to_a #All possible jumps to test
  jumpRange.each do |jump|
      works = inputArray.all? {|obstacles| obstacles%jump != 0}
     return jump if works
  end
end
