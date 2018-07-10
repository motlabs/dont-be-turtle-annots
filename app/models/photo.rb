require 'carrierwave/orm/activerecord'
class Photo < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  #validates :done, presence: true
  #validates :is_turtle, presence: true
  validates :code, presence: true
end
