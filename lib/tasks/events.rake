namespace :events do
  desc "Seeds events"
  task seed_events: :environment do
    Event.destroy_all

    Event.create!([{
                     name: "BugSmash",
                     location: "Denver, CO",
                     price: 0.00,
                     description: "A fun evening bug smashing! It's a great way to gen involved in open source projects whether you're reporting bugs, fixing bugs, or even creating a few bugs!",
                     starts_at: "2023-07-10"
                   },
                   {
                     name: "Hackathon",
                     location: "Texas",
                     price: 15.00,
                     description: "Got an awesome app idea you've been itching o work on? Hunker down and hack away! This in an intense, focused day of hacking on anything you want. The entry fee goes towards a bounty of cash and prizes for winners in a variety of categories.",
                     starts_at: "2023-07-31"
                   },
                   {
                     name: "Kata Camp",
                     location: "Dallas, TX",
                     price: 75.00,
                     description: "Kata Camp is where developers go to practice their craft without interruptions. Skip the status reports and stand-up meetings of a typical project. Just get 'er done! Price includes a buffet lunch and leather-bound journal to record you kata achievements.",
                     starts_at: "2023-08-31"
                   }])

    p "Created #{Event.count} Events"
  end
end
