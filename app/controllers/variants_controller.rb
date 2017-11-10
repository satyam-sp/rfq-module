class VariantsController < ApplicationController
  before_action :set_variant, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @variants = Variant.all
    respond_with(@variants)
  end

  def show
    respond_with(@variant)
  end

  def new
    @variant = Variant.new
    respond_with(@variant)
  end

  def edit
  end

  def create
    @variant = Variant.new(variant_params)
    @variant.save
    respond_with(@variant)
  end

  def update
    @variant.update(variant_params)
    respond_with(@variant)
  end

  def destroy
    @variant.destroy
    respond_with(@variant)
  end

  private
    def set_variant
      @variant = Variant.find(params[:id])
    end

    def variant_params
      params.require(:variant).permit(:name, :price, :cost, :product_id, :color)
    end
end
