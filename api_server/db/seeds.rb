
begin
	User.create({
		name: "UG",
		email: "info@mail.com",
		password: "password"
	})
	
	33.times do |i|
		Blog.create({
			title: "somethin_#{i}",
			body: "てきとーに",
			user_id: 1
		})
	end
rescue => e
	puts e
end

puts "おわり"
