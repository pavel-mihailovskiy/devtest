class Evaluation
  include ActiveModel::Validations

  attr_accessor :country_code, :target_group_id, :locations

  validates :country_code, :target_group_id, :locations, presence: true

  def initialize(opts = {})
    opts.symbolize_keys!
    opts.each do |name, value|
      instance_variable_set("@#{name}", value)
      self.class.send(:attr_reader, name)
    end
  end

  def total_price
    @total_price ||= locations.inject(0) do |result, location|
      result += location[:panel_size].to_i * price
    end
  end

  def price
    @price ||= country.panel_provider.price
  end

  def country
    @country ||= Country.find_by(country_code: country_code)
  end
end
