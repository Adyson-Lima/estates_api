class Estate < ApplicationRecord
  validates :name, :capital, presence: true
end
