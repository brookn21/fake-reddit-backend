class User < ApplicationRecord

    has_secure_password 
    
    has_many :likes
    has_many :comments
    has_many :posts
    has_many :notifications
    has_many :community_users
    has_many :communities, through: :community_users

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true, format:{ with:
    URI::MailTo::EMAIL_REGEXP }

    PASSWORD_REQUIREMENTS = /\A
        (?=.{8,})
        (?=.*\d)
        (?=.*[a-z])
        (?=.*[A-Z])
        (?=.*[[:^alnum:]])
    /x

    validates :password, presence: true, format: PASSWORD_REQUIREMENTS
end
