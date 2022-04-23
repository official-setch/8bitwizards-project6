class EvalsController < ApplicationController
	def index
		@evals = Eval.all
	end
	
	def new
		@evals = Eval.new
	end
	
	def create
		@ratings = Rating.new(eval_params)
    if @ratings.save
      redirect_to complete_path
      flash.alert = "Evaluation completed!"
    end
	end
	
	def destroy
		@ratings = Rating.find(params[:id])
    @ratings.destroy
    @ratings = Rating.all
    redirect_to complete_path
    flash.notice = "Evaluation deleted!"
  end
  
  private
  def eval_params
  	params.permit(:rating_id, :rated_id, :avg, :comment, :project_id)
  end
end
