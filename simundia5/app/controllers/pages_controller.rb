class PagesController < ApplicationController
skip_before_action :authenticate_user!, only: [:home, :about, :contact]

  def contact
  end

  def about
  end

  def home
    @question = Question.new
    @user = current_user
  end
end
