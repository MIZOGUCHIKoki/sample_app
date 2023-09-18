class UsersController < ApplicationController
# INDEX => SHOW => NEW => DESTROY

# GET /users/:id
  def show
    @user = User.find(params[:id]) # パラメータSymbol
    foo = "fooo"
    bar = "barr"
    # LOCAL Variable
    # user = ... Instance Variable
    
    # => app/views/users/show.html.erb
    # debugger
  end

# GET /users/new
  def new
  end
end
