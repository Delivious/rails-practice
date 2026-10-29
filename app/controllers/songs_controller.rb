class SongsController < ApplicationController
    def index
       @var = Song.all
    end
    def search
        puts("**************")
        puts(params)
        puts("**************")
        @var = Song.where(:name).includes(params[:query]).all
    end
end
