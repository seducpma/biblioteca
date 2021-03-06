class CantoresController < ApplicationController

  before_filter :login_required
  before_filter :load_resources

  # GET /cantores
  # GET /cantores.xml
  def index
    @cantores = Cantor.paginate :page => params[:page], :order => 'nome ASC', :per_page => 20
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cantores }
    end
  end

  # GET /cantores/1
  # GET /cantores/1.xml
  def show
    @cantor = Cantor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cantor }
    end
  end

  # GET /cantores/new
  # GET /cantores/new.xml
  def new
    @cantor = Cantor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cantor }
    end
  end

  # GET /cantores/1/edit
  def edit
    @cantor = Cantor.find(params[:id])
  end

  # POST /cantores
  # POST /cantores.xml
  def create
    @cantor = Cantor.new(params[:cantor])

    respond_to do |format|
      if @cantor.save
        flash[:notice] = 'Cantor was successfully created.'
        format.html { redirect_to(@cantor) }
        format.xml  { render :xml => @cantor, :status => :created, :location => @cantor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cantor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cantores/1
  # PUT /cantores/1.xml
  def update
    @cantor = Cantor.find(params[:id])

    respond_to do |format|
      if @cantor.update_attributes(params[:cantor])
        flash[:notice] = 'Cantor was successfully updated.'
        format.html { redirect_to(@cantor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cantor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cantores/1
  # DELETE /cantores/1.xml
  def destroy
    @cantor = Cantor.find(params[:id])
    @cantor.destroy

    respond_to do |format|
      format.html { redirect_to(cantores_url) }
      format.xml  { head :ok }
    end
  end

def consultaCan
  unless params[:search].present?
    if params[:type_of].to_i == 3
      @contador = Cantor.all.count
      @cantores = Cantor.paginate :all,:page => params[:page], :order => 'nome ASC', :per_page => 20
      render :update do |page|
        page.replace_html 'cantores', :partial => "cantores"
      end
    end
  else
    if params[:type_of].to_i == 1
      @contador = Cantor.all(:conditions => ["nome like ?", "%" + params[:search].to_s + "%"]).count
      @cantores = Cantor.paginate :page => params[:page], :per_page => 20, :conditions => ["nome like ?", "%" + params[:search].to_s + "%"],:order => 'nome ASC'
      render :update do |page|
        page.replace_html 'cantores', :partial => "cantores"
      end
      else if params[:type_of].to_i == 2
       render :update do |page|
         page.replace_html 'consulta_cantores', :partial => "consulta_cantor"
      end
     end
    end
  end
end

def showCan
  @contador = AudioVisual.all.count
  @buscas = Ponto.all(:joins => "inner join estagiarios on pontos.estagiario_id=estagiarios.id",:conditions => ["estagiarios.desligado = 0 and estagiarios.flag = 0 and pontos.created_at between ? and ?", inicio_mes,termino_mes],:group => 'estagiario_id', :select => 'estagiarios.id, sum(pontos.total_trabalhado) as "total_trabalhado", estagiarios.nome' )

end

def consulta_cantor
       session[:cantor] = params[:cantor_id]
       @cantores = Cantor.find(session[:cantor])
       render :update do |page|
         page.replace_html 'dadoscantores', :partial => "cantores"
      end
  end


def consulta_cantor_musica
       session[:cantor] = params[:cantor_id]
       @cantores = Cantor.find(session[:cantor])
       render :update do |page|
         page.replace_html 'dadoscantores', :partial => "cantores_musica"
      end
  end

protected

  def load_resources
        @cantores= Cantor.all(:order => 'nome ASC')
  end

end
