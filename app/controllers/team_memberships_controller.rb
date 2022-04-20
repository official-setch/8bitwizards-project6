class TeamMembershipsController < ApplicationController

  def index
    @users = Student.all
    @teams = Team.all
    @team_memberships = TeamMembership.all
  end
  
  
  def show
    
  end

  def new  
    @@team_id = params[:team_id] unless defined? @@team_id
    @users = User.all
    @team_membership = TeamMembership.new
    @team_id = params[:team_id]
  end

  def create
    team_membership = {team_id: @@team_id, user_id_id: params[:team_membership][:student_id]}
    p team_membership
    @team_id = @@team_id
    
    @team_membership = TeamMembership.new(team_membership)

    if @team_membership.save then
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

    def team_membership_params
      params.permit(:team_id, :student_id)
    end
    
end
