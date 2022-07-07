class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    @answer = coach_answer
  end

  private

  def coach_answer
    if @question.downcase == "I am going to work right now"
      ''
    elsif @question.end_with?('?')
      "Silly question, get dressed and go to work"

    else
      "I dont care, get dressed and go to work!"
    end
  end
end
