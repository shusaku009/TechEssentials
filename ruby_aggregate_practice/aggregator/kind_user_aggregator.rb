require 'json'

class KindUserAggregator
  attr_accessor :channel_names

  def initialize(channel_names)
    @channel_names = channel_names
  end

  # 実装してください
  def exec
    times_reactions = @channel_names.map do |channel_name|
      #jsonファイルを読み込みんで変数に代入
      channel = load(channel_name)
      #jsonファイルのキー"messages"を呼び出し変数"reactions"に代入
      reactions = channel[:messages][:reactions]
    end
  end

  def load(channel_name)
    dir = File.expand_path("../data/#{channel_name}", File.dirname(__FILE__))
    file = File.open(dir)
    JSON.load(file)
end


        #変数message内の
        reactions = message["reactions"]
        #変数"message"の要素数を調べる
        reaction_count = reactions.length
        #出力するためのハッシュを作成
        {
          channel_name: channel_name,
          reaction_count: reaction_count
        }
      end
      #変数execの配列を多い順に並べる
        times_post.max_by(3) {|x| x[:reaction_count]}