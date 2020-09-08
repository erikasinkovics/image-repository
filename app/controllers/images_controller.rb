class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :destroy]

  def index
    @images = Image.all
  end

  def show
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new({
      description: params[:image][:description],
      file_name: params[:image][:photo].original_filename,
      user_id: current_user.id,
      photo: params[:image][:photo]
    })
    if @image.save
      redirect_to user_images_path(params[:user_id]), notice: "Image was successfully uploaded!"
    else
      flash.now[:error] = "Could not save image"
    end
  end

  def destroy
    @image.photo.purge
    @image.destroy
    redirect_to user_images_path(params[:user_id]), :notice => "Your image has been deleted."
  end

  private

  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:description, :file_name, :photo, :user_id)
  end
end
