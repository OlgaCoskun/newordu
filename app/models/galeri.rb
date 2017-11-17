class Galeri < ApplicationRecord
  #attr_accessor :photo

  mount_uploader :photo, PhotoUploader

  #serialize :photo, JSON
end
