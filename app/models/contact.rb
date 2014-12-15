class Contact < ActiveRecord::Base

  # Associations
  belongs_to :user
  belongs_to :project

  # Validations
  validates_presence_of :first_name, :last_name

end
