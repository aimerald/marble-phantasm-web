require 'rails_helper'

RSpec.describe User, type: :model do

	describe "保存に成功する" do
		before do
			@data = {
				name: "UG",
				email: "info@seasons-call.xyz",
				password: "password"
			}
		end

		it "保存に成功する" do
			user = User.new @data
			expect(user.save).to eq true
		end

	end

	describe "保存に失敗する" do
		before do
			@data = {
				name: "UG",
				email: "info@mail.com",
				password: "password"
			}
		end
		
		%W{name email}.each do |sin|
			it "#{sin} がない" do
				user = User.new @data
				user[sin] = nil
				expect(user.save).to eq false
			end
		end

		it "passwordが未記入の場合はエラーを吐く" do
			user = User.new @data
			user.password = nil
			expect(user.save).to eq false
		end


	end
end
