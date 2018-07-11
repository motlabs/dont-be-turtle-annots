class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def update
    p = Photo.find(params[:id])
    p.update(photo_params)

    done = (p.head_x > 0 || p.head_y > 0) && 
    (p.neck_x > 0 || p.neck_y > 0) &&
    (p.rshoulder_x > 0 || p.rshoulder_y > 0) &&
    (p.lshoulder_x > 0 || p.lshoulder_y > 0)
    unless p.update(done: done)
      logger.info p.errors.full_messages
    end
    render json: nil
  end

  def photo_params
    params.require(:photo).permit(
      :head_x,
      :head_y,
      :head_occluded,
      :neck_x,
      :neck_y,
      :neck_occluded,
      :rshoulder_x,
      :rshoulder_y,
      :rshoulder_occluded,
      :lshoulder_x,
      :lshoulder_y,
      :lshoulder_occluded,
      #:result,
    )
  end
end
