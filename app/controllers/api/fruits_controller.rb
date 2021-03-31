class Api::FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
    render "index.json.jb"
  end

  def show
    @fruit = Fruit.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @fruit = Fruit.new({
      name: params[:name],
      tastiness: params[:tastiness],
      color: params[:color],

    })
    @fruit.save

    render "show.json.jb"
  end

  def update
    @fruit = Fruit.find(params[:id])
    @fruit.update ({
      name: params[:name] || @fruit.name,
      tastiness: params[:tastiness] || @fruit.tastiness,
      color: params[:color] || @fruit.color,
    })
    @fruit.save

    render "show.json.jb"
  end

  def delete
    fruit = Fruit.find(params[:id])
    fruit.destroy
    render json: { message: "the fruit #{fruit.name} has been destroyed" }
  end
end
