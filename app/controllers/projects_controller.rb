class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show edit update destroy ]

  def index
    #@projects = Project.all
    if params[:search]
      @projects = Project.search(params[
    :search]).order("created_at DESC")
    else
      @projects = Project.all.order('created_at DESC')
    end
    @pagy, @projects = pagy(@projects)
    if params[:query].present?
      @projects = Project.change(
        "title LIKE ?",
        #name LIKE ? OR
        #body LIKE ?",
        #body::text LIKE ?",
        #{}"%#{params[:query]}%",
        #{}"%#{params[:query]}%",
        "%#{params[:query]}%"
      ).where(active: true)
    end

    if turbo_frame_request?
      render partial: "projects",
      locals: { projects: @projects }
    else
      render :index
    end
  rescue Pagy::OverflowError
    #redirect_to root_path(page: 1)
    params[:page] = 1
    retry
  end

  def show
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: "Project was successfully created." }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: "Project was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @project.destroy!

    respond_to do |format|
      format.html { redirect_to projects_path, notice: "Project was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    def set_project
      @project = Project.find(params.expect(:id))
    end

    def project_params
      params.expect(project: [
    :title, :image, :thumbnail_url,
        :video_url, :body, :pro ])
    end
end
