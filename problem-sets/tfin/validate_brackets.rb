def matching_pair(open, close)
  open == '(' && close == ')' || open == '[' && close == ']' || open == '{' && close == '}'
end

def validate_brackets(str)
  stack = []
  str.each_char do |char|
    if matching_pair(stack.last, char)
      stack.pop
    elsif '([{}])'.index(char)
      stack.push char
    end
  end
  stack.empty?
end
