class AssuntosController < ApplicationController
  before_filter :login_required
  before_filter :load_resources

 def index
  unless params[:search].present?
    if params[:type_of].to_i == 3
      @contador = Assunto.all.count
      @assuntos = Assunto.paginate :all,:page => params[:page], :order => 'descricao ASC', :per_page => 22
      render :update do |page|
        page.replace_html 'assuntos', :partial => "assuntos1"
      end
    end
  else
    if params[:type_of].to_i == 1
      @contador = Assunto.all(:conditions => ["descricao like ?", "%" + params[:search].to_s + "%"]).count
      @assuntos = Assunto.paginate :all, :page => params[:page], :per_page => 20, :conditions => ["descricao like ?", "%" + params[:search].to_s + "%"],:order => 'descricao ASC'
      render :update do |page|
        page.replace_html 'assuntos', :partial => "assuntos1"
      end
    end
  end
 end

  def show
    @assunto = Assunto.find(params[:id])
  end

  def new
    @assunto = Assunto.new
  end

  def create
    @assunto = Assunto.new(params[:assunto])
    if @assunto.save
      flash[:notice] = "CADASTRADO COM SUCESSO."
      render :action => 'livros/new'
      
    else
      render :action => 'new'
    end
  end

  def edit
    @assunto = Assunto.find(params[:id])
  end

  def update
    @assunto = Assunto.find(params[:id])
    if @assunto.update_attributes(params[:assunto])
      flash[:notice] = "CADASTRADO COM SUCESSO."
      redirect_to @assunto
    else
      render :action => 'edit'
    end
  end

  def destroy
    @assunto = Assunto.find(params[:id])
    @assunto.destroy
    flash[:notice] = "EXCLUIDO COM SUCESSO."
    redirect_to assuntos_url
  end

def consulta_assunto
       session[:assunto] = params[:assunto_id]
       @assuntos = Assunto.find(session[:assunto])
       render :update do |page|
         page.replace_html 'dadosassuntos', :partial => "assuntos"
      end
  end

def consulta_assunto_livro
       session[:assunto] = params[:assunto_id]
       @assuntos = Assunto.find(session[:assunto])
       render :update do |page|
         page.replace_html 'dadosassuntos', :partial => "assuntos_livro"
      end
  end
protected

  def load_resources
        @assuntos= Assunto.all(:order => 'descricao ASC')
  end
end
