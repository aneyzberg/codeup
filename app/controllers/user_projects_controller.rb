class UserProjectsController < ApplicationController
  def create
    project = Project.find(params[:project_id])
    
    if project.available_slots?

      @user_project = current_user.user_projects.build(project_id: params[:project_id])

      authorize @user_project


      if @user_project.save

        user = @user_project.user

        #UserMailer.run(user)

        flash[:notice] = "You are signed up for your project"
        redirect_to projects_path

      else
        flash[:notice] = "There was a problem signing up for this project"
        redirect_to projects_path
      end
      
    else

      flash[:error] = "This project is already full. Please try again tomorrow!"
      redirect_to projects_path
    end

    end
       
       #link_to "Join Project", user_projects_path(project_id: @project.id), method: :post, class: 'btn btn-success'
       #email dev with project details
  #end

  def destroy
  end

end
