class HomeController < ApplicationController
  def index
    @orders = Order.all
    @order = Order.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :count, :adress, :user_name, :telephone)
    end
end
