class Post < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc)}

  validates :title, presence: true, length: { minimum: 1, maximum: 40}
  validates :content, presence: true, length: { minimum: 10, maximum: 2000}
end
