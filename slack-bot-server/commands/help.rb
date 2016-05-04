module SlackBotServer
  module Commands
    class Help < SlackRubyBot::Commands::Base
      HELP = <<-EOS
```
DANBOT::HELP

COMMANDS:

help  -  list of commands
get  -  return information based on queries below:
        info
        blurb
        code_sample
```
EOS
      def self.call(client, data, _match)
        client.say(channel: data.channel, text: HELP)
        logger.info "HELP: #{client.owner}, user=#{data.user}"
      end
    end
  end
end
