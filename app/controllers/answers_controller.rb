class AnswersController < ApplicationController
  before_action :set_question! # порядок этих before важен, т.к. сначала нужно найти вопрос, а потом на основе вопроса ответ
  before_action :set_answer!, except: :create

  def create
    @answer = @question.answers.build answer_params

    if @answer.save
      flash[:success] = "Answer created!"
      redirect_to question_path(@question)
    else
      @answers = @question.answers.order created_at: :desc
      render 'questions/show'
    end
  end

  def edit
  end

  def update
    if @answer.update answer_params
      flash[:success] = "Answer updated!"
      redirect_to question_path(@question)
    else
      render :edit
    end
  end

  def destroy
   @answer.destroy
   flash[:success] = "Answer deleted!"
   redirect_to question_path(@question)
  end

  private

  def set_question!
    @question = Question.find params[:question_id]
  end

  def answer_params
    params.require(:answer).permit(:body)
  end

  def set_answer!
    @answer = @question.answers.find params[:id]
  end
end
