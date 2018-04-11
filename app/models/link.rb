class Link < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :comments
  validates :title, presence: true, uniqueness: true
  validates :url , presence: true, uniqueness: true
end
