class Rider < ActiveRecord::Base
  belongs_to :race
  validates :race_id, presence: true
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :bike, presence: true, :inclusion => %w(mtb hybrid road)
  validates :gender, presence: true, :inclusion => %w(male female)
  validates :age, presence: true,  :inclusion => { :in => 0..99 }
  validates :emergency, presence: true
  validates :category, presence: true, :inclusion => %w(male female u18)
  validates :transaction_id, presence: true
  validates :paid, presence: true
end
