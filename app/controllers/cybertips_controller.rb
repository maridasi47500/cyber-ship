class CybertipsController < ApplicationController
  before_action :set_cybertip, only: %i[ show edit update destroy ]

  # GET /cybertips or /cybertips.json
  def index
    @cybertips = Cybertip.all
  end

  # GET /cybertips/1 or /cybertips/1.json
  def show
  end

  # GET /cybertips/new
  def new
    @cybertip = Cybertip.new
  end

  # GET /cybertips/1/edit
  def edit
  end

  # POST /cybertips or /cybertips.json
  def create
    @cybertip = Cybertip.new(cybertip_params)

    respond_to do |format|
      if @cybertip.save
        format.html { redirect_to @cybertip, notice: "Cybertip was successfully created." }
        format.json { render :show, status: :created, location: @cybertip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cybertip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cybertips/1 or /cybertips/1.json
  def update
    respond_to do |format|
      if @cybertip.update(cybertip_params)
        format.html { redirect_to @cybertip, notice: "Cybertip was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @cybertip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cybertip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cybertips/1 or /cybertips/1.json
  def destroy
    @cybertip.destroy!

    respond_to do |format|
      format.html { redirect_to cybertips_path, notice: "Cybertip was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cybertip
      @cybertip = Cybertip.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def cybertip_params
      params.expect(cybertip: [ :user_id, :pic, :title, :content, :post_id ])
    end
end
