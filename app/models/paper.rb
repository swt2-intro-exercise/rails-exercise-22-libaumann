class Paper < ApplicationRecord
  validates :title, presence: true
  validates :venue, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  has_and_belongs_to_many :authors
  has_many :authors_papers
  has_many :authors, :through => :authors_papers
  scope :specific_year, ->(int) { where("year == ?", int) if int.present? }
end
