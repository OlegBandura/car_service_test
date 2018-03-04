class ServicesController < ApplicationController
  def index

  end

  def show

  end

  def new
    @car = Car.new
    @year = Array[]
    Time.current.year.downto(1970) { |n| @year.push(n) }
  end

  def create

  end
end
