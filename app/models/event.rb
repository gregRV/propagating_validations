class Event < ActiveRecord::Base
	validates_presence_of :date, message: "Must provide Date."
	validates_presence_of :organizer_name, message: "Must provide Organizer Name."
	validates_presence_of :organizer_email, message: "Must provide Email address."
	validates_presence_of :title, message: "Must provide Title."
	validates_uniqueness_of :title, message: "Title already taken."
	validates :organizer_email, format: {
		with: /\w+@\w+.\w{2,}/, 
		message: "Please enter a valid email address."
	}
	validate :is_valid_date

	def is_valid_date
		if date.present? && date < Date.today
			errors.add(:date,  "Must be a future date.")
		end
	end
end

# a. The events date is empty, in the past, or is not valid. 
# b. The events title is already taken or empty. 
# c. The event organizers name is empty. 
# d. The event organizers email address is invalid.