json.array!(@courses) do |course|
  json.extract! course, :id, :number, :title, :credits, :instructor_id, :department_id
  json.url course_url(course, format: :json)
end
