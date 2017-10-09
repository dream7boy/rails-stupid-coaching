class QuestionsController < ApplicationController
  def answer
    @question = params[:query]
    coach_answer_enhanced(@question)
  end

  def ask
  end

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      @answer = "..."
    elsif your_message[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == ""
      coach_answer(your_message)
    elsif your_message == your_message.upcase
      if your_message == "I am going to work right now!".upcase
        @answer = "I can feel your motivation! ..."
      else
        @answer = "I can feel your motivation! #{coach_answer(your_message)}"
      end
    else
      coach_answer(your_message)
    end
  end
end

