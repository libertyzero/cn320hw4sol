require 'spec_helper'

describe MoviesController do

  describe "GET 'same_director'" do
    it "returns http success" do
      get 'same_director'
      response.should be_success
    end
  end

end
