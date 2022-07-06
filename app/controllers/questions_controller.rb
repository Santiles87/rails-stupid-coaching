class QuestionsController < ApplicationController
  def ask
  end

  def answer
  end

  private
  def coach_answer(question)
    if question.dowcase == 'I am going to work'
      'Great'
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I dont't care, get dressed and go to work!"
    end
  end
end
