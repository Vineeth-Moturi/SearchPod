class MainController < ApplicationController
  def home
  end

  def signup
  end

  def new
    if params != nil
      (@users = User.new(username:params[:username],password:params[:password],email:params[:email])) if(params[:product_link]!=nil)
    end
    if @users.save
      @user = User.find_by(params[:username])
      render :new #have to render Dashboard
      #here we calling main.html.erb from new(i.e after storing data)
      #so initialised new @products object and called to pass instance
    else
    end
  end

  def login
  end

  def login_validate
    @login_status = false
    if params != nil
      if((params[:username]!=nil) && (params[:password]!=nil) && (params[:email]!=nil))
        @users = User.where(username:params[:username],email:params[:email]))
        @users.each do |t|
          if ((t.username==params[:username]) && (t.password==params[:password]) && (t.email==params[:email]))
            @login_status = true
          end
        end
      end
    end
    if @login_status ==true
      render :"Login Successful"
    else
      render :"Login Failed..Try again"
  end

end
