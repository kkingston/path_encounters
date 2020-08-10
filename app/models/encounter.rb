class Encounter < ActiveRecord::Base
    #creates a method that returns the USER that this encounter belongs to. 
    belongs_to :user

    validates_presence_of :title, :description, :urgency, :dept
end
