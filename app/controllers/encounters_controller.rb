
class EncountersController < ApplicationController

    # READ Route
    get '/encounters' do 
        @encounters = Encounter.all 
        erb :'/encounters/index'
    end 

    # CREATE Route
    get '/encounters/new' do
        @encounter = Encounter.new
        erb :'encounters/new'
    end

    # CREATE Route
    post '/encounters' do
        @encounter = Encounter.new(params)
        if @encounter.save
            redirect to '/encounters'
        else
            erb :'encounters/new'
        end
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
    get '/encounters/:id/edit' do
        set_encounter
        erb :'/encounters/edit'
    end

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

    private 
        def set_encounter
            @encounter = Encounter.find_by_id(params[:id])
        end
    
end


# <div>
# <label for="status">Status: </label>
# </div>
# <div>
# <input type="radio" name="encounter[status]" id="complete" value="Complete"<%= 'checked' if @encounter.status == "Complete"%>>
# <label for="complete">Complete</label>

# <input type="radio" name="encounter[status]" id="not_complete" value="Not Complete"<%= 'checked' if @encounter.status == "Not Complete"%>>
# <label for="complete">Not Complete</label>

# </div>