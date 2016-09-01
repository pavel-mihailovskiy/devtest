class PanelProvider::Letters < PanelProvider
  PRICE_SOURCE = 'http://time.com'

  def price
    Nokogiri::HTML(open(PRICE_SOURCE)).at('body').inner_text.count('a') / 100
  end
end
