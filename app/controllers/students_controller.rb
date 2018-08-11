class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def show
    @student = Student.find(params[:id])
  end


  def create
    student_hash = Hash.new
    student_hash[:first_name] = params[:first_name]
    student_hash[:last_name] = params[:last_name]
    @student = Student.create student_hash
    @student.save
    redirect_to student_path @student
  end

end
