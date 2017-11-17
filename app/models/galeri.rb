class Galeri < ApplicationRecord
  #attr_accessor :photo

  mount_uploader :avatar, AvatarUploader

  #serialize :photo, JSON
end
