class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:message]
    @answer = coach_answer(params[:message])
    # At the end of a controller action rails will look for a template with the same name as the current controller action, located in a folder with the same name as the controller
    # To make data available in the view that is going to be rendered we create @instance variables.
  end

  private

  def coach_answer(your_message)
    if your_message.downcase == "i am going to work right now!"
      "Great"
    elsif your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end

