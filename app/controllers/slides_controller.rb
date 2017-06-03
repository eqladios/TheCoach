class SlidesController < ApplicationController
  before_action :set_slide, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :authorize_admin, only: [:new, :edit, :update, :destroy]
  # GET /slides
  # GET /slides.json
  def index
    @topic = Topic.find(params[:topic_id])
    @slides = @topic.slides
  end

  # GET /slides/1
  # GET /slides/1.json
  def show
  end

  # GET /slides/new
  def new
    @topic = Topic.find(params[:topic_id])
    @slide = @topic.slides.build
  end

  # GET /slides/1/edit
  def edit
    @topic = Topic.find(params[:topic_id])
    @slide = @topic.slides.find(params[:id])
  end

  # POST /slides
  # POST /slides.json
  def create
    @topic = Topic.find(params[:topic_id])
    @slide = @topic.slides.build(slide_params)

    respond_to do |format|
      if @slide.save
        format.html { redirect_to @topic, notice: 'Slide was successfully created.' }
        format.json { render :show, status: :created, location: @topic }
      else
        format.html { render :new }
        format.json { render json: @slide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slides/1
  # PATCH/PUT /slides/1.json
  def update
    respond_to do |format|
      if @slide.update(slide_params)
        format.html { redirect_to topic_slides_path, notice: 'Slide was successfully updated.' }
        format.json { render :show, status: :ok, location: topic_slides_path }
      else
        format.html { render :edit }
        format.json { render json: @slide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slides/1
  # DELETE /slides/1.json
  def destroy
    @slide.destroy
    respond_to do |format|
      format.html { redirect_to topic_slides_path, notice: 'Slide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slide
      @slide = Slide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slide_params
      params.require(:slide).permit(:htmlBody, :topic_id)
    end
end
