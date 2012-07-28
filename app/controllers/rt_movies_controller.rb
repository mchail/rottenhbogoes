class RtMoviesController < ApplicationController
  # GET /rt_movies
  # GET /rt_movies.json
  def index
    @rt_movies = RtMovie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rt_movies }
    end
  end

  # GET /rt_movies/1
  # GET /rt_movies/1.json
  def show
    @rt_movie = RtMovie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rt_movie }
    end
  end

  # GET /rt_movies/new
  # GET /rt_movies/new.json
  def new
    @rt_movie = RtMovie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rt_movie }
    end
  end

  # GET /rt_movies/1/edit
  def edit
    @rt_movie = RtMovie.find(params[:id])
  end

  # POST /rt_movies
  # POST /rt_movies.json
  def create
    @rt_movie = RtMovie.new(params[:rt_movie])

    respond_to do |format|
      if @rt_movie.save
        format.html { redirect_to @rt_movie, notice: 'Rt movie was successfully created.' }
        format.json { render json: @rt_movie, status: :created, location: @rt_movie }
      else
        format.html { render action: "new" }
        format.json { render json: @rt_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rt_movies/1
  # PUT /rt_movies/1.json
  def update
    @rt_movie = RtMovie.find(params[:id])

    respond_to do |format|
      if @rt_movie.update_attributes(params[:rt_movie])
        format.html { redirect_to @rt_movie, notice: 'Rt movie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rt_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rt_movies/1
  # DELETE /rt_movies/1.json
  def destroy
    @rt_movie = RtMovie.find(params[:id])
    @rt_movie.destroy

    respond_to do |format|
      format.html { redirect_to rt_movies_url }
      format.json { head :no_content }
    end
  end
end
