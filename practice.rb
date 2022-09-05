# def even(a,b)
#   if  (a * b) % 2 == 0
#     puts "Even"
#   else
#     puts "0dd"
#   end
# end

# puts even(3,4)
# puts even(1,21)

#四則演算、倍数判定
num = gets.chomp!.split(" ")
result = num[0].to_i * num[1].to_i
if result % 2 == 0
  puts "Even"
else
  puts "Odd"
end


hash = {}
hash.dafault = 0
array = "caffelatte".chars
array.each do |x|
  hash[x] += 1
end
p hash
