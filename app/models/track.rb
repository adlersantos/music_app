class Track < ActiveRecord::Base
  attr_accessible :album_id, :name, :lyrics

  belongs_to :album,
    :class_name => "Album",
    :primary_key => :id,
    :foreign_key => :album_id

  has_one :band,
    :through => :album,
    :source => :band
end
