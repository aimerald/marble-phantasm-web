class Blog < ApplicationRecord
	#画像関連
	mount_uploader :image,BlogUploader

	#バリデーション
	validates_presence_of :title, :body, :user_id
	
	#リレーション
	belongs_to :user
end
