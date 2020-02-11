class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @props = Prop.all
    @categories = ["Birthday", "Wedding", "House Party"]
  end

  def search
    raise
    @search = params[:search]
  end

  def dashboard
    @props = Prop.where(user: current_user)
  end
end
