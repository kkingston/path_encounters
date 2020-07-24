
class EncountersController < ApplicationController

    # READ Route
    get '/encounters' do 
        @encounters = current_user.encounters
        erb :'/encounters/index'
    end 

    # CREATE Route
    get '/encounters/new' do
        @encounter = Encounter.new
        erb :'encounters/new'
    end

    # CREATE Route
    post '/encounters' do
        @encounter = Encounter.new(params[:encounter])
        if @encounter.save
            redirect '/encounters'
        else
            erb :'encounters/new'
        end
    end

    # UPDATE Route
    get '/encounters/:id/edit' do
        set_encounter
        erb :'/encounters/edit'
    end

      # READ Route
    get '/encounters/:id' do
        set_encounter
        if @encounter 
            erb :'encounters/details'
        else 
            redirect '/encounters'
        end
    end

    # UPDATE Route
    patch '/encounters/:id' do
        set_encounter
        if @encounter.update(
                    title: params[:encounter][:title],
                    description: params[:encounter][:description],
                    urgency: params[:encounter][:urgency],
                    dept: params[:encounter][:dept],
                    status: params[:encounter][:status]
                )
            redirect "/encounters/#{@encounter.id}"
        else 
            erb :'todos/edit'
        end
    end 

    # DESTROY Route
    delete '/encounters/:id' do
        set_encounter
        @encounter.destroy 
        redirect '/encounters'
    end


    private 
        def set_encounter
            @encounter = Encounter.find_by_id(params[:id])
        end
    
end

