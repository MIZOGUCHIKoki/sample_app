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

# GET /users/new, /signup
  def new
    @user = User.new
    # => app/views/users/new.html.erb
    # render 'new' テンプレート呼び出し
  end

  # POST /users/
  def create
    # params => user => user.save => if success, else ...
    # params[user[:name]] => 'foobar'
    # params[user[:email]] => 'foo@example.com'
    # params[user] => name, email, password, ...
    @user = User.new(user_params)
    if @user.save
      # success
    else
      # Faild
      render 'new', status: :unprocessable_entity # HTTP RSP: 422 ブラウザとの対話
    end
    # render 'create'
  end
  
  # Strong Parameters
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
