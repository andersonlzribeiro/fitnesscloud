class BillingPlansController < ApplicationController
  before_action :set_billing_plan, only: [:show, :edit, :update, :destroy]

  # GET /billing_plans
  # GET /billing_plans.json
  def index
    @billing_plans = BillingPlan.all
  end

  # GET /billing_plans/1
  # GET /billing_plans/1.json
  def show
  end

  # GET /billing_plans/new
  def new
    @billing_plan = BillingPlan.new
  end

  # GET /billing_plans/1/edit
  def edit
  end

  # POST /billing_plans
  # POST /billing_plans.json
  def create
    @billing_plan = BillingPlan.new(billing_plan_params)

    respond_to do |format|
      if @billing_plan.save
        format.html { redirect_to @billing_plan, notice: 'Billing plan was successfully created.' }
        format.json { render action: 'show', status: :created, location: @billing_plan }
      else
        format.html { render action: 'new' }
        format.json { render json: @billing_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billing_plans/1
  # PATCH/PUT /billing_plans/1.json
  def update
    respond_to do |format|
      if @billing_plan.update(billing_plan_params)
        format.html { redirect_to @billing_plan, notice: 'Billing plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @billing_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billing_plans/1
  # DELETE /billing_plans/1.json
  def destroy
    @billing_plan.destroy
    respond_to do |format|
      format.html { redirect_to billing_plans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_plan
      @billing_plan = BillingPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def billing_plan_params
      params.require(:billing_plan).permit(:description, :days, :active)
    end
end
