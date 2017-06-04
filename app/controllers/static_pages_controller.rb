class StaticPagesController < ApplicationController
  def test

  end

  def home
    if current_user
      if !current_user.admin?
        redirect_to chapters_path
      else
        redirect_to static_pages_admin_path
      end
    end
  end

  def admin

  end
end
