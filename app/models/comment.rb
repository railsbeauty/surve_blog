class Comment < ActiveRecord::Base
  belongs_to :article
  attr_accessible :author_name, :body, :article_id
end
