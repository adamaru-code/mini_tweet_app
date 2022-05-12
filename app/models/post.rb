class Post < ApplicationRecord
  validates :content, presence: true, length: { maximum: 100 }
  validates :user_id, presence: true
end
