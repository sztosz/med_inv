class Contractor < ActiveRecord::Base
  has_many :invoices
  validates_presence_of :name, :street, :zip_code, :city, :nip
end
