class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  after_action :create_details, only: [:add]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order_details = OrderDetail.where(order_id: params[:id])
  end

  def add
    total_price = 0
    @order = Order.new
    carts = Cart.where( user_id: current_user.id)
    carts.each do |cart|
      total_price = total_price + cart.price
    end

      @order.user_id = current_user.id
      @order.total_price = total_price
      @order.save
      redirect_to orders_path
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
    @order.date_delivered = Time.now

    if @order.save
      redirect_to orders_path
    end
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def create_details
      carts = Cart.where( user_id: current_user.id)
      carts.each do |cart|
        order_detail = OrderDetail.new
        order_detail.order_id = @order.id
        order_detail.product_id =  cart.product_id

        #Descontamos stock
        product = Product.find(cart.product_id)
        product.stock -= 1
        product.save


        order_detail.price =  cart.price
        order_detail.save
        cart.destroy
      end 
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:date_request, :total_price, :date_delivered, :user_id)
    end
end
