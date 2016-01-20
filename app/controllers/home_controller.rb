class HomeController < ApplicationController
  def index
   
    array_of_gigs = Gig.get_random_gigs
    @gig_1 = Gig.find(array_of_gigs[0])
    @gig_2 = Gig.find(array_of_gigs[1])
    @gig_3 = Gig.find(array_of_gigs[2])
    @gig_4 = Gig.find(array_of_gigs[3])

  end
end