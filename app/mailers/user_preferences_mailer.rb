class UserPreferencesMailer < ActionMailer::Base
  default from: "aneyzberg@gmail.com"


  def new_sign_up(project, user )

    headers["Message-ID"] = "<projects/#{project.id}@codeupnow.com>"
    headers["In-Reply-To"] = "<projects/#{project.id}@codeupnow.com>"
    headers["References"] = "<projects/#{project.id}@codeupnow.com>"

    @project = project
    @user = user
    @project_users = project.users

    mail(to: user.email, subject: "Thank you for signing up for #{project.name}")
  end

end

