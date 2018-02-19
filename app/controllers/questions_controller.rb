class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:query]
    if @question[-1] == '?'
      @coach = 'angry-coach.jpg'
      @answer = 'Silly question, get dressed and go to work!'

    elsif @question == 'I am going to work'
      @coach = 'happy-coach.jpg'
      @answer = 'Great job! Get coding...'

    else
      @coach = 'angry-coach.jpg'
      @answer = "I don't care, get dressed and go to work!"
    end

    # render layout: 'answer'
  end

  private

  def question_params
    params.require(:answer).permit(:query)
  end

end
