# frozen_string_literal: true

# returns true if the agent is a bot
class BotsConstraint
  def matches?(request)
    /bot/ =~ request.headers['User-Agent']
  end
end

# returns true if the agent is not a bot
class HumansConstraint
  def matches?(request)
    /bot/ !~ request.headers['User-Agent']
  end
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope constraints: BotsConstraint.new do
    get '/installers/:path', to: 'installers#download'
  end

  scope constraints: HumansConstraint.new do
    get '/installers', to: 'installers#show'
  end
end
