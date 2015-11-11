# encoding: UTF-8

def views
  [
    {
      :route    => "mapa",
      :title    => "Mapa",
      :template => {
        :main  => 'mapa',
      }
    }
  ]
end

def view    route ; views.find{ |v| v[:route] == route }  end
def preview route ; erb :template, :locals => view(route) end
def load_partial position
  partial = position.gsub(':param', (params[:param].to_s)  ) 
  erb :"#{partial}"
end