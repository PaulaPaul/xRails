function getOwner() {
	var owner = {
			firstName: "Paula",
			lastName: "Paul",
			birthday: new Date("December 8, 1960"),
			eyeColor: "blue",
		};

	return owner;

}

function getBirthdate(birthday) {
	var theDate = (birthday.getMonth() + 1).toString() + '/' + birthday.getDate().toString() + '/' +  birthday.getFullYear().toString();
	return theDate;
}

function getGreeting(birthday) {
	var greeting = new String();
	var today = new Date();
	var age = getAge(birthday);
	var ageHex = "0x" + age.toString(16);
	var countdown = getCountdown(birthday).toString();

	if (age >= 40) {
		greeting = "We don't have numbers that large, so can only print your age in hex.  Congratulations on making it all the way to " + ageHex + " years young!"
	}
	else {
		greeting = "Congratulations on making it all the way to " + age.toString() + " years young!"	
	}

	if (getCountdown(birthday) == 0) {
		greeting = greeting + "<marquee><h2>Happy Birthday!!!!</h2></marquee>"
	}
	else {
		greeting = greeting + " Only " + countdown + " days until your birthday!"
	}

	return greeting;
}

function getFullname(firstName, lastName) {
	return firstName + " " + lastName;
}

function getCountdown(birthday) {
	var today = new Date();
	var nextBirthday = new Date(today.getFullYear(), birthday.getMonth(), birthday.getDate());
	var countdownDays = new Number(-1);
	//Set 1 day in milliseconds, to do the date math
	var one_day=1000*60*60*24;
	if (nextBirthday.getMonth() == today.getMonth() && nextBirthday.getDate() == today.getDate()) {
		// it's your birthday!
		return 0;
	} 
	else {
		if (today.getMonth() >= nextBirthday.getMonth() && today.getDate() > nextBirthday.getDate()) {
		// the birthday was earlier in the current year - set the date for next year's
        	nextBirthday.setFullYear(nextBirthday.getFullYear()+1);
		}
		//Calculate difference btw the two dates, and convert to days
		countdownDays = Math.ceil((nextBirthday.getTime()-today.getTime())/(one_day));
	}
	return countdownDays;
}

function getAge(birthday) {
	var today = new Date();
	var age = today.getFullYear() - birthday.getFullYear() - 1;
	if (today.getMonth() >= birthday.getMonth() && today.getDate() >= birthday.getDate()) {
		// the birthday is today or earlier in the current year 
		age =  age + 1;
	}
	return age;
}