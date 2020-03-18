class Bird < ApplicationRecord
    def index 
        birds = Bird.all 
        render json: birds 
    end
end