class EvalsController < ApplicationController
	def index
		@evals = Eval.all
	end
	
	def new
		@evals = Eval.new
	end
	
	def create
		@evals = Eval.new(eval_params)
    if @evals.save
    	redirect_to '/evals'
      #redirect_to complete_path
      #redirect_to root_path
      flash.alert = "Evaluation completed!"
    end
	end
	
	def destroy
		@evals = Eval.find(params[:id])
    @evals.destroy
    @evals = Eval.all
    redirect_to complete_path
    flash.notice = "Evaluation deleted!"
  end
  
  private
  def eval_params
  	params.permit(:rating_id, :rated_id, :avg, :comment, :project_id)
  end
end
