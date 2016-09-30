class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.create(
                          image: params[:image],
                          name: params[:name],
                          status: params[:status],
                          notes: params[:notes]
                          )

    redirect_to '/'
  end

  def show
    @image = Image.find_by(id: params[:id])
  end

  def edit
    @image = Image.find_by(id: params[:id])
  end

  def update
    @image = Image.find_by(id: params[:id])
    @image.update(
                  image: params[:image],
                  name: params[:name],
                  status: params[:status],
                  notes: params[:notes]
                  )

    redirect_to "/images/#{@image.id}"
  end

  def destroy
    @image = Image.find_by(id: params[:id])
    @image.destroy

    redirect_to '/'
  end
end