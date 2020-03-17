class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds.to_json(except: [:created_at, :name, :updated_at])
  end

  def show
    bird = Bird.all.find_by(id: params[:id])
    if bird
      render json: {id: bird.id, name: bird.name}
    else
      render json: { message: 'Bird not found'}
    end
  end
end