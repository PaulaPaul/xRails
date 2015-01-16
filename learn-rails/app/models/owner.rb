# owner model file
class Owner

	def name
		name = "Paula"
	end

	def birthdate 
	#this is the big day, on the actual year of birth
		birthdate	= Date.new(1960,12,8)  
		#Date is a pre-made class in Rails but not Ruby
	end

	def birthday 
	#this is the big day, in the current year
		today = Date.today 
		birthday = Date.new(today.year, birthdate.month, birthdate.day)
	end

	def countdown
		today = Date.today  
		if birthday >= today
			countdown = (birthday - today).to_i
		else
			countdown = (birthday.next_year - today).to_i  
			#Date.next_year is a built in method of the Date object
		end
	end

	def age
		#gives the age you are or will be in the current year
		today = Date.today 
		if birthday > today 
			#if it's not your birthday yet, subtract one
			age = today.year - birthdate.year - 1
		else
			age = today.year - birthdate.year
		end
	end

	def age_in_hex
		today = Date.today 
		age_in_hex = age.to_s(16)
	end

end