class PostitsController < ApplicationController

    def create
        respond_to do |format|
            @game = Game.find params[:game_id]
            @postit = Postit.new postits_params
            if @postit.save
                format.turbo_stream 
            else
                format.turbo_stream{ render turbo_stream: turbo_stream.replace("new_postit", partial: "postits/form", locals: {  postit: @postit, game: @game }) }
            end
        end
    end

    def destroy
        @postit = Postit.find(params[:id])
        @postit.destroy
        respond_to do |format|
          format.turbo_stream
          format.html { redirect_to game_path(@postit.game.slug), notice: 'Todo was successfully destroyed.' }
          format.json { head :no_content }
        end
    end

    private

    def postits_params 
        params.require(:postit).permit(:name, :color , :game_id, :game_step_id, :description)
    end

end
