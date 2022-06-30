class StudentsController < ApplicationController
  def index
    render json: Student.all
  end

  def grades
    #render json: Student.all.sort { |a, b| b.grade <=> a.grade }
    render json: Student.sort_all_by_grade_desc
  end

  def highest_grade
    #render json: Student.all.sort { |a, b| b.grade <=> a.grade }.first
    render json: Student.sort_all_by_grade_desc.first
  end
end
