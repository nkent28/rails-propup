class PropsController < ApplicationController
before_action :set_prop, only: [:show, :edit, :update, :destroy]

  def index
    @props = Prop.all

    @props = Prop.geocoded #returns props with coordinates
    @markers = @props.map do |prop|
      {
        lat: prop.latitude,
        lng: prop.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { prop: prop }),
        image_url: helpers.asset_url('logo1.png')
      }
    end
  end

  def show
  end

  def new
    @prop = Prop.new
  end

  def create

    @prop = Prop.new(prop_params)
    @prop.user = current_user

    # no need for app/views/props/create.html.erb
    if @prop.save
      redirect_to prop_path(@prop)
    else
      render :new
    end
  end

  def edit
    # @prop = Prop.find(params[:id])
  end

  def update
    # @prop = Prop.find(params[:id])
    if @prop.update(prop_params)
    # no need for app/views/props/update.html.erb
      redirect_to prop_path(@prop)
    else :edit
    end
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
    params.require(:prop).permit(:name, :description, :price, :availability, :location, photos: [])
  end

end
