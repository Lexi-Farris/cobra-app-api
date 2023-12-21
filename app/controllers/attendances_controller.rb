class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all 
    render :index
  end

  def show
    @attendance = Attendance.find_by(id: params[:id])
    render :show
  end

end
