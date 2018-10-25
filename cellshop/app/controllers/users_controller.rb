class UsersController < ApplicationController
  before_action :authenticate_admin!, only: [:level]

  def registers
  	@users = User.all
  end

  def level
    user = User.find(params[:id])
    if user.permission_level == 1
      user.permission_level = 2
    else
      user.permission_level = 1
    end

    respond_to do |format|
      if user.save
        format.html { redirect_to users_registers_path, notice: 'Permisos modificados!' }
      end
    end
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
