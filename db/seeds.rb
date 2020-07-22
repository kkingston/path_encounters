# (1..50).to_a.each do |num|
#     Encounter.create(title: "Encounter #{num}", 
#     description: "This is our lengthy concern we want to address to a department.", 
#     urgency: ["STAT", "Rush", "Casual"].sample,
#     dept: ["IT", "HR", "Management", "Surgical", "Cytology", "Histology", "Other"].sample,
#     status: [true, false].sample )
# end

Encounter.all.each do |encounter|
    encounter.update(user_id: [1..5].sample)
end 



