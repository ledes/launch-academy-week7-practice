class PhonesController < ApplicationController
  def index
    @phones = Phone.all
  end

  def new
    @phone = Phone.new
    @manufacturers = Manufacturer.all
  end

  def create
    @phone = Phone.new(phone_params)
    if @phone.save
      flash[:success] = 'Phone added'
      redirect_to phones_path
    else
      flash[:alert] = 'You have to fill the form'
      redirect_to new_phone_path
    end
  end

  private

  def phone_params
    params.require(:phone).permit(:year, :battery_life, :description, :manufacturer_id)
  end
end
