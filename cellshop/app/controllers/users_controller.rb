class UsersController < ApplicationController

  def registers
  	@users = User.all
  end

  def level
  end

  def update
  	@user = User.find(current_user.id)
  	
  end

  def save
  	@user = User.find(current_user.id)
    @user.firstname = params[:user][:firstname]
    @user.lastname = params[:user][:lastname]
    @user.docnum = params[:user][:docnum]
    @user.birth = params[:user][:birth]
    @user.phone = params[:user][:phone]
    @user.country = params[:user][:country]
    @user.address = params[:user][:address]
    @user.city = params[:user][:city]

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_update_path, notice: 'Perfil actualizado!' }
      end
    end
  end
end
