class User < ApplicationRecord
  has_many :articles
  has_many :comments


  def format
    {
      id: self.id,
      name: self.name 
    }
  end
end
