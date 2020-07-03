class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :comments


  has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followees, through: :followed_users
  
  has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
  has_many :followers, through: :following_users

  validates :username, presence: true, uniqueness: true

  def self.most_active
    self.all.sort_by{|user| user.posts.count}.last
  end

  def self.least_active
    self.all.sort_by{|user| user.posts.count}.first
  end

  def self.newest
    self.all.sort_by{|user| user.created_at}.first
  end

  def self.oldest
    self.all.sort_by{|user| user.created_at}.last
  end

  def self.most_followers
    self.all.sort_by{|user| user.followers.count}.last
  end

  def self.least_followers
    self.all.sort_by{|user| user.followers.count}.first
  end


end
