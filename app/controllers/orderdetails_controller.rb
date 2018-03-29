class OrderdetailsController < ApplicationController
  before_action :set_orderdetail, only: [:show, :edit, :update, :destroy]

  # GET /orderdetails
  # GET /orderdetails.json
  def index
    @orderdetails = Orderdetail.all
    @drones = Drone.all
    @people = Person.all
    @products = Product.all

  end

  # GET /orderdetails/1
  # GET /orderdetails/1.json
  def show
  end

  # GET /orderdetails/new
  def new
    @orderdetail = Orderdetail.new
  end

  # GET /orderdetails/1/edit
  def edit
  end

  # POST /orderdetails
  # POST /orderdetails.json
  def create

     @order = Order.new(:drone_id => Drone.where('name = :dname', dname: 'No Drone Assigned').first.id, :person_id => params[:orderdetail][:person_id], :status => 1)
     if @order.save
        @orderdetail =  Orderdetail.new(:product_id => params[:orderdetail][:product_id],:quantity => params[:orderdetail][:quantity],:order_id => @order.id)
     
        respond_to do |format|
        if @orderdetail.save
           format.html { redirect_to @orderdetail, notice: 'Orderdetail was successfully created.' }
            format.json { render :show, status: :created, location: @orderdetail }
        else
        format.html { render :new }
        format.json { render json: @orderdetail.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /orderdetails/1
  # PATCH/PUT /orderdetails/1.json
  def update
    respond_to do |format|
      if @orderdetail.update(orderdetail_params)
        format.html { redirect_to @orderdetail, notice: 'Orderdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @orderdetail }
      else
        format.html { render :edit }
        format.json { render json: @orderdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderdetails/1
  # DELETE /orderdetails/1.json
  def destroy
    @orderdetail.destroy
    @order = Order.find(@orderdetail.order_id)
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orderdetails_url, notice: 'Orderdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  #GET /drones
   def assignDrone
    @drone = Drone.find(params[:id])
    @order = Order.where('status = :dstatus', dstatus: 1).first
    
    respond_to do |format|
      format.html { redirect_to orderdetails_url}
      format.json { head :no_content }
    end

   if(@order)
       Thread.new do
         @drone.status = 2
         @drone.save

         if @drone.status = 2
            sleep(8)
            @drone.status = 3
            @drone.save
            7
            @order.status = 2
            @order.drone_id = @drone.id
            @order.save

          end
          if @drone.status = 3
            sleep(8)
            @drone.status = 4
            @drone.save

           end
          
          if @drone.status = 4
            sleep(8)
            @drone.status = 5
            @drone.save
            @order.status = 3
            @order.save
        end
          
          if @drone.status = 5
            sleep(8)
            @drone.status = 6
            @drone.save
        
          end
          if @drone.status = 6
            sleep(8)
            @drone.status = 7
            @drone.save
              
          end
          if @drone.status = 7
            sleep(8)
            @drone.status = 1
            @drone.save
        end

        
       end
   end
 end
    

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderdetail
      @orderdetail = Orderdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orderdetail_params
      params.require(:orderdetail).permit(:person_id, :product_id, :quantity)

    end

end
