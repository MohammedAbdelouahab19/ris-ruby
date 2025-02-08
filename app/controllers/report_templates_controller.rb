class ReportTemplatesController < ApplicationController
  before_action :set_report_template, only: %i[ show update destroy ]

  # GET /report_templates
  def index
    @report_templates = ReportTemplate.all

    render json: @report_templates
  end

  # GET /report_templates/1
  def show
    render json: @report_template
  end

  # POST /report_templates
  def create
    @report_template = ReportTemplate.new(report_template_params)

    if @report_template.save
      render json: @report_template, status: :created, location: @report_template
    else
      render json: @report_template.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /report_templates/1
  def update
    if @report_template.update(report_template_params)
      render json: @report_template
    else
      render json: @report_template.errors, status: :unprocessable_entity
    end
  end

  # DELETE /report_templates/1
  def destroy
    @report_template.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_template
      @report_template = ReportTemplate.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def report_template_params
      params.expect(report_template: [ :title, :content, :room_id ])
    end
end
