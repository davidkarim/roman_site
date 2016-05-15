class User < ActiveRecord::Base
  has_secure_password

  validates :email,
  presence: true,
  uniqueness: true,
  format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  }

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

# Validate the attached image is image/jpg, image/png, etc
validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
