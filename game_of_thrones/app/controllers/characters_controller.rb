class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
    @houses = House.all.map do |house|
      [house.name, house.id]
    end
  end

  def create
    character = Character.new(character_params)
    character.house_id = params[:house_id]
    character.save!
    redirect_to character
  end

  def edit
    @character = Character.find(params[:id])
    @houses = House.all.map do |house|
      [house.name, house.id]
    end
  end

  def update
    @character = Character.find(params[:id])
    @character.house_id = params[:house_id]
    @character.update!(character_params)
    redirect_to @character
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_path
  end

  private
  def character_params
    params.require(:character).permit(:name, :img_url, :age, :house_id)
  end

end
