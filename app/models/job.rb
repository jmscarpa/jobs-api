class Job < ApplicationRecord
  belongs_to :role_type
  belongs_to :user
end
