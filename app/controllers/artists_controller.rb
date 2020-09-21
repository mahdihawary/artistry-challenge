class ArtistsController < ApplicationController
    before_action :set_artist, only: [:show, :edit, :update]
    def index
        @artists = Artist.all
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        if @artist.valid?
            redirect_to artist_path(@artist)
        else 
            flash[:my_errors] = @artist.errors.full_messages
            redirect_to new_artist_path
        end

    end

    def show

    end

    def edit 
    end

    def update
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end


    private
    def set_artist
        @artist = Artist.find(params[:id])
    end
    
    def artist_params
        params.require(:artist).permit(:name, :age, :title, :instrument_ids)
    end

end
