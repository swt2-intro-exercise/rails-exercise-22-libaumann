class Author < ApplicationRecord
  validates :last_name, presence: true,
                    length: { minimum: 1 }
  has_and_belongs_to_many :papers
  has_many :authors_papers
  has_many :papers, :through => :authors_papers
  def name() 
	first_name + " " + last_name
  end
end
