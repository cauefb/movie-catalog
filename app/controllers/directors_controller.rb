class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)
    if @director.save
      redirect_to @director, notice: 'Director was successfully created.'
    else
      render :new
    end
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])
    if @director.update(director_params)
      redirect_to @director, notice: 'Director was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @director = Director.find(params[:id])
    @director.destroy
    redirect_to directors_url, notice: 'Director was successfully deleted.'
  end

  private

  def director_params
    params.require(:director).permit(:name, :nationality, :birth_date, :favorite_genre)
  end
end
