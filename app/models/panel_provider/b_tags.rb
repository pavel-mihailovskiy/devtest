class PanelProvider::BTags < PanelProvider
  PRICE_SOURCE = 'https://ajax.googleapis.com/ajax/services/feed/find?v=1.0&q=news'

  def price
    @price ||= open(PRICE_SOURCE).read.scan(%r{\\u003cb\\u003e}).length
  end
end

