class Invoice < ActiveRecord::Base
  has_one :contractor
  belongs_to :examinations_list
  belongs_to :user
end
