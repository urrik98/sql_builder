class Table < ApplicationRecord
  belongs_to :database
  has_many :columns
end
