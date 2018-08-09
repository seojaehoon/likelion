class Body < ApplicationRecord
    validates :weight, presence: true, length: { maximum: 3 } 
    validates :tall, presence: true, length: { maximum: 3 } 
end
