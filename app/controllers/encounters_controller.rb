
class EncountersController < ApplicationController

    get '/encounters' do 
        @encounters = Encounter.all 
        erb :'encounters/index'
    end

    get '/encounters/new' do
        erb :'encounters/new'
    end

    post '/encounters' do
    end


    get '/encounters/:id' do
        set_encounter 
        erb :'encounters/show'
    end

    private 
        def set_encounter
            @encounter = Encounter.find_by_id(params[:id])
        end
    
end