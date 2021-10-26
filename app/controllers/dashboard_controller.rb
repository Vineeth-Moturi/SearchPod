class DashboardController < ApplicationController

  @@user_record_transfer
  
  def home
    if(params.key?("email"))
      @user_record = User.find_by(id:params[:id],email:params[:email])
    else
      @user_record = User.find_by(id:params[:id])
      #this is done for navigating from todo to dashboard
    end
    @username = @user_record[:username].to_str
    @useremail = @user_record[:email].to_str
    @current_user_id = @user_record[:id]

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

    @todolist = TodoList.where(user:params[:id])
    @@user_record_transfer = params[:id]
    #above code done for navigating back
  end

  def Account
  end 

  def ToDos
    #@@record_transfer = params[:id]
    redirect_to controller:"todo_lists", action:'index', id:@@user_record_transfer
  end

  def Articles
  end

  def Products
  end

  def logout
    session[:user_id] = nil
    #cookies.delete(:email,domain:"all")
    #current_user_id
    redirect_to controller:"main", action: "login"
  end
end
