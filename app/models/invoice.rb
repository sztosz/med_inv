class Invoice < ActiveRecord::Base
  has_one :contractor
end
