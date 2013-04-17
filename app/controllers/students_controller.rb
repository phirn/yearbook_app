require 'open-uri'

class StudentsController < ApplicationController
  def section
    url = "http://yearbook-api.herokuapp.com/2013/Spring/37.json"
    raw_response = open(url).read
    result = JSON.parse(raw_response)
    list_from_api = result["students"]

    @students = Array.new

    list_from_api.each do |student_hash|
      s = Student.new
      s.name = student_hash["first_name"] + " " + student_hash["last_name"]
      s.photo_url = student_hash["avatar"]
      s.section = "BegHTML"
      s.twitter = student_hash["twitter"]

      @students << s
    end
  end
end
