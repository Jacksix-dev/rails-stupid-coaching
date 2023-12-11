class QuestionsController < ApplicationController

  def ask

  end
  def answer
      @answers = ["great",'Silly question, get dresses and go to work', 'I do not care, get dressed']

      if params[:question] == 'I am going to work'
        @answers = @answers[0]
      elsif params[:question].ends_with?('?')
        @answers = @answers[1]
      else
        @answers = @answers[2]
      end
  end

end
