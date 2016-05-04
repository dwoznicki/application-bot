module SlackBotServer
  module Commands
    class Help < SlackRubyBot::Commands::Base
      HELP = <<-EOS
```
I AM DANBOT::HELP

COMMANDS:

help
get_info
get_blurb
get_code_sample
```
EOS
      def self.call(client, data, _match)
        client.say(channel: data.channel, text: [HELP, SlackBotServer::INFO].join("\n"))
        logger.info "HELP: #{client.owner}, user=#{data.user}"
      end
    end
  end
end
