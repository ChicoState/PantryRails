class StudentController < ApplicationController
    def index
        # redirect_to(:action=>'new')
        @students = Student.all
    end
    
    def new
        @students = Student.new
    end
    
    def show
        @students = Student.find(params[:id])
    end

    def create
        # render plain: params[:additem].inspect
        @students = Student.new(students_params)
        if(@students.save)
            redirect_to @students
        else
            render 'new'
        end
    end

    def edit
        @students = Student.find(params[:id])
    end

    def update
        @students = Student.find(params[:id])
        if(@students.update(students_params))
            redirect_to @students
        else
            render 'edit'
        end
    end

    def destroy
        @students = Student.find(params[:id])
        @students.destroy

        redirect_to student_path
    end

    private def students_params
        params.require(:students).permit(:name, :donor, :quantity, :received, :expiry, :price)
    end
end

end
