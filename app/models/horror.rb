class Horror < ApplicationRecord

    validates :title, :year, :descriptor, presence: true
    validates :title, uniqueness: true
end
