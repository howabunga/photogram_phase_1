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

    render("edit.html.erb")

    Photo.find({ :id => @edit })
    Photo.caption = "#{@caption}"
    Photo.save

    Photo.find({ :id => @edit })
    Photo.caption = "#{@source}"
    Photo.save

    redirect_to("/photos")

  end

  def destroy

    @destroy = params["id"]

    Photo.find_by({ :id => @destroy }).destroy

    redirect_to("/photos")

  end

  def new

    render("new.html.erb")

    p = Photo.new
    p.caption = @caption
    p.source = @source
    p.save

    redirect_to("/photos")

  end

end
