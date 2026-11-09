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
    def new
        @song = Song.new
    end
    def create 
        @song = Song.new((song_params))
        if @song.save
            redirect_to @song
        else
            render :new, status: :unporcessable_entity
        end
    end
    private
        def song_params
            params.expect(song: [:name, :author, :desc])
        end
end
