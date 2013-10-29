# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#SampleApp::Application.config.secret_key_base = '5eac2c6ed53445bda08e704053fb868886883a262f47ee7777b3ff92695fe75b77a338f85a53ef8e340ce28bf932a2ef11ad737817e381d1cda391ba94b9da34'
#
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		# Use existen token
		File.read(token_file).chomp
	else
		# Generate one
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end

SampleApp::Application.config.secret_key_base = secure_token
