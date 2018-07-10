class MainController < ApplicationController
  def home
    photos = Photo.where(done: false).limit(100)
    photo_count = photos.count
    @photo = photos[rand(photo_count)]
  end
end
