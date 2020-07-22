class Encounter < ActiveRecord::Base
    belongs_to :user

    validates_presence_of :title, :description, :urgency, :dept
end
