class ConfiguracoesController < ApplicationController
  before_filter  :load_resources
  def index
    @configuracaos = Configuracao.all(:conditions => ["unidade_id = ?", current_user.unidade_id])
  end

  def show
    @configuracao = Configuracao.find(params[:id])
  end

  def new
    @configuracao = Configuracao.new
  end

  def create   
    @configuracao = Configuracao.new(params[:configuracao])
    @configuracao.unidade_id = current_user.unidade_id
    if @configuracao.save
      flash[:notice] = "CADASTRADO COM SUCESSO."
      Log.gera_log("CRIACAO", "CONFIGURACAO", current_user.id,@configuracao.id)
      redirect_to @configuracao
    else
      render :action => 'new'
    end
  end

  def edit
    @configuracao = Configuracao.find(params[:id])
  end

  def update
    @configuracao = Configuracao.find(params[:id])
    if @configuracao.update_attributes(params[:configuracao])
      flash[:notice] = "CADASTRADO COM SUCESSO."
      redirect_to @configuracao
    else
      render :action => 'edit'
    end
  end

  def destroy
    @configuracao = Configuracao.find(params[:id])
    @configuracao.destroy
    flash[:notice] = "EXCLUIDO COM SUCESSO."
    redirect_to configuracaos_url
  end

  def ambiente
    @ambiente = Ambiente.new
  end


  def create_ambiente
    @ambiente = Ambiente.find_or_create_by_user_id(current_user.id)
    @ambiente.unidade = current_user.unidade_id
    @ambiente.update_attributes(params[:ambiente])
    render :js => "$.fn.colorbox.close()"      
  #    redirect_to show_ambiente_path(@ambiente)
  #  else
  #    render :action => 'ambiente'
    
  end

  def show_ambiente
    @ambiente = Ambiente.find(params[:id])
  end

  def exibe_ambiente
    @ambiente = Ambiente.find_all_by_user_id(current_user.id).last
    render :update do |page|
      page.replace_html 'ambiente', :partial => "show"
    end
  end


protected
  def load_resources
    if current_user.unidade_id == 53
      @classes = Aluno.all(:select => "id_classe, classe_descricao, classe_ano, id_escola",:conditions => ["classe_ano = ?", Date.today.strftime("%Y").to_i], :group => ["id_classe,classe_descricao, classe_ano,id_escola"] , :order => "classe_descricao")
    else
      @classes = Aluno.all(:select => "id_classe, classe_descricao, classe_ano, id_escola",:conditions => ["classe_ano = ? and id_escola = ?", Date.today.strftime("%Y").to_i, current_user.unidade.unidades_gpd_id], :group => ["id_classe,classe_descricao, classe_ano,id_escola"] , :order => "classe_descricao")
    end
     #@disponiveis = Dpu.all(:include => [:livro =>[:identificacao]],:conditions => ["(dpus.livro_id is not null) and dpus.status = 1 and dpus.unidade_id = ?", current_user.unidade_id],:order => "identificacaos.livro ASC")
  end


end
