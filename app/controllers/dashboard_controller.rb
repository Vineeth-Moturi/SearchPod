class DashboardController < ApplicationController
  def home
    @user_record = User.find_by(id:params[:id],email:params[:email])
    @username = @user_record[:username].to_str
    @useremail = @user_record[:email].to_str

    x=DateTime.now
    x = (x.hour)
    if x>1 && x<=12
      @time_session = "Morning.."
    elsif (x>12 && x<=16)
      @time_session = "AfterNoon.."
    elsif (x>16 && x<=20)
      @time_session = "Evening.."
    else
      @time_session ="Night.."
    end

    #@todolist = todo.all
  end

  def Account
  end 

  def ToDos
  end

  def Articles
  end

  def Products
  end

end
