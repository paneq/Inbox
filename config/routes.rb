Inbox::Engine.routes.draw do

  scope ":mail", :mail => /[^\/]+/ do
    resources :emails, :only => [:index, :show, :new, :create], :id => /[^\/]+/
  end

  get "examples/rich_html", :to => "examples#rich_html"
  #get "examples/rich_html" # Rails namespace bug
end
