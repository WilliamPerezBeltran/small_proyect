class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to products_path, notice: "El producto fue publicado con éxito"

    else
      render 'new'
      
    end
  end

  def edit
    @product = Product.find(params[:id])

  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path, notice:'el producto se ha modificado con éxito'
    else
      render 'edit'
      
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, notice: 'El producto ha sido eliminado correctamente'
  end

  private 
    def product_params
      params.require(:product).permit(:name,:url,:description)
    end
end
