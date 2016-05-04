require 'sinatra/base'

module SlackDanbot
  class Web < Sinatra::Base
    get '/' do
      'Add me to slack:'
    end
  end
end