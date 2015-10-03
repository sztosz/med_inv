class Examination < ActiveRecord::Base
  belongs_to :examinations_list
  has_many :examination_types
end
