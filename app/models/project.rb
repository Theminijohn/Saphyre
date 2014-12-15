class Project < ActiveRecord::Base

  # Associations
  belongs_to :user
  has_many :contacts

  # Validations
  validates :name, presence: true

end
