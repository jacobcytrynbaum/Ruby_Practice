#Determines if an input string is an IPv4 address

def isIPv4Address(inputString)
  return false if inputString.start_with?("/.") || inputString.end_with?("/.") || (inputString =~ /[a-z]/)  #Check character content
  numbers = inputString.split(".")
  length = (numbers.length == 4)
  range = numbers.all? {|x| x.to_i >= 0 && x.to_i <=255 && !x.empty?}
  return length && range
end
