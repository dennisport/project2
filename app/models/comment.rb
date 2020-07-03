class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :users

    validates :content, presence: true
end