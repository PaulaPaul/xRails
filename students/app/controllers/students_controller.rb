class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def show_querystring
    @firstname = params[:firstname]
    @lastname = params[:lastname]
    @number_of_rooms = params[:quantity]
  end

  def show_route_id
    if !defined? params[:id]
      @id = -1
    else
      @id = params[:id].to_i
    end

    @students = Student.all

    if @id > @students.count
      @exists = false
    else
      @exists = true
      @student = Student.find(@id)
    end

  end

  def find_by_form

  end

  def display_by_form
    @students = Student.all
    @exists = false

    if params[:input].to_i > 0 && params[:input].to_i <= @students.count
      @exists = true
      @student = Student.find(params[:input].to_i)  
    end    

  end

  def choose_color
  
  end

  def set_color
    @color = params[:color]

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :email)
    end
end
