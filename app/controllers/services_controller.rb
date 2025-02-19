class ServicesController < ApplicationController
  # helper Kaminari::Helpers::HelperMethods

  before_action :set_service, only: %i[ show update destroy ]

  # GET /services
  def index
    # @services = Service.select(:id, :name).page(params[:page]).per(:default_per_page)
    @q = Service.ransack(params[:q])
    @services = @q.result(distinct: true).page(params[:page])
    # @services = Service.page params[:page]

    respond_to do |format|
      format.html
      format.json { render json: @services }
    end
  end

  def new
    @service = Service.new
  end
  
  # GET /services/1
  def show
    render json: @service
  end

  # POST /services
  def create
    @service = Service.new(service_params)

    if @service.save
      respond_to do |format|
        format.html redirect_to @service
        format.json { render json: @service, status: :created, location: @service }
      end
    else
      respond_to do |format|
        format.html {render :new, status: :unprocessable_entity}
        format.json{ render json: @service.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /services/1
  def update
    if @service.update(service_params)
      render json: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /services/1
  def destroy
    @service.destroy!
  end
  
  def edit
    @service = Service.find(params[:id])
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def service_params
      params.expect(service: [ :name, :establishment_id ])
    end
end
