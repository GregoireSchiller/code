class QuestionsController < ApplicationController

  def create
    @question = Question.new(question_params)
    @question.patient = User.find(params[:question][:user_id].to_i)
    @question.doctor = User.find(2)
    @question.save
    redirect_to user_path(current_user)
  end

  def update
    @question = Question.find(params[:question][:question_id].to_i)
    @question.text_response = params[:question][:text_response]
    @question.save
    redirect_to user_path(current_user)
  end

  private

  def question_params
    params.require(:question).permit(:text_question)
  end

end

