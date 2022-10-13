class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end

  def new
  end

  # GET /departments/:id
  def show
    @department = Department.find(params[:id])
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
