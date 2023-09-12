class StaticPagesController < ApplicationController

  # app/views/コントローラ名（SC）/アクション名.html.erb
  # （SC）：スネークケース：snake_case
  # （CC）：キャメルケース：camelCase
  def home 
    # homeアクション
    # => app/views/static_pages/home.html.erb
    #
  end

  def help # helpアクション
  end

  def about
  end
end
