class RentHousesController < ApplicationController
  before_action :set_rent_house, only: [:show, :edit, :update, :destroy]

  def index
    @rent_houses = RentHouse.all
  end

  def show
  end

  def new
    @rent_house = RentHouse.new
  end

  def edit
  end

  def create
    @rent_house = RentHouse.new(rent_house_params)

    if @rent_house.save
      redirect_to @rent_house, notice: '物件は正常に登録されました。'
    else
      render :new
    end
  end

  def update
    if @rent_house.update(rent_house_params)
      redirect_to @rent_house, notice: '物件情報は更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @rent_house.destroy
    redirect_to rent_houses_url, notice: '物件情報は削除されました。'
  end

  private
    def set_rent_house
      @rent_house = RentHouse.find(params[:id])
    end

    def rent_house_params
      params.require(:rent_house).permit(:rent_name, :age, :address, :charge, :note)
    end
end
