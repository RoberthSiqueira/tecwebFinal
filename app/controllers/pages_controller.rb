class PagesController < ApplicationController
  def index
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	flash[:success] = "Usuário alterado com sucesso!"
  	redirect_to root_path
  end

  private 
  def user_params
  	params.require(:user).permit(:id, :name, :email, :age, :location)
  end
end
