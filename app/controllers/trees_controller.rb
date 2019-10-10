class TreesController < ApplicationController

    def index
        render({json: Tree.all})
    end
end
