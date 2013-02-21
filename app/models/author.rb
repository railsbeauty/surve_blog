class Author < ActiveRecord::Base
attr_accessible :username, :email, :password, :password_confirmation

  authenticates_with_sorcery!
  attr_accessible :title, :body
  validates_confirmation_of :password, message: "should match confirmation", if: :password
  validates_uniqueness_of :email, :case_sensitive => false
end
