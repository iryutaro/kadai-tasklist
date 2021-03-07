module SessionsHelper
  def current_root
    @current_root ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_root
  end
end