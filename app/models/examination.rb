class Examination < ActiveRecord::Base
  belongs_to :examination_list
  has_many :examination_types
end
