require 'sinatra/base'
class App < Sinatra::Base
  
  get '/' do erb :index end 
  error   do erb :error end
  
  get '/:view/:param' do |view,param| # Templates with double-routing
    preview(view) # Try same view as URL (with params) 
  end
  
  get '/:view' do |view| # Templates with simple root-viewer  
    erb :"#{view}"
    #preview(view) # Try same view as URL
  end
  
end