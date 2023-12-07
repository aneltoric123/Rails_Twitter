class HashtagtweetsController < ApplicationController
  before_action :set_hashtagtweet, only: %i[ show edit update destroy ]

  # GET /hashtagtweets or /hashtagtweets.json
  def index
    @hashtagtweets = Hashtagtweet.all
  end

  # GET /hashtagtweets/1 or /hashtagtweets/1.json
  def show
  end

  # GET /hashtagtweets/new
  def new
    @hashtagtweet = Hashtagtweet.new
  end

  # GET /hashtagtweets/1/edit
  def edit
  end

  # POST /hashtagtweets or /hashtagtweets.json
  def create
    @hashtagtweet = Hashtagtweet.new(hashtagtweet_params)

    respond_to do |format|
      if @hashtagtweet.save
        format.html { redirect_to hashtagtweet_url(@hashtagtweet), notice: "Hashtagtweet was successfully created." }
        format.json { render :show, status: :created, location: @hashtagtweet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hashtagtweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hashtagtweets/1 or /hashtagtweets/1.json
  def update
    respond_to do |format|
      if @hashtagtweet.update(hashtagtweet_params)
        format.html { redirect_to hashtagtweet_url(@hashtagtweet), notice: "Hashtagtweet was successfully updated." }
        format.json { render :show, status: :ok, location: @hashtagtweet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hashtagtweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hashtagtweets/1 or /hashtagtweets/1.json
  def destroy
    @hashtagtweet.destroy!

    respond_to do |format|
      format.html { redirect_to hashtagtweets_url, notice: "Hashtagtweet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hashtagtweet
      @hashtagtweet = Hashtagtweet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hashtagtweet_params
      params.require(:hashtagtweet).permit(:hashtag_id, :tweet_id)
    end
end
