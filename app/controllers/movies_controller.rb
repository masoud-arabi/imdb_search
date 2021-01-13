class MoviesController < ApplicationController

    def index 
      if params[:query].present?
    #     sql_query = " \
    #       movies.title ILIKE :query \
    #       OR movies.syllabus ILIKE :query \
    #       OR directors.first_name ILIKE :query \
    #       OR directors.last_name ILIKE :query \
    #     "
    #     @movies = Movie.joins(:director).where(sql_query, query: "%#{params[:query]}%")
    @movies = Movie.search_by_title_and_synopsis(params[:query])
      else
        @movies = Movie.all
        # params[:query].present? ? @movies = Movie.where("title @@ :query OR syllabus @@ :query", query: "%#{params[:query]}%") : @movies = Movie.all
            # @movies = Movie.where(title: params[:query])

    end
    end

end
