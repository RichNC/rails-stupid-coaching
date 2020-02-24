class QuestionsController < ApplicationController
  def ask
    #only needs to post the questions into the answer page
  end

  def answer
    @message = params[:question]
    if @message == "I am going to work"
      @coach_answer = "Great!"
    elsif @message.include? '?'
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
    # render plain: @coach_answer
  end
end
