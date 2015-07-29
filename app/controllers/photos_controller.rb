class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show

    @show = params["id"]

    render("show.html.erb")

  end

  # def edit

  #   @edit = params["id"]
  #   p = Photo.find_by({ :id => @edit })
  #   p.caption = "#{@caption}"
  #   p.source = "#{@source}"
  #   p.save

  #   render("edit.html.erb")

  # end

  # IGNORE EDIT SECTION - DID NOT READ INSTRUCTIONS CLEARLY IN ADVANCE

  def destroy

    @destroy = params["id"]

    Photo.find(@destroy).destroy

    redirect_to("/photos")

  end

  def new_form

    p = Photo.new
    p.caption = @caption
    p.source = @source
    p.save

    render("new.html.erb")

  end

end
