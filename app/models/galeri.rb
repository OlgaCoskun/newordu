class Galeri < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  serialize :avatars, JSON
end
