class MoviesController < ApplicationController
  #filter
  has_scope :recent #by most recent add
  has_scope :released_desc #by released_years desc
  has_scope :released_asc #by released_years asc
  has_scope :price_max #by price_max
  has_scope :prix_min #by price_min

  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  # GET /movies_url
  # GET /movies.json
  def index
    #get all catégories
    @categories = Category.all
    #if params search
    if params[:search]
      @movies = Movie.search(params[:search]).order("created_at DESC")    
    else
      #filter by 
      case params[:filter]
      when "Ajout récent" 
        @movies = Movie.recent
      when "Par date décroisssante"
        @movies = Movie.released_desc
      when "Par date croisssante"
        @movies = Movie.released_asc
      when "Prix min"
        @movies = Movie.price_min(25)
      when "Prix max"
        @movies = Movie.price_max(30)
      #else get all movies not filtered or searched
      else
        @movies = apply_scopes(Movie).all
      end
    end
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @order_item = current_order.order_items.new
  end

  # GET /movies/new
  def new
    @movie = Movie.new
    @movie.category_id = params[:category_id]
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    @movie = Movie.find(params[:id])
    @movie.category_id = params[:category_id]
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :released_year, :price, :description, :category_id, :image)
    end
end
