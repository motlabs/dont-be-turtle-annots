class PhotosController < ApplicationController
  def update
    p = Photo.find(params[:id])
    p.update(params[:photo])

    done = (p.head_x > 0 || p.head_y > 0) && 
    (p.neck_x > 0 || p.neck_y > 0) &&
    (p.rshoulder_x > 0 || p.rshoulder_y > 0) &&
    (p.lshoulder_x > 0 || p.lshoulder_y > 0)
    p.update(done: done)
  end
end
