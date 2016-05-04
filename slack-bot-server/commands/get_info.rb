module SlackBotServer
  module Commands
    class GetInfo < SlackRubyBot::Commands::Base
      def self.call(client, data, _match)
        client.say(channel: data.channel, text: "BASIC INFO")
        logger.info "HELP: #{client.owner}, user=#{data.user}"
      end
    end
  end
end
