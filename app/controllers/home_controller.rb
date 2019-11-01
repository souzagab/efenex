class HomeController < ApplicationController
  def index
    @sales = Sale.all
    @vehicles = Vehicle.all
    @users = User.all
    @brokers = Broker.all
  end
  def about
    @brokers = Broker.all
  end
  def contact
  end
  def faq
  end
end
