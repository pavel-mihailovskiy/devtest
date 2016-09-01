class Country < ActiveRecord::Base
  belongs_to :panel_provider
  has_and_belongs_to_many :target_groups
  has_many :location_groups
  has_many :locations, through: :location_groups

  validates :country_code, presence: true, uniqueness: true
end
