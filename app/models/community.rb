class Community < ApplicationRecord
    has_many :posts
    has_many :users, through: :posts

    def self.most_active
        self.all.sort_by{|community| community.posts.count}.last
      end
    
      def self.least_active
        self.all.sort_by{|community| community.posts.count}.first
      end
    
      def self.newest
        self.all.sort_by{|community| community.created_at}.first
      end
    
      def self.oldest
        self.all.sort_by{|community| community.created_at}.last
      end
end
