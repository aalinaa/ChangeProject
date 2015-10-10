class SessionsController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :is_registred

  def new
  end

  def create
  	user=User.find_by(name: params[:name])
  	if user and user.authenticate(params[:password])
  		session[:user_id]=user.id
  		redirect_to requests_url
  	else
  		redirect_to login_url, alert: "Bad login or password"
  	end
  end

  def destroy
  	session[:user_id]=nil
  	redirect_to store_url, notice: "Session was ended"
  end

  def confirm
    id=params[:id] 
    @user=User.find(id)
    flash[:note]=@user.id
    if !params[:send].nil?
      confirm_email
      
    end
  end
  def restore_pass
    if User.find_by(name: params[:name])
      forget_pass(params[:name])
    end
  end

  def forget_pass(name)
    @user=User.find_by(name: name)
    generate_token("pass_hash")
    @user.pass_time=Time.zone.now
    @user.save!
    Notifier.confirm_email(@user.email).deliver
    flash[:note]="We have sent you an email to recover your password. "
  end

  def confirm_email
    generate_token("registry_hash")
    @user.registry_time=Time.zone.now
    @user.save!
    Notifier.confirm_email(@user).deliver
    flash[:note]="Email was sent on #{@user.email}. You can change your email in your profile."
  end
  
  def generate_token(column)
    begin
      @user[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => @user[column])
  end
end
