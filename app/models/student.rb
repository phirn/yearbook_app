require 'open-uri'

class Student
  attr_accessor :twitter, :section, :photo_url, :name

  def Student.fetch(course_id)
    url = "http://yearbook-api.herokuapp.com/2013/Spring/#{course_id}.json"
    raw_response = open(url).read
    result = JSON.parse(raw_response)
    list_from_api = result["students"]

    array_of_students = Array.new

    list_from_api.each do |student_hash|
      s = Student.new
      s.name = student_hash["first_name"] + " " + student_hash["last_name"]
      s.photo_url = student_hash["avatar"]
      s.section = "BegHTML"
      s.twitter = student_hash["twitter"]

      array_of_students << s
    end
    return array_of_students
  end
end
