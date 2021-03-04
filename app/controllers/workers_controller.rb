class WorkersController < ApplicationController
  def index
    @users = User.all
    get_week
  end

  private

  def get_week
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
    @todays_date = Date.today #今日の日付

    @week_days = []  #2  一週間のデータ

    car_plans = Car.where(date: @todays_date..@todays_date + 6)


    7.times do |i|
      today_plans = [] #１  一週間の車のデータ
      car_plans.each do |car|
        today_plans << (car) if car.date == @todays_date + i
      end

      wday_num = @todays_date.wday+i
      if wday_num >= 7
        wday_num = wday_num - 7
      end
      days = { month: (@todays_date + i).month, date: (@todays_date + i).day, car: today_plans, wday: wdays[ wday_num]}

      @week_days<<(days)
    end
  end
end
