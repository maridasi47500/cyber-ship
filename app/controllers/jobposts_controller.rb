class JobpostsController < ApplicationController
  before_action :set_jobpost, only: %i[ show edit update destroy ]

  # GET /jobposts or /jobposts.json
  def index
    @jobposts = Jobpost.all
  end

  # GET /jobposts/1 or /jobposts/1.json
  def show
  end

  # GET /jobposts/new
  def new
    @jobpost = Jobpost.new
  end

  # GET /jobposts/1/edit
  def edit
  end

  # POST /jobposts or /jobposts.json
  def create
    @jobpost = Jobpost.new(jobpost_params)

    respond_to do |format|
      if @jobpost.save
        format.html { redirect_to @jobpost, notice: "Jobpost was successfully created." }
        format.json { render :show, status: :created, location: @jobpost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jobpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobposts/1 or /jobposts/1.json
  def update
    respond_to do |format|
      if @jobpost.update(jobpost_params)
        format.html { redirect_to @jobpost, notice: "Jobpost was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @jobpost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jobpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobposts/1 or /jobposts/1.json
  def destroy
    @jobpost.destroy!

    respond_to do |format|
      format.html { redirect_to jobposts_path, notice: "Jobpost was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobpost
      @jobpost = Jobpost.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def jobpost_params
      params.expect(jobpost: [ :user_id, :title, :content, :pic ])
    end
end
