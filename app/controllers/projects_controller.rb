class ProjectsController < ApplicationController

	def index
    @projects = Project.all
  end
  
  
  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end


  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:success] = "Project created successfully!"
      redirect_to projects_url
    else
      render 'new'
    end
  end
  
  def edit
    @project = Project.find(params[:id])
  end
  
  
  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:success] = "Project updated"
      redirect_to @project
    else
      render 'edit'
    end
  end
  
  def destroy
    Project.find(params[:id]).destroy
    flash[:success] = "Project deleted"
    redirect_to projects_url
  end
  
  
  private
    def project_params
    	params.permit(:name)
    end
end
