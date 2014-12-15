class Contact < ActiveRecord::Base

  # Associations
  belongs_to :user
  belongs_to :project

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :project_id, presence: true
  validates :user_id, presence: true
  validates :mobile_number, presence: true, uniqueness: { scope: :project } 

end
