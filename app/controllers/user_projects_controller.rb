class UserProjectsController < ApplicationController
  def create

    @user_project = current_user.user_projects.create(project_id: params[:project_id])

    if @user_project.save

    flash[:notice] = "You are signed up for your project"
    redirect_to projects_path

    else

    flash[:error] = "There was an error signing up for the project - please try again"
    redirect_to projects_path

    end
    # link_to "Join Project", user_projects_path(project_id: @project.id), method: :post, class: 'btn btn-success'
    # email dev with project details
  end

  def destroy
  end
end
