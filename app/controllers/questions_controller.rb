class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    if @answer == 'I am going to work'
      @coachanswer = 'Great!'
    elsif @answer.end_with?('?')
      @coachanswer = 'Silly question, get dressed and go to work!'
    else
      @coachanswer = "I don't care, get dressed and go to work!"
    end
  end
end
