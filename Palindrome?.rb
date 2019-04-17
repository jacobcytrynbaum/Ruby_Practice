#Two methods to determine if a string can be rearranged into a palindrome. The first iterates through the string. The second uses a more pared down map. Nice to see how both can work.

def palindromeRearranging(inputString)
  strArray = inputString.split("")
  counts = []
    strArray.uniq.each_with_index do |character, i|
    counts[i] = strArray.count(character)
    end
  odds = 0
  counts.each do |count|
   odds += 1 if count%2 == 1
  end
return odds <= 1
end


def palindromeRearranging(inputString)
    uniques = inputString.split("").uniq
    h = uniques.map{|x| inputString.count(x)}
    h.count(&:odd?) < 2
end
