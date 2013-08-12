class Note < ActiveRecord::Base
  attr_accessible :author_id, :body, :track_id

  belongs_to :track,
    :class_name => "Track",
    :primary_key => :id,
    :foreign_key => :track_id

  belongs_to :author,
    :class_name => "User",
    :primary_key => :id,
    :foreign_key => :author_id
end
