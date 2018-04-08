class Link < ApplicationRecord
  acts_as_votable
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :url , presence: true, uniqueness: true
end
