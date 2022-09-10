require 'debug'
require 'json'

class KindUserAggregator
  attr_accessor :channel_names

  def initialize(channel_names)
    @channel_names = channel_names
  end

   # 実装してください
  def exec
    #すべてのjsonファイルを繰り返し処理で読み込みんで変数に代入
    channel_list = channel_names.map do |channel_name|
      load(channel_name)
    end

    times_reactions = channel_list.flat_map do |item|
      #jsonファイルの配列'messages'を変数''messages'に代入
      messages = item['messages']
      #'messages'の配列の中に'reactions'の配列があれば変数'message_reactionsに代入
      message_reactions = messages.filter { |message| !message['reactions'].nil?}
      #'reactions'の配列がネストされているため、'flat_map'メソッドにてフラットな配列に変更
      reactions = message_reactions.flat_map { |message| message['reactions'] }
      #'users'の配列についても上記と同様に'flat_map'にてフラットな配列に変更し変数'reaction_users'に代入
      reaction_users = reactions.flat_map { |reaction| reaction['users'] }
      #binding.break
    end
    #binding.break
    #変数'times_reactions'の配列を'group_by(&:itself)'にてuser_ie毎に出現回数を調べハッシュに変換。valueの数量を比較し、多い順3つに並べる。
    times_reactions.group_by(&:itself).map{ |k, v| [k,v.size] }.to_h.max_by(3) {|_, v| v}.map do |user_id_and_reaction_count|
      {
        user_id: user_id_and_reaction_count.first,
        reaction_count: user_id_and_reaction_count.last
      }
      # binding.break
    end
    # binding.break
  end
  def load(channel_name)
    dir = File.expand_path("../data/#{channel_name}", File.dirname(__FILE__))
    file = File.open(dir)
    JSON.load(file)
  end
end