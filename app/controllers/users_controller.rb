class UsersController < ApplicationController
   
  layout 'signup'
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Usuário cadastrado com sucesso!"
      redirect_to login_path      
    else
      flash.now[:danger] = "Erro ao cadastrar usuário!"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
