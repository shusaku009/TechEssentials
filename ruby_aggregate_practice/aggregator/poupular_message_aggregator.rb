class PopularMessageAggregator
  attr_accessor :channel_names

  def initialize(channel_names)
    @channel_names = channel_names
  end

  # 実装してください
  def exec
    # dummy
    channel_list = channel_names.map do |channel_name|
      load(channel_name)
    end

    times_reactions = channel_list.flat_map do |item|
      messages = item['messages']
      message_reactions = messages.filter { |message| !message['reactions'].nil?}
      popular_message = message_reactions.map do |count| {
        text: count['text'],
        reaction_count: count['reactions'].map { |reaction| reaction['count']}.inject(:+)
      }
      # binding.break
      end
      # binding.break
    end
    times_reactions.max_by{ |v| v[:reaction_count] }
    # binding.break
  end

  def load(channel_name)
    dir = File.expand_path("../data/#{channel_name}", File.dirname(__FILE__))
    file = File.open(dir)
    JSON.load(file)
  end
end