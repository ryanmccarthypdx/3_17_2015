class LessonsController < ApplicationController
  def new
    @section = Section.find(params[:section_id])
    @lesson = Lesson.new
    render :new
  end

  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    @lesson.number = @section.lessons.length + 1
    if @lesson.save
      redirect_to section_path(@section)
    else
      render :new
    end
  end

  def show
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
  end

  def destroy
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to section_path(@section)
  end

  def update
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lesson])
      redirect_to section_path(@lesson.section)
    else
      render :edit
    end
  end

  def lesson_params
    params.require(:lesson).permit(:title, :body, :number)
  end
end
