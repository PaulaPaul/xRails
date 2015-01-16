module ApplicationHelper

#here we'll have our master-list of answers, and the user's guess will be checked against that list.
def check_answer(answer, quiztype)
  citylist = ["Atlanta","Asheville","Charlotte","Raleigh"]
  statelist = ["Alaska", "Hawaii", "Washington", "Oregon", "California", "Arizona", "Nevada", "Idaho", "Montana", "Utah", "New Mexico", "Colorado", "Wyoming", "North Dakota", "South Dakota", "Nebraska", "Kansas", "Oklahoma", "Texas", "Louisiana", "Arkansas", "Missouri", "Iowa", "Minnesota", "Wisconsin", "Illinois", "Indiana", "Ohio", "Michigan", "Kentucky", "Tennessee", "Mississippi", "Alabama", "Georgia", "Florida", "South Carolina", "North Carolina", "Virginia", "West Virginia", "Maryland", "Delaware", "Pennsylvania", "New Jersey", "New York", "Connecticut", "Rhode Island", "Massachusetts", "New Hampshire", "Vermont", "Maine"]
  #additional master-lists could be placed here.

  correct = false

  if quiztype == 'city'
    citylist.each do |c|
      if answer == c
        correct = true
      end
    end
  elsif quiztype == 'state'
    statelist.each do |s|
      if answer == s
        correct = true
      end
    end
  else
    correct = false #not great error handling for the case where the quiztype is wrong... but ok for now
  end

  return correct
end


#check to see if the answer, while although correct, may have already been guessed and put into the database of answers.
def check_for_dup(answer,database)

  is_dup = false

  database.each do |d|
    if answer == d.name
      is_dup = true
    end
  end

  return is_dup
end

end