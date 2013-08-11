class Album < ActiveRecord::Base
  attr_accessible :band_id, :title

  belongs_to :band,
    :class_name => "Band",
    :primary_key => :id,
    :foreign_key => :band_id

  has_many :tracks,
    :class_name => "Track",
    :primary_key => :id,
    :foreign_key => :album_id
end
