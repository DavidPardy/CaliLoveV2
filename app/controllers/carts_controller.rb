class CartsController < InheritedResources::Base
  def show
    begin
      @cart = Cart.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to root_url, notice: 'Invalid cart'
    else
      respond_to do |format|
        format.html
        format.json { render json: @cart }
      end
    end
  end

  # def destroy
  #   @cart = current_cart
  #   @cart.destroy
  #   session[:cart_id] = nil
  #   respond_to do |format|
  #     format.html { redirect_to products_url }
  #     format.json { head :ok }
  #   end
  # end
end
