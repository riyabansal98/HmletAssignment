class Note < ApplicationRecord
    has_and_belongs_to_many :tags
    belongs_to :user
    mount_uploader :image, ImageUploader
    validates :title, presence: true, length: {minimum: 5}
    validates :content, presence: true, length: {minimum: 5}
end
