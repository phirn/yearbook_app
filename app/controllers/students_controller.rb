class StudentsController < ApplicationController
  def section
    @course_number = params[:id_number]
    @students = Student.fetch(@course_number)
  end
end
