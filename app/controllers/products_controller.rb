# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    products = Product.all
    @products = []
    products.each do |product|
      productWithImage = [product, []]
      product.images.each do |image|
        productWithImage[1].push(image.url)
      end
      @products.push(productWithImage)
    end
    render json: { products: @products }
  end

  def show
    product = Product.find(params[:id])
    render json: { product: product.images[0].url }
  end
end
