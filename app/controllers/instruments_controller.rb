class InstrumentsController < ApplicationController
    def index
        @instruments = Instrument.all
    end


    def show

    end

    private
    def set_artist
        @instrument = Instrument.find(params[:id])
    end
    
    def instrument_params
        params.require(:instrument).permit(:name, :classification)
    end
end
