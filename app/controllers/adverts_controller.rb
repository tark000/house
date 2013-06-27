class AdvertsController < ApplicationController
  # GET /adverts
  # GET /adverts.json
  respond_to :json, :html
  #require 'prawn'
  def index

    @adverts = Advert.search(params[:search]).order(:title)


    @adverts = @adverts.operation_type_search(params[:operation_type]) if params[:operation_type].present?
    @adverts = @adverts.category_search(params[:category]) if params[:category].present?
    @adverts = @adverts.where(:living => params[:living])  if params[:living].present?
    @adverts = @adverts.state_search(params[:state]) if params[:state].present?
    if params[:gender] == "all"
      @adverts = @adverts.all_min_price_search(params[:min_price]) if params[:min_price].present?
      @adverts = @adverts.all_max_price_search(params[:max_price]) if params[:max_price].present?
    elsif params[:gender] == "m2"
      @adverts = @adverts.min_price_search(params[:min_price]) if params[:min_price].present?
      @adverts = @adverts.max_price_search(params[:max_price]) if params[:max_price].present?
    end

    @adverts = @adverts.min_area_search(params[:min_area])if params[:min_area].present?
    @adverts = @adverts.max_area_search(params[:max_area])if params[:max_area].present?
    @adverts = @adverts.regoin_search(params[:region_id]) if params[:region_id].present?
    @adverts = @adverts.city_search(params[:city_id]) if params[:city_id].present?

    #@adverts = @adverts.page(params[:page]).per(10)
    if params[:map]
      render :template => 'adverts/map'
    else
      @adverts = @adverts.paginate(:page => params[:page], :per_page => 20)

      respond_with @adverts, @category = Category.find(params[:category])  if params[:category].present?
    end
  end

  def show
    @advert = Advert.find(params[:id])

    @contact_form = ContactForm.new

    respond_to do |format|
      format.html
      format.json

      format.pdf  {
        html = render_to_string(:layout => "show_pdf.html.pdf.haml" , :action => "show_pdf.html.pdf.haml", :formats => [:html], :handler => [:haml])
        kit = PDFKit.new(html)
        kit.stylesheets << "#{Rails.root}/app/assets/stylesheets/application.css"
        send_data(kit.to_pdf, :filename => "#{clean_string(@event.title)}")
        return # to avoid double render call
      }


    end
  end



  # GET /adverts/new
  # GET /adverts/new.json
  def new
    @advert = Advert.new

    respond_to do |format|
      format.html # _form.html.haml
      format.json { render json: @advert }
    end
  end

  # GET /adverts/1/edit
  def edit
    @advert = Advert.find(params[:id])
  end

  def create
    @advert = Advert.new(params[:advert])
    expire_action :action => :index
    @advert.contact_id = 1
    @advert.created = Time.now
    @advert.modified = Time.now
    @advert.publication_date = Time.now
    @advert.user_id = current_user
    respond_to do |format|
      if @advert.save
        format.html { redirect_to @advert, notice: 'Advert was successfully created.' }
        format.json { render json: @advert, status: :created, location: @advert }
      else
        format.html { render action: "new" }
        format.json { render json: @advert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /adverts/1
  # PUT /adverts/1.json
  def update
    @advert = Advert.find(params[:id])
    expire_action :action => :index
    respond_to do |format|
      if @advert.update_attributes(params[:advert])
        format.html { redirect_to @advert, notice: 'Advert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @advert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adverts/1
  # DELETE /adverts/1.json
  def destroy
    @advert = Advert.find(params[:id])
    @advert.destroy
    expire_action :action => :index
    respond_to do |format|
      format.html { redirect_to adverts_url }
      format.json { head :no_content }
    end
  end
end
