class StudentsController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
      @students=Student.all 
      respond_to do |format|
          format.html
          format.json { render json:@students}
      end
  end

  def new
      @student =Student.new
  end

  def create
      @student =Student.new(user_params)
      if @student.save
          redirect_to action: :index
      else
          render :new
      end
  end

  def show
      
  end

  def edit


  end

  def update
      @student.update(user_params)
      if @student.save
          redirect_to action: :index
      else
          render :edit
      end
  end


  def destroy
      @student.delete


  end



  private
  def set_user
      @student=Student.find(params[:id])
  end
  
  def user_params
      params.require(:student).permit(:first_name, :last_name, :gender, :age, :address, :phone)
  end   
end
