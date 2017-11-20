class WechatinfosController < ApplicationController
  before_action :set_wechatinfo, only: [:show, :edit, :update, :destroy]

  # GET /wechatinfos
  # GET /wechatinfos.json
  def index
    @wechatinfos = Wechatinfo.all
  end

  # GET /wechatinfos/1
  # GET /wechatinfos/1.json
  def show
  end

  # GET /wechatinfos/new
  def new
    @wechatinfo = Wechatinfo.new
  end

  # GET /wechatinfos/1/edit
  def edit
  end

  # POST /wechatinfos
  # POST /wechatinfos.json
  def create
    @wechatinfo = Wechatinfo.new(wechatinfo_params)

    respond_to do |format|
      if @wechatinfo.save
        format.html { redirect_to @wechatinfo, notice: 'Wechatinfo was successfully created.' }
        format.json { render :show, status: :created, location: @wechatinfo }
      else
        format.html { render :new }
        format.json { render json: @wechatinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wechatinfos/1
  # PATCH/PUT /wechatinfos/1.json
  def update
    respond_to do |format|
      if @wechatinfo.update(wechatinfo_params)
        format.html { redirect_to @wechatinfo, notice: 'Wechatinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @wechatinfo }
      else
        format.html { render :edit }
        format.json { render json: @wechatinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wechatinfos/1
  # DELETE /wechatinfos/1.json
  def destroy
    @wechatinfo.destroy
    respond_to do |format|
      format.html { redirect_to wechatinfos_url, notice: 'Wechatinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wechatinfo
      @wechatinfo = Wechatinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wechatinfo_params
      params.fetch(:wechatinfo, {})
    end
end
