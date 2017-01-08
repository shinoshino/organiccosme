class PagesController < ApplicationController
  before_action :set_events

  def brand
  end

  def popular
  end

  def hot
  end

  def foundation
  end

  def sunscreen
  end

  def madeinjapan
  end

  private

  def set_events
    @events = Event.all
  end
end

