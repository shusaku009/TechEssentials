# def janken

# end

# if player_hand == program_hand
#   puts "あいこで"
#   return true
# elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
#   puts "あなたの勝ちです"
#   return false

# else
#   puts "あなたの負けです"
#   return false
# end


# puts "最初はグーじゃんけん・・・・"

# def janken
#   puts "[0]グー\n[1]チョキ\n[2]パー"

#   player_hand = gets.to_i
#   program_hand = rand(3)

#   jankens = ["グー", "チョキ","パー"]
#   puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"

#   if player_hand == program_hand
#     puts "あいこで"
#     return true
#   elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
#     puts "あなたの勝ちです"
#     return false

#   else
#     puts "あなたの負けです"
#     return false
#   end
# end

# puts "最初はグーじゃんけん・・・・"

# puts "何本勝負？(press 1 or 3 or 5)"

# puts "3本勝負を選びました"

# def janken
#   puts "[0]グー\n[1]チョキ\n[2]パー"

#   player_hand = gets.to_i
#   program_hand = rand(3)

#   jankens = ["グー", "チョキ","パー"]
#   puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"

#   if player_hand == program_hand
#     puts "あいこで"
#     return true
#   elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
#     puts "あなたの勝ちです"
#     return false

#   else
#     puts "あなたの負けです"
#     return false
#   end
# end

# next_game = true

# while next_game
#   next_game = janken
# end

def janken_hand(cpu_hand, player_hand)
  if cpu_hand == "g"
    puts "CPU...グー"
  elsif cpu_hand == "c"
    puts "CPU...チョキ"
  elsif cpu_hand == "p"
    puts "CPU...パー"
  else
  end

  if player_hand == "g"
    puts "あなた...グー"
  elsif player_hand == "c"
    puts "あなた...チョキ"
  elsif player_hand == "p"
    puts "あなた...パー"
  else
  end
end

def janken(player_hand, cpu_hand, time)
  if
    player_hand == cpu_hand
    puts "あいこで"
    return true
  elsif
    player_hand == "g" && cpu_hand == "c"
    puts "勝ち"
  elsif player_hand == "g" && cpu_hand == "p"
    puts "負け"
  elsif player_hand == "p" && cpu_hand == "g"
    puts "勝ち"
  elsif player_hand == "p" && cpu_hand == "c"
    puts "負け"
  elsif player_hand == "c" && cpu_hand == "p"
    puts "勝ち"
  elsif player_hand == "c" && cpu_hand == "g"
    puts "負け"
  else
    puts player_hand == ""
  end
end

puts "何本勝負？(press 1 pr 3 or 5)"
time = gets.to_i
puts "#{time}本勝負を選びました"

(1..time).each do |x|

  cpu_hand = ["g", "c", "p"].sample
  puts "じゃんけん...(press g or p or c)"
  player_hand = gets.chomp
  player_hand = player_hand.to_s

  puts janken_hand(cpu_hand, player_hand)
end

next_game = true

# while next_game
#   next_game = janken
# end

puts ""

def janken()
  
end


puts "何本勝負？(press 1 pr 3 or 5)"
time = gets.to_i
puts "#{time}本勝負を選びました"

def janken(player_hand,cpu_hand,time)
  
end