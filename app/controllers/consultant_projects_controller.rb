class ConsultantProjectsController < ApplicationController

	def new
		@all_projects = Project.all
		@my_projects = current_consultant.projects.all
		@to_assign = @all_projects - @my_projects
		@consultant_project = ConsultantProject.new
	end

  def create
    @consultant_project = ConsultantProject.new(consultant_project_params)

    respond_to do |format|
      if @consultant_project.save
        format.html { redirect_to @consultant_project, notice: 'Assigned.' }
        format.json { render :show, status: :created, location: @consultant_project }
      else
        format.html { render :new }
        format.json { render json: @consultant_project.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def consultant_project_params
    	params.require(:consultant_project).permit(:consultant_id, :project_id)
    end

end