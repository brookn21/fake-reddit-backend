class Community < ApplicationRecord
    has_many :posts
    has_many :community_users
    has_many :users, through: :community_users

    validates :name, presence: :true, uniqueness: true
    validates :desc, presence: :true
end

