helpers do
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def current_stat
    @current_stat ||= Stat.find_by(id: session[:stat_id])
  end


end
