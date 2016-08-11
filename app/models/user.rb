class User < ApplicationRecord
  authenticates_with_sorcery!
	
	#バリデーション
	validates_presence_of :name, :email, :password,
		message: "この項目は未記入で登録できません"

	#リレーション
	has_many :blogs
end
