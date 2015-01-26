json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :first_name, :last_name, :hire_date, :office, :department_id
  json.url instructor_url(instructor, format: :json)
end
