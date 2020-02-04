class PropsController < ApplicationController
before_action :set_prop, only: [:show, :edit, :update, :destroy]

def index
  @props = Prop.all
end

def show
  # @prop = Prop.find(params[:id])
end

def new
  @prop = Prop.new
end

def create
  @prop = Prop.new(prop_params)
  @prop.save
  # no need for app/views/props/create.html.erb
  redirect_to prop_path(@prop)
end
prop


def edit
  # @prop = Prop.find(params[:id])
end

def update
  # @prop = Prop.find(params[:id])
  @prop.update(prop_params)

  # no need for app/views/props/update.html.erb
  redirect_to prop_path(@prop)
end

def destroy
  # @prop = Prop.find(params[:id])
  @prop.destroy
  # no need for app/views/props/destroy.html.erb
  redirect_to props_path
end


private

def set_prop
  @prop = Prop.find(params[:id])
end

def prop_params
  params.require(:prop).permit(:name, :description, :booking_status, :price, :availability, :location, :id_users, :photo)
end

end
