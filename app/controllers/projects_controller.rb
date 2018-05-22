class ProjectsController < ApplicationController
  def index
    @project_items = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params.require(:project).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_path, notice: "Your project is now live." }
      else
        format.html { render :new }
      end
    end
  end
end
