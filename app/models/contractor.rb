class Contractor < ActiveRecord::Base
  has_many :invoices
end
