class UsersController < ApplicationController
  def show
    @user = current_user
    @question = Question.new
  end
end
