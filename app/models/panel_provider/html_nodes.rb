class PanelProvider::HTMLNodes < PanelProvider
  PRICE_SOURCE = 'http://time.com'

  def price
    Nokogiri::HTML(open(PRICE_SOURCE)).css('*').select(&:element?).length / 100
  end
end
