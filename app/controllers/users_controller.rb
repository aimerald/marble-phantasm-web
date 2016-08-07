class UsersController < ApplicationController

	#管理画面のことである
	def show

	end

	def sign_in
		@blur = "blur"
  end
	
	def sign_in_process
		data = params[:user]
		if @user = login(data[:email], data[:password])
			logger.debug @user.id
			cookies[:current_user] = @user.id
			redirect_to(:root, notice: "ログインに成功しました")
		else
			flash.now[:alert] = "ログインに失敗しました"
			render action: :sign_in
		end
	end
  
	def sign_up 
		if user_signed_in?
			redirect_to :root,notice: "すでにログインしています"
		else
			@user = User.new
		end
	end
	
	def create
		@user = User.new user_params
		if @user.save
			redirect_to :root,notice: "登録が完了しました"
		else
			flash[:now] = "ユーザーの登録に失敗しました"
			render :sign_up
		end
	end

	def sign_out
		cookies.delete(:current_user)
		if cookies[:current_user].nil?
			redirect_to :root,notice: "ログアウトしました"
		else
			redirect_to :back,notice: "ログアウトに失敗しました"
		end
  end
	
	
	private
	def user_params
  	params.require(:user).permit(:name, :email, :password,:password_confirmation, :image)
	end

end
