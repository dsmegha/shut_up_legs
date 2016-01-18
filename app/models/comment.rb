class Comment < ActiveRecord::Base
  validates :name, presence: true    
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :subject, presence: true
  validates :message, presence: true
end
