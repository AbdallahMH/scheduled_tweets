class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Successfully created account"
    else
      render :new
    end

    # params[:user]
    # => {"email"=>"d@hello", "password"=>"password", "password_confirmation"=>"password"}
    # params
    #  Parameters: {"authenticity_token"=>"[FILTERED]", "user"=>{"email"=>"d@hello", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign Up"}
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end