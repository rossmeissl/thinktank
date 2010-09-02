class BillsController < ApplicationController
  def new
    @purchases = (0..4).to_a.fill { Purchase.new }.sort_by(&:date)
  end
end
