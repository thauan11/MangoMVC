class MangosController < ApplicationController
  before_action :set_mango, only: [:show, :edit, :update, :destroy]

  def index
    @mangos = Mango.all
  end

  def show;  end

  def new
    @mango = Mango.new
  end

  def create
    @mango = Mango.new(params_mango)
    if @mango.save
      redirect_to mangos_url, notice: "Mango adicionado!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit;  end

  def update
    @mango = Mango.find(params[:id])
    if @mango.update(params_mango)
      redirect_to mango_path, notice: "Mango atualizado!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @mango = Mango.find(params[:id])
    if @mango.destroy
      redirect_to mangos_url, notice: "Mango apagado!"
    else
      redirect_to mango, notice: "Algo deu errado!"
    end
  end


  private
  def set_mango
    @mango = Mango.find(params[:id])
  end

  def params_mango
    params.require(:mango).permit(:descricao, :valor, :banco)
  end

end
