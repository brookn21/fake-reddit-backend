class Post < ApplicationRecord
  belongs_to :community
  belongs_to :user
  has_many :likes
  has_many :comments

  validates: title, presence: :true
  validates: description, presence: :true
end
