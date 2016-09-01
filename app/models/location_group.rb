class LocationGroup < ActiveRecord::Base
  has_and_belongs_to_many :locations
  belongs_to :country
  belongs_to :panel_provider
end
