class Review < ApplicationRecord
  belongs_to :list
  belongs_to :list
  validates :content, presence: true

end
