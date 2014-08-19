class HomeController < ApplicationController
  def index
    @wifis = Wifi.all
  end
end
