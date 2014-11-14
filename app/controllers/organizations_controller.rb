class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.order(:id)
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    @organization.save
    redirect_to organizations_path, notice: "Organization saved successfully"
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def update
    @organization = Organization.find(params[:id])
    @organization.update(organization_params)
    redirect_to organizations_path, notice: "Organization updated successfully"
  end

  private

  def organization_params
    params.require(:organization).permit(:name)
  end

end
