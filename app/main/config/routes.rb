# See https://github.com/voltrb/volt#routes for more info on routes

get '/about', _action: 'about'

get "/group/{{__id}}/edit", _controller: 'group', _action: 'edit'
get "/group/{{__id}}", _controller: 'group', _action: 'show'
get "/group/new", _controller: 'group', _action: 'new'
get "/group", _controller: 'group', _action: 'index'

get "/user/{{__id}}", _controller: 'user', _action: 'show'
get "/user", _controller: 'user', _action: 'index'

# Routes for login and signup, provided by user-templates component gem
get '/signup', _controller: 'user-templates', _action: 'signup'
get '/login', _controller: 'user-templates', _action: 'login'

# The main route, this should be last. It will match any params not
# previously matched.
get '/', {}
