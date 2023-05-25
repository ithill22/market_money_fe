class VendorsController < ApplicationController
  def show
    @vendor = VendorsFacade.new.get_vendor(params[:id])
  end
end