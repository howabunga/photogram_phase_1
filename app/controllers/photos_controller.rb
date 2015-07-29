class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show

    @show = params["id"]

    render("show.html.erb")

  end

  def edit

    @edit = params["id"]
    p = Photo.find_by({ :id => @edit })
    p.caption = "#{@caption}"
    p.source = "#{@source}"
    p.save

    render("edit.html.erb")

  end

  def destroy

    @destroy = params["id"]

    Photo.find_by({ :id => @destroy }).destroy

    redirect_to("/photos")

  end

  def new

    p = Photo.new
    p.caption = @caption
    p.source = @source
    p.save

    redirect_to("/photos")

    render("new.html.erb")

  end

end
