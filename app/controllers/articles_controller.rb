class ArticlesController < ApplicationController
  before_action :set_article, only: %w[ show update destroy ]

  # GET /articles
  def index
    @articles = Article.page(params[:page]).per(params[:page_size])
  end

  # GET /articles/1
  def show
  end

  # POST /articles
  def create
    @article = Article.new(article_params)
  
    if @article.save
      render :show, status: :created, location: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1
  def update
    
    if @article.update(article_params)
      render :show, status: :ok, location: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      article = params.require(:article).permit(
        Article.column_names - ["id, created_at", "updated_at"],
      ).merge({
        launch_ids: params[:launch_ids],
        event_ids: params[:event_ids]
      })
    end
end
