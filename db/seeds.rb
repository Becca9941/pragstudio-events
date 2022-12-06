# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Event.destroy_all

events = Event.create!([
                        {
                          name: "BugSmash",
                          location: "Denver, CO",
                          description: "A fun evening bug smashing! It's a great way to gen involved in open source projects whether you're reporting bugs, fixing bugs, or even creating a few bugs!",
                          starts_at: "2023-07-10",
                          price: 0.00
                        },
                        {
                          name: "Hackathon",
                          location: "Texas",
                          description: "Got an awesome app idea you've been itching o work on? Hunker down and hack away! This in an intense, focused day of hacking on anything you want. The entry fee goes towards a bounty of cash and prizes for winners in a variety of categories.",
                          starts_at: "2023-07-30",
                          price: 15.00
                        },
                        {
                          name: "Kata Camp",
                          location: "Dallas, TX",
                          description: "Kata Camp is where developers go to practice their craft without interruptions. Skip the status reports and stand-up meetings of a typical project. Just get 'er done! Price includes a buffet lunch and leather-bound journal to record you kata achievements.

",
                          starts_at: "2023-08-31",
                          price: 75.00
                        }
                      ])
p "Created #{Event.count} Events"