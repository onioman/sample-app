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
