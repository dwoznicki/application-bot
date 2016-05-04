module SlackBotServer
  module Commands
    class Get < SlackRubyBot::Commands::Base
      def self.call(client, data, _match)
      	info = <<-EOS
```

{
	name: 'Daniel Woznicki',
	location: 'SF Bay Area',
	email: 'daniel.woznicki@gmail.com',
	phone: '510-685-9646',
	tech: ['Ruby/Rails', 'JavaScript/jQuery', 'MEAN-stack', 'Python/Django', 'HTML/CSS', 'SASS/Bootstrap'],
	methodologies: ['Git/Github', 'Agile', 'Test-Driven Development'],
	other: ['Spanish', 'Japanese', 'Photoshop']
}
```
EOS

				blurb = <<-BLURB_STRING
```
I'm a full-stack developer with an eye for design that comes from a long time interest in photography/videography. Before my career switch, I worked as an English teacher abroad (3 years in Japan and 1 year in Mexico) where I gained valuable experience in communication, organizing materials, and presenting new concepts. I love building things, or building up on things, that are going to be useful and intuitive. I'm an energetic, meticulous, and empathetic developer, and I think I could be an asset to your team.
```
BLURB_STRING

				code = <<-CODE_STRING
```
Bomber Math: https://github.com/themcny/bomber-math
I set up the server, socket logic, and most of the front-end.
WhatzCookin: https://github.com/axblum/whatzcookin-rails
I did most of the front-end and helped design the database schema and integrate the recipe finder API.
```
CODE_STRING

				unknown = <<-UNKNOWN_STRING
```
DANBOT::ERROR
I DON'T KNOW THAT QUERY. PLEASE TRY:
info
blurb
code_sample
```
UNKNOWN_STRING

      	query = data.text.split(" ")[1]
      	case query
      	when "info"
      		response = info
      	when "blurb"
      		response = blurb
      	when "code_sample"
      		response = code
      	when "linkedin"
      		response = "`https://www.linkedin.com/in/dwoznicki`"
      	when "github"
      		response = "`https://github.com/dwoznicki`"
      	else
      		response = unknown
      	end
        client.say(channel: data.channel, text: response)
        logger.info "HELP: #{client.owner}, user=#{data.user}"
      end
    end
  end
end
