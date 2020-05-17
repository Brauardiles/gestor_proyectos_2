class ProyectsController < ApplicationController
  http_basic_authenticate_with name:"desafiovamoscontodo", password: "XAHTJEAS23123%23", only:
  :index

  before_action :set_proyect, only: [:show, :edit, :update, :destroy]

  def index
    @q = Proyect.ransack(params[:q])
    @proyects = @q.result(distinct: true)
  end

  def new
    @proyect = Proyect.new
  end

  def create
    @proyect = Proyect.new(proyect_params)
    if @proyect.save
      redirect_to proyects_path, notice: 'Proyecto creado exitosamente'
    else
      flash.now[:alert] = 'el Proyecto no pudo ser creado'
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @proyect.update(proyect_params)
      redirect_to proyects_path, notice: 'Proyecto actualizado'
    else
      flash.now[:alert] = 'Proyecto no pudo actualizarse'
    end
  end

  private
  def set_proyect
    @proyect = Proyect.find(params[:id])
  end

  def proyect_params
    params.require(:proyect).permit(:name, :description, :initial_date, :final_date, :status)
  end
end
