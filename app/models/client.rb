class Client < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  mount_uploader :photo, PhotoUploader

  def full_name
    "#{first_name} #{last_name}"
  end
end
