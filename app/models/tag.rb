class Tag < ActiveRecord::Base
  attr_accessible :name
  has_many :taggings
  has_many :taggings, dependent: :destroy
 
  def to_s
    name
  end

end
