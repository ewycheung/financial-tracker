class UsersController < ApplicationController
  def my_portfolio
     @tracked_storks = current_user.stocks
  end
end
