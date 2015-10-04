class ContractorsController < ApplicationController
  def show

  end

  def new
    @contractor = Contractor.new
  end

  def create
    @contractor = Contractor.new(contractor_params)
    if @contractor.save
      redirect_to @contractor, notice: 'Contractor created successfully'
    else
      render 'new'
    end
  end

  def contractor_params
    params.require(:contractor).permit(:name, :street, :zip_code, :city, :nip)
  end
end
