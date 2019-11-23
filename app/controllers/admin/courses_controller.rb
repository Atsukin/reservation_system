class Admin::CoursesController < ApplicationController
    before_action :authenticate_admin!
    def index
        @courses = Course.all
    end

    def new
        @course = Course.new
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        if @course.update(course_params)
            redirect_to admin_courses_url, notice: "コースを編集しました。"
        else
            render :edit
        end
    end

    def show
        @course = Course.find(params[:id])
    end

    def create
        course = Course.new(course_params)
        if course.save
            redirect_to admin_courses_url, notice: "コースを登録しました。"
        else
            render :new
        end
    end

    def destroy
        Course.find(params[:id]).destroy
        redirect_to admin_courses_url, notice: 'コースを削除しました。'
    end

    private

    def course_params
        params.require(:course).permit(:title,:description,:image)
    end
end
