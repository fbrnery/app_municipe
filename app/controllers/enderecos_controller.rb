class EnderecosController < ApplicationController
  before_action :set_endereco, only: %i[ show edit update destroy ]

  # GET /enderecos or /enderecos.json
  def index
    @enderecos = Endereco.all
  end

  # GET /enderecos/1 or /enderecos/1.json
  def show
  end

  # GET /enderecos/new
  def new
    @endereco = Endereco.new
  end

  # GET /enderecos/1/edit
  def edit
  end

  # POST /enderecos or /enderecos.json
  def create
    @municipe = Municipe.find(params[:municipe_id])
    @endereco = @municipe.enderecos.create(endereco_params)
    redirect_to municipe_path(@municipe)
  end
  

  # PATCH/PUT /enderecos/1 or /enderecos/1.json
  def update
    respond_to do |format|
      if @endereco.update(endereco_params)
        format.html { redirect_to endereco_url(@endereco), notice: "Endereco was successfully updated." }
        format.json { render :show, status: :ok, location: @endereco }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enderecos/1 or /enderecos/1.json
  def destroy
    @municipe = Municipe.find(params[:municipe_id])
    @endereco = @municipe.enderecos.find(params[:id])
    @endereco.destroy
      redirect_to municipe_path(@municipe)
    end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endereco
      @endereco = Endereco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def endereco_params
      params.require(:endereco).permit(:cep, :logradouro, :complemento, :bairro, :cidade, :uf, :ibge, :municipe_id)
    end
end
