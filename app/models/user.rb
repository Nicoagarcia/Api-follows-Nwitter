class User < ApplicationRecord
    has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow"
    has_many :followers, through: :received_follows, source: :follower
    has_many :given_follows, foreign_key: :follower_id, class_name: "Follow"
    has_many :followings, through: :given_follows, source: :followed_user 
    def self.top_users
       User.joins(:followers).group("users.id").order("count(users.id) desc").limit(3)
    end
     def self.followers_summary
       User.joins(:followers).group("users.id").select("users.name, count(users.id) as followers")
    end


end
