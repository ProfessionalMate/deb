namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		admin = User.create!(name: "Ronald M",
					email: "materonald3@gmail.com",
					password: "julian2014",
					password_confirmation: "julian2014")
		admin.toggle!(:admin)
	end
end