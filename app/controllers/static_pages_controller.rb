class StaticPagesController < ApplicationController
  def home
    if current_user
      redirect_to chapters_path
    end
  end
end
