class User < ActiveRecord::Base
  attr_accessible :email, :password, :token, :activation_token, :activated

  has_many :notes,
    :class_name => "Note",
    :primary_key => :id,
    :foreign_key => :author_id
end
