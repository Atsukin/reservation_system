module Admin
    class CoursesController < Admin::ApplicationController
      def index
        @courses = Course.all
      end
    
      def edit
        @courses = Course.find(params[:id])
      end
    
      def update
        @course = Course.find(params[:id])
        if @course.update(course_params)
          redirect_to admin_course_url, notice: "コースを編集しました。"
        else
          render :edit
        end
      end
    
      def new
        @course = Course.new
      end
    
      def create
        @course = Course.new(course_params)
        if @course.save
          redirect_to admin_course_url, notice: "テーブルを登録しました。"
        else
          render :new
        end
      end
    
      def show
      end
    
      private
    
      def course_params
        params.require(:course).permit(:title, :course_image)
      end
    end
  end
  