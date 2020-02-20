def validate(input)
  while input !~ /\A[1-9]\d+(\.\d+)?\z/ # positive number
    print "Please, enter a valid number: "
    input = gets.chomp
  end
  return input.to_i
end