class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def authorize_admin
    if !current_user.admin?
      redirect_to(root_path, :notice => "Action is not allowed") and return
    end
  end
end
