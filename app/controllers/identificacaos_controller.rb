class IdentificacaosController < ApplicationController
  def index
    @identificacaos = Identificacao.paginate :page => params[:page], :order => 'livro ASC', :per_page => 20
   
  end

  def show
    @identificacao = Identificacao.find(params[:id])
  end

  def new
    @identificacao = Identificacao.new
  end

  def create
    @identificacao = Identificacao.new(params[:identificacao])
    if @identificacao.save
      flash[:notice] = "CASTRADO COM SUCESSO."
      redirect_to @identificacao
    else
      render :action => 'new'
    end
  end

  def edit
    @identificacao = Identificacao.find(params[:id])
  end

  def update
    @identificacao = Identificacao.find(params[:id])
    if @identificacao.update_attributes(params[:identificacao])
      flash[:notice] = "CASTRADO COM SUCESSO."
      redirect_to @identificacao
    else
      render :action => 'edit'
    end
  end

  def destroy
    @identificacao = Identificacao.find(params[:id])
    @identificacao.destroy
    flash[:notice] = "EXCLUIDO COM SUCESSO."
    redirect_to identificacaos_url
  end

def consulta_tit
  
  unless params[:search].present?
    if params[:type_of].to_i == 3
      @contador = Identificacao.all(:include => [:livros => [:localizacao]], :conditions => ["localizacoes.unidade_id = ?", current_user.unidade_id]).count
      @identificacaos = Identificacao.paginate :all, :include => [:livros => [:localizacao]], :conditions => ["localizacoes.unidade_id = ?", current_user.unidade_id],:page => params[:page], :order => 'livro ASC', :per_page => 20
      render :update do |page|
        page.replace_html 'titulos', :partial => "titulos"
      end
    end
  else
    if params[:type_of].to_i == 1
      @contador = Identificacao.all(:include => [:livros => [:localizacao]],:conditions => ["livro like ? and localizacoes.unidade_id = ?", "%" + params[:search].to_s + "%",current_user.unidade_id]).count
      @identificacaos = Identificacao.paginate :all,:include => [:livros => [:localizacao]], :page => params[:page], :per_page => 20, :conditions => ["livro like ?  and localizacoes.unidade_id = ?", "%" + params[:search].to_s + "%",current_user.unidade_id],:order => 'livro ASC'
      render :update do |page|
        page.replace_html 'titulos', :partial => "titulos"
      end
      else if params[:type_of].to_i == 2
        @contador = Identificacao.all(:include => [:livros => [:localizacao]],:conditions => ["subtitulo like ? and localizacoes.unidade_id = ?", "%" + params[:search].to_s + "%", current_user.unidade_id]).count
        @identificacaos = Identificacao.paginate :all,:include => [:livros => [:localizacao]], :page => params[:page], :per_page => 20, :conditions => ["subtitulo like ? and localizacoes.unidade_id = ?", "%" + params[:search].to_s + "%", current_user.unidade_id],:order => 'livro ASC'
        render :update do |page|
          page.replace_html 'titulos', :partial => "titulos"
        end
      end
    end
  end
end
end