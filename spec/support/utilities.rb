include ApplicationHelper
def no_blank(attribute)
	"#{attribute} can't be blank"
end

def invalid(attribute)
	"#{attribute} is invalid"
end

def too_short(attribute)
	"#{attribute} is too short"
end

def valid_signin(user)
	fill_in "Email", 	with: user.email
	fill_in "Password", with: user.password
	click_button "Sign in"
end

RSpec::Matchers.define :have_error_message do |message|
	match do |page|
		expect(page).to have_selector('div.alert.alert-error', text: message)
	end
end
