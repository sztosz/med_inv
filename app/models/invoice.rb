class Invoice < ActiveRecord::Base
  has_one :contractor
  has_many :examination_lists
end
