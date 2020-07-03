class Post < ApplicationRecord
    belongs_to :user
    belongs_to :community
    has_many :comments, as: :commentable

        
    def self.newest
        self.all.sort_by{|post| post.created_at}.first
      end
    
      def self.oldest
        self.all.sort_by{|post| post.created_at}.last
      end

      def self.longest
        self.all.sort_by{|post| post.description.length}.last
      end

      def self.shortest
        self.all.sort_by{|post| post.description.length}.first
      end
end
