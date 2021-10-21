class MainController < ApplicationController
  def home
  end

  def signup
  end

  def signup_new
    if params != nil
      (@users = User.new(username:params[:username],password:params[:password],email:params[:email])) if(params[:password]!=nil)
      if @users.save
        @signup_user_records = User.where(username:params[:username],password:params[:password],email:params[:email])
        @authentication_status = params[:username]+" SignUp Successfully Completed"
        @signup_user_records.each do |t|
          @signup_user_record = t
        end
        redirect_to controller: 'dashboard', action: 'home' ,id:@signup_user_record[:id] , email:@signup_user_record[:email]
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
    @login_user_record =nil
    if params != nil
      if((params[:password]!=nil) && (params[:email]!=nil))
        @users = User.where(email:params[:email],password:params[:password])
        @users.each do |t|
          if ((t.password==params[:password]) && (t.email==params[:email]))
            @login_status = true
            @login_user_record = t
          end
        end
      end
    end
    if @login_status ==true
      @authentication_status = "Login Successful"
      redirect_to controller: 'dashboard', action: 'home', id:@login_user_record.id , email:@login_user_record.email
    else
      @authentication_status = "Login Failed"
      render :authentication_status
    end
  end
end
