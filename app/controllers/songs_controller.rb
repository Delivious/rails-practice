class SongsController < ApplicationController
    def index
       @songs = Song.all
    end
    def search
        puts("**************")
        puts(params)
        puts("**************")
        @songs = Song.where("name LIKE ?", "%" + params[:query] + "%").all
    end
    def show
        puts("**************")
        puts(params)
        puts("**************")
        @song = Song.find(params[:id])
    end
end
