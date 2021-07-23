require_relative 'number'
require_relative 'pattern'

def main(one = 1, two = 2, three = 3)
  one = Number.new(one)
  two = Number.new(two)
  three = Number.new(three)
  answer = ""
  pattern = ["1", "11", "21", "1211", "111221", "312211", "13112221"]
  pattern = Pattern.new(pattern)
  pattern.get_pattern.each do |line|
    line.each_char do |char|
      case char
      when "1"
        answer += one.get_value.to_s
      when "2"
        answer += two.get_value.to_s
      when "3"
        answer += three.get_value.to_s
      end
    end
    answer += "\n"
  end
  puts answer
end

if __FILE__ == $0
  main
  main 10, 15, 20
end
