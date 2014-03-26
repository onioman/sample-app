module MicropostHelper
	def wrap(content)
		sanitize(raw(content.split.map{ |s| wrap_long_string(s) }.join(' ')))
	end

	private
		def wrap_long_string(text, max_witdth = 30)
			zero_width_space = "&#8203;"
			regex = /.{1,#{max_witdth}}/
			(text.length < max_witdth) ? text : 
										 text.scan(regex).join(zero_width_space)
		end
end
