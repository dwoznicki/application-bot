module SlackDanbot
  module Commands
    class Info < SlackRubyBot::Commands::Base

      command 'get_basic_info' do |client, data, _match|
        client.say(channel: data.channel, text: "TESTING")
      end

      command 'get_blurb' do |client, data, _math|

      end

      command 'get_code_sample' do |client, data, _match|

      end
    end
  end
end