class ExaminationsList < ActiveRecord::Base
  has_one :invoice
  has_many :examinations
end
