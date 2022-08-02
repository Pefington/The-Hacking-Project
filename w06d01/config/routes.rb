Rails.application.routes.draw do
  root to: 'static#index'
  get '/home', to: 'static#index'
  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'
  get '/welcome/:first_name', to: 'greet#welcome'
  get '/gossips/:id', to: 'gossips#display'
  get '/author/:id', to: 'gossips#show_author'

  # get '/' do
  #   erb :index, locals: { gossips: Gossip.all }
  # end

  # get '/gossips/:id' do
  #   erb :gossip,
  #       locals: { gossip: Gossip.find(params['id']), comments: Comment.find, index: params['id'] }
  # end

  # post '/gossips/:id' do
  #   Comment.new(params['comment_author'], params['comment_content'], params['id']).save
  #   redirect "/gossips/#{params['id']}"
  # end

  # get '/gossips/new/' do
  #   erb :new_gossip
  # end

  # post '/gossips/new/' do
  #   Gossip.new(params['gossip_author'], params['gossip_content']).save
  #   redirect '/'
  # end

  # get '/gossips/:id/edit/' do
  #   erb :gossip_edit, locals: { gossip: Gossip.find(params['id']), index: params['id'], comments: Comment }
  # end

  # post '/gossips/:id/edit/' do
  #   Gossip.new(params['gossip_author'], params['gossip_content']).update(params['id'])
  #   redirect "/gossips/#{params['id']}"
  # end
end
