class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to @image
    else
      flash.now[:error] = "Could not save image"
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to '/image/index', :notice => "Your image has been deleted"
  end

  private

  def image_params
    params.require(:image).permit(:description, :file_name, :photo)
  end
end
