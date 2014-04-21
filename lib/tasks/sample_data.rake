namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		admin = User.create!(name: "Ronald M",
					email: "materonald3@gmail.com",
					password: "",
					password_confirmation: "")
		admin.toggle!(:admin)
	end
end