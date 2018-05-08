class FavoritesController < ApplicationController
  #before_action :set_favorite, only: [:show, :edit, :update, :destroy]

  # GET /favorites
  # GET /favorites.json
  def index

    @favorites = Favorite.all
    @data = MSF.msf_get_data('mlb', '2017-regular', 'overall_team_standings', 'json', "team" => "" )
    @bteams = @data.fetch('overallteamstandings')
    puts "____________________"
    @ateams = @bteams.fetch('teamstandingsentry')
    @teams = []
    puts "_________________"
      @ateams.each do |obj|
        @teams << obj.select{|el| el == "team"}
        puts @teams
      end
    p @teams
  end

  # GET /favorites/1
  # GET /favorites/1.json
  def show
    
    @user = User.find(params[:id])
    @favorites = @user.favorites
  end

  # GET /favorites/new
  def new
    @favorite = Favorite.new
  end

  # GET /favorites/1/edit
  def edit
  end

  # POST /favorites
  # POST /favorites.json
  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user_id = current_user.id
    if @favorite.save
      redirect_to favorite_path @favorite
    else
      flash['error'] = "Big Error"
      render :index
    end

    #respond_to do |format|
    #  if @favorite.save
    #    format.html { redirect_to @favorite, notice: 'Favorite was    #successfully created.' }
    #    format.json { render :show, status: :created, location: @favorite }
  #    else
    #    format.html { render :new }
    #  format.json { render json: @favorite.errors, status:
    # :unprocessable_entity }
  #    end
  #  end
  end

  # PATCH/PUT /favorites/1
  # PATCH/PUT /favorites/1.json
  def update
    respond_to do |format|
      if @favorite.update(favorite_params)
        format.html { redirect_to @favorite, notice: 'Favorite was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite }
      else
        format.html { render :edit }
        format.json { render json: @favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_to favorites_url, notice: 'Favorite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    #def set_favorite
    #  @favorite = Favorite.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    #{"team":{"ID":"134","City":"Milwaukee","Name":"Brewers","Abbreviation":"MIL"}
    def favorite_params
      params.require(:favorite).permit(:city, :name)
    end
end
