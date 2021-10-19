class MainController < ApplicationController
  def home

  end

  def signup
  end

  def signup_new
    if params != nil
      (@users = User.new(username:params[:username],password:params[:password],email:params[:email])) if(params[:password]!=nil)
      if @users.save
        #@user = User.find_by(params[:username])
        @authentication_status = params[:username]+" SignUp Successfully Completed"
        render :authentication_status
      else
        @authentication_status = "SignUp Failed"
        render :authentication_status
      end
      #have to render Dashboard
      #here we calling main.html.erb from new(i.e after storing data)
      #so initialised new @products object and called to pass instance
    end
    #flash has to be written here
  end

  def login
  end

  def login_validate
    @login_status = false
    if params != nil
      if((params[:password]!=nil) && (params[:email]!=nil))
        @users = User.where(email:params[:email],password:params[:password])
        @users.each do |t|
          if ((t.password==params[:password]) && (t.email==params[:email]))
            @login_status = true
          end
        end
      end
    end
    if @login_status ==true
      @authentication_status = "Login Successful"
      render :authentication_status
    else
      @authentication_status = "Login Failed"
      render :authentication_status
    end
  end
end
