class EventsController < ApplicationController
  def index
    @events = ["BugSmash", "Hackathon", "Rails User Group", "Kata Camp"]
  end
end
