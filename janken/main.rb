@win = 0
@lose = 0

def janken_count
  puts "何本勝負？(press 1 or 3 or 5)"
  janken_count = gets.to_i
  @janken_count = janken_count

  if janken_count == 1
    puts "#{janken_count}本を選びました"
  elsif janken_count == 3
    puts "#{janken_count}本を選びました"
  elsif janken_count == 5
    puts "#{janken_count}本を選びました"
  else
    puts "1,3,5の中から選択してください"
    set_janken_count
  end
end

def match
  janken_count

  @janken_count.times do |x|
    puts "#{x + 1}本目"
    puts "じゃんけん…(press g or c or p)"
    player_hand = gets.chomp
    @player_hand = player_hand
    hand_validation
    janken_game
  end
  result
end

def hand_validation
  if @player_hand != "g" && @player_hand != "c" && @player_hand != "p"
    puts "g,c,pの中から選択してください"
    player_hand = gets.chomp
    @player_hand = player_hand
    hand_validation
  end
end

def janken_game
  hand = {"g"=>"グー","c"=>"チョキ","p"=>"パー"}
  program_hand = hand.keys.sample

  puts "CPU…#{hand[program_hand]},\nあなた…#{hand[@player_hand]}"

  if @player_hand == program_hand
    puts "あいこで…(press g or c or p)"
    janken_game
  elsif(@player_hand == hand.keys[0] && program_hand == hand.keys[1])||(@player_hand == hand.keys[1] && program_hand == hand.keys[2])||(@player_hand == hand.keys[2] && program_hand == hand.keys[0])
    puts "勝ち！"
    @win += 1
    puts "#{@win}勝#{@lose}敗"
  else
    puts "負け！"
    @lose += 1
    puts "#{@win}勝#{@lose}敗"
  end
end

def result
  puts "結果"
  if  @win > @lose
    puts "#{@win}勝#{@lose}敗であなたの勝ち"
  else
    puts "#{@win}勝#{@lose}敗であなたの負け"
  end
end

match