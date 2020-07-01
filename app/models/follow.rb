class Follow < ApplicationRecord
    # User giving the follow 
    belongs_to :follower, class_name: 'User'
    # User being followed
    belongs_to :followee, class_name: 'User'

    validates :follower_id, uniqueness: { scope: :followee_id }
    validates :followee_id, uniqueness: { scope: :follower_id }
end
