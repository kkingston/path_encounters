class Encounter < ActiveRecord::Base
    validates :title, presence: true
    validates :description, presence: true
    validates :urgency, presence: true
    validates :dept, presence: true

    validates_presence_of :title, :description, :urgency, :dept
end
