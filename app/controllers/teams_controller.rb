class TeamsController < ApplicationController

  
  def index
    @teams = Team.all
  end
  
  
  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end


  def create
    @team = Team.new(team_params)

    if @team.save
      flash[:success] = "Team created successfully!"
      redirect_to @team
    else
      flash[:success] = "Failed to create team"
      redirect_to @team
    end
  end
  
  def edit
    @team = Team.find(params[:id])
  end
  
  
  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      flash[:success] = "Team updated"
      redirect_to @team
    else
      render 'edit'
    end
  end
  
  def destroy
  	TeamMembership.where(team_id: params[:id]).each do |m|
  		m.destroy
  	end
    Team.find(params[:id]).destroy
    flash[:success] = "Team deleted"
    redirect_to teams_url
  end
  
  
  private
    def team_params
	params.permit(:name)
    end

    
    

end
