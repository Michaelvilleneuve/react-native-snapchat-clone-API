class SnapsController < ApplicationController
  before_action :set_snap, only: [:show, :update, :destroy]

  # GET /snaps
  # GET /snaps.json
  def index
    @snaps = Snap.order(created_at: :desc).limit(20).all
  end

  # GET /snaps/1
  # GET /snaps/1.json
  def show
  end

  # POST /snaps
  # POST /snaps.json
  def create
    @snap = Snap.new(snap_params)
    @snap.user = User.first

    if @snap.save
      render :show, status: :created, location: @snap
    else
      render json: @snap.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /snaps/1
  # PATCH/PUT /snaps/1.json
  def update
    if @snap.update(snap_params)
      render :show, status: :ok, location: @snap
    else
      render json: @snap.errors, status: :unprocessable_entity
    end
  end

  # DELETE /snaps/1
  # DELETE /snaps/1.json
  def destroy
    @snap.update(viewed: true)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snap
      @snap = Snap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snap_params
      params.require(:snap).permit(:image, :recipient_id)
    end
end
