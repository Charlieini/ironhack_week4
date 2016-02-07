class SiteController < ApplicationController

  def home
    @concerts_today = Concert.where("date = ?", Date.today)
    @concerts_this_month = Concert.where("date >= ? AND date <= ?", Date.today.beginning_of_month, Date.today.end_of_month) - Concert.where("date = ?", Date.today)
  end

end
