class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user


  def format
    {
      id: self.id,
      body: self.body,
      user: self.user.format
    }
  end
end
