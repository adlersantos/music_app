class Track < ActiveRecord::Base
  attr_accessible :album_id, :name, :lyrics

  belongs_to :album,
    :class_name => "Album",
    :primary_key => :id,
    :foreign_key => :album_id

  has_one :band,
    :through => :album,
    :source => :band

  has_many :notes,
    :class_name => "Note",
    :primary_key => :id,
    :foreign_key => :track_id
end
