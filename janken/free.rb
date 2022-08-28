#回答例1
@win_count = 0
@lose_count = 0

def set_game_count
    puts "何本勝負？(press 1 or 3 or 5)"
    game_count = gets.to_i
    @game_count = game_count

    if game_count == 1
        puts "#{game_count}本を選びました"
    elsif game_count == 3
        puts "#{game_count}本を選びました"
    elsif game_count == 5
        puts "#{game_count}本を選びました"
    else
        puts "1、3、5の中からもう一度入力してください"
        set_game_count
    end
end

def janken
    set_game_count

    1.upto(@game_count) do |i|
        puts "#{i}本目"
        puts "じゃんけん…(press g or c or p)"
        player_hand = gets.chomp
        @player_hand = player_hand
        validation
        battle
    end
    result
end

def validation 
    if @player_hand != "g" && @player_hand != "c" && @player_hand != "p"
        puts 'もう一度入力してください (press g or c or p)'
        player_hand = gets.chomp
        @player_hand = player_hand
        validation
    end
end

def battle 
    hand = {"g"=>"グー","c"=>"チョキ","p"=>"パー"}
    computer_hand = hand.keys.sample
    @computer_hand = computer_hand

    puts "CPU…#{hand[@computer_hand]}\nあなた…#{hand[@player_hand]}"  

    if @player_hand == @computer_hand
        puts "あいこで...(press g or c or p)"
        battle
    elsif (@player_hand == hand.keys[0] && @computer_hand == hand.keys[1]) || (@player_hand == hand.keys[1] && @computer_hand == hand.keys[2]) || (@player_hand == hand.keys[2] && @computer_hand == hand.keys[0])
        puts "勝ち！"
        @win_count += 1
        puts "#{@win_count}勝#{@lose_count}敗"
    else
        puts "負け！"
        @lose_count += 1
        puts "#{@win_count}勝#{@lose_count}敗"
    end
end

def result
    puts "結果"
    if @win_count > @lose_count
        puts "#{@win_count}勝#{@lose_count}敗であなたの勝ち"
    else
        puts "#{@win_count}勝#{@lose_count}敗であなたの負け"
    end
end

janken



# #回答例２
# puts "何本勝負? (press 1 or 3 or 5)"
# n = gets.to_i
# puts "#{n}本勝負を選びました"

# win  = 0 #勝利数
# lose = 0 #敗北数
# janken = {g: "グー", c: "チョキ", p: "パー"}
# cpu = ["g","c","p"]


# n.times do |x|
#   puts "#{x+1}本目"
#   puts "じゃんけん...(press g or c or p)"
  
#   next_game = true
#   while next_game do
#     player_hand = gets.chomp.to_sym
#     cpu_hand = cpu.sample.to_sym
#     puts "CPU...#{janken[cpu_hand]}"
#     puts "あなた...#{janken[player_hand]}"
  
#     if player_hand == cpu_hand
#       puts "あいこで(press g or c or p)"
#       next_game = true
#     elsif  (player_hand == :g && cpu_hand == :c) || (player_hand == :c && cpu_hand == :p) || (player_hand == :p && cpu_hand == :g)
#       puts "勝ち！"
#       win += 1
#       next_game = false
#     else
#       puts "負け！"
#       lose += 1
#       next_game = false
#     end
#   end
  
#   puts "#{win}勝#{lose}敗"
# end


# puts "結果"
# if win > lose
#   puts  "#{win}勝#{lose}敗であなたの勝ち"
# else  win < lose
#   puts "#{win}勝#{lose}敗であなたの負け"
# end


HANDS = { 'g' => 'グー', 'c' => 'チョキ', 'p' => 'パー' }.freeze

HANTEI = {
  'gg' => :draw, 'gc' => :win,  'gp' => :lose,
  'cg' => :lose, 'cc' => :draw, 'cp' => :win,
  'pg' => :win,  'pc' => :lose, 'pp' => :draw
}.freeze

MESSAGES = {
  win: 'あなたの勝ちです',
  lose: 'あなたの負けです',
  draw: '引き分けです',
  nil => '無効です'
}.freeze

def janken
  puts '[g]グー, [c]チョキ, [p]パー'

  player_hand = gets.chomp
  program_hand = HANDS.keys.sample
  puts "あなたの手:#{HANDS[player_hand]}, 相手の手:#{HANDS[program_hand]}"

  hantei = HANTEI["#{player_hand}#{program_hand}"]
  puts MESSAGES[hantei]
  hantei
end

puts '最初はグー じゃんけん・・・・'
janken