class StaticPagesController < ApplicationController
  def test

  end
  def home
    if current_user
      redirect_to chapters_path
    end
  end
end
