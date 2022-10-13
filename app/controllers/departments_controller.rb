class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end

  def new
    @department = Department.new
  end

  # GET /departments/:id
  def show
    @department = Department.find(params[:id])
  end

  def create
    @department = Department.new(department_params)

    if @department.save
      # redirect_to department_path(@department)
      # redirect_to @department
      redirect_to "/departments/#{@department.id}"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET departments/:id
  def edit
    @department = Department.find(params[:id])
    # render edit
  end

  # PATCH /departments/:id
  def update
    @department = Department.find(params[:id])
    if @department.update(department_params)
      redirect_to departments_path
    else
      render "edit", status: :unprocessable_entity
    end
  end

  # DELETE /departments/:id
  def destroy
    @department = Department.find(params[:id])
    # Para no ignorar la validación se usara "destroy" en vez de "delete"
    @department.destroy

    redirect_to departments_path, status: :see_other
  end

  private

  def department_params
    params.require(:department).permit(:name, :description)
  end
end
