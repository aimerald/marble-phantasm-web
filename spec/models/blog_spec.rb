require 'rails_helper'

RSpec.describe Blog, type: :model do

	before do
		@user = User.first
		@data = {
			title: "Blog1",
			body: "危険過ぎる",
			user: @user
		}
	end


	describe "保存に成功する条件" do
		it "success" do 
			user = Blog.new @data
			expect(user.save).to eq true
		end
	end

	describe "保存に失敗する条件" do
		
		context "必要な項目がない" do
			%W{title body user_id}.each do |sin|
				it "#{sin} is missing" do
					blog = Blog.new @data
					blog[sin] = nil
					expect(blog.save).to eq false
				end
			end
		end

	end


end
