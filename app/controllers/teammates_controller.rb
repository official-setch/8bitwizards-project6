class TeammatesController < ApplicationController

  def index
    @users = User.all
    @teams = Team.all
    @teammates = TeamMembership.all
  end
  
  
  def show
    
  end

  def new  
    @team = Team.new
    @teammate = @team.teammates.build
  end

  def create
    @teammate = Teammate.new(teammate_params)
    if params[:teammate]== '1'
	@teammate = @user
    end
    if @teammate.save
      flash[:success] = "Teammates added successfully!"
      redirect_to teams_url
    else
      render 'new'
    end

  end

  def edit
    @user = User.find(params[:id])
    
    @team = Team.find(params[:id])
  end
  
  def update

  end
  

  
  def destroy

  end
  
  
  private

    def teammate_params
      params.permit(:teammate)
    end
    def team_params
	params.permit(:name)
    end
    
end
