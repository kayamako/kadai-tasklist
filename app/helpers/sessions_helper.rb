module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end
  
  def current_user?
    if !current_user.tasks.find_by(user_id: @task.user_id)
      redirect_to root_url
    end
  end

end