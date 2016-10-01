class UserController < ApplicationController
  def step1
    if current_user.exists(user_create_params[:username])
      @user = current_user.verify(user_create_params)
    else
      User.create!(user_create_params)
      @user = User.find_by({username: user_create_params[:username]})
    end
      
    puts @user.inspect
  end
  
  def step2
  end
  
  def step3
  end
  
  def step4
  end
  
  def step5
  end
  
  def status
    @contracts = current_user.contracts.where({status: false})
  end
  
  def user_create_params
    params.require(:form).permit(:username, :password)
  end
end
