module SlackBotServer
  module Commands
    class GetCodeSample < SlackRubyBot::Commands::Base
      def self.call(client, data, _match)
        client.say(channel: data.channel, text: "CODE SAMPLE")
        logger.info "HELP: #{client.owner}, user=#{data.user}"
      end
    end
  end
end
