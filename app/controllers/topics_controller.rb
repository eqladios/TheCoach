class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  # GET /chapter/id/topics
  # GET /topics.json
  def index
    @chapter = Chapter.find(params[:chapter_id])
    @topics = @chapter.topics
  end

  # GET chapter/1/topics/1
  # GET /topics/1.json
  def show
  end

  # GET chapter/1/topics/new
  def new
    @chapter = Chapter.find(params[:chapter_id])
    @topic = @chapter.topics.build
  end

  # GET chapter/1/topics/1/edit
  def edit
    @chapter = Chapter.find(params[:chapter_id])
    @topic = @chapter.topics.find(params[:id])
  end

  # POST chapter/id/topics
  # POST /topics.json
  def create
    @chapter = Chapter.find(params[:chapter_id])
    @topic = @chapter.topics.build(topic_params)
    respond_to do |format|
      if @topic.save
        format.html { redirect_to @chapter, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @chapter }
      else
        format.html { render :new }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topics/1
  # PATCH/PUT /topics/1.json
  def update
    respond_to do |format|
      if @topic.update(topic_params)
        format.html { redirect_to chapters_path, notice: 'Topic was successfully updated.' }
        format.json { render :show, status: :ok, location: chapters_path }
      else
        format.html { render :edit }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.json
  def destroy
    @topic.destroy
    respond_to do |format|
      format.html { redirect_to chapter_topics_path, notice: 'Topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:number, :title, :htmlContent, :chapterID)
    end
end
