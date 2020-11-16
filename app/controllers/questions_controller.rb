
class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @ask = params[:ask]
    # si on a la phrase "I am going to work" => retourne "Great!" de la part du coach
    # @answer
    if @ask == 'I am going to work'
      @answer = 'Great!'
    elsif @ask.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
