class ExaminationsList < ActiveRecord::Base
  belongs_to :invoice
  has_many :examinations
end
