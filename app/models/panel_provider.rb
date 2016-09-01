require 'nokogiri'
require 'open-uri'

class PanelProvider < ActiveRecord::Base
  has_many :countries
  has_many :location_groups
  has_many :target_groups

  def price
    raise(NotImplementedError.new("The #price is not overriden for #{self.class}"))
  end
end
