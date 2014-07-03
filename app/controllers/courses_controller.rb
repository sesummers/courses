class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find_by(id: params[:id])
    @student = Student.find_by(id: params[:id])
  end

  def new
  end

  def create
    @course = Course.new
    @course.name = params[:name]

    if @course.save
      redirect_to "/courses/#{ @course.id }"
    else
      render 'new'
    end
  end

  def edit
    @course = Course.find_by(id: params[:id])
  end

  def update
    @course = Course.find_by(id: params[:id])
    @course.name = params[:name]

    if @course.save
      redirect_to "/courses/#{ @course.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find_by(id: params[:id])
    @course.destroy


    redirect_to "/courses"
  end
end
