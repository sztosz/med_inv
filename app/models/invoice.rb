class Invoice < ActiveRecord::Base
  has_one :contractor
  has_many :examinations_lists
  belongs_to :user
end
