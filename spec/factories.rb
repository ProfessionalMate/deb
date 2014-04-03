FactoryGirl.define do
	factory :user do
		name "Ronald"
		email "ronm@gmail.com"
		password "foobar"
		password_confirmation "foobar"
	end
end