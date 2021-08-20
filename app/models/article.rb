class Article < ApplicationRecord
  belongs_to :user
  has_many :comments


  def self.with_details
    Article.includes(:user, :comments => :user)
  end

  
  def format
   {
      id: self.id,
      title: self.name,
      body: self.body,
      user: self.user.format,
      comments: self.comments.map{|c| c.format}
    }
  end
end
