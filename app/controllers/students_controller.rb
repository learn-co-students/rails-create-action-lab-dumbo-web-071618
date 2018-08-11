class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # @student =  Student.new
  end

  def create
    # @student = Student.new(params_hash)
    # if @student.save
    #   redirect_to student_path(@student)
    # else
    #   redirect_to new_student_path
    # end
    @student = Student.create({
        first_name: params[:first_name],
      last_name: params[:last_name]
      })

    redirect_to student_path(@student)
  end

  # private
  #
  # def params_hash
  #   params.require(:student).permit(:first_name, :last_name)
  #   # byebug
  # end

end
