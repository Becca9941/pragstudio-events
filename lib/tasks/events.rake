namespace :events do
  desc "Seeds events"
  task seed_events: :environment do
    Event.destroy_all

    Event.create!([{
                     name: "BugSmash",
                     location: "Denver, CO",
                     price: 0.00,
                     description: "A fun evening bug smashing!",
                     starts_at: "2023-07-10"
                   },
                   {
                     name: "Hackathon",
                     location: "Texas",
                     price: 15.00,
                     description: "Hunker down and hack away!",
                     starts_at: "2023-07-31"
                   },
                   {
                     name: "Kata Camp",
                     location: "Dallas, TX",
                     price: 75.00,
                     description: "Practice your craft!",
                     starts_at: "2023-08-31"
                   }])

    p "Created #{Event.count} Events"
  end
end
