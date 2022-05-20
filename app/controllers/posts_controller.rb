class PostsController < ApplicationController
   
    def new
        @post = Post.new
        @post["place_id"] = params["place_id"]
        @place = Place.find_by({ "id" => params["place_id"]})
    end

    def create
        @post = Post.new
        @post["place_id"] = params["post"]["place_id"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["title"] = params["post"]["title"]
        @post["description"] = params["post"]["description"]
        @post.save
        redirect_to  "/places"
    end

end
