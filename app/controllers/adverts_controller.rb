class AdvertsController < ApplicationController

  respond_to :json, :html

  def marker(houses)
    houses.each_with_index do |house, index|
      if house.latitude.present?
        i = 0
        houses.each_with_index do |m, indx|
          if m.latitude == house.latitude && m.longitude == house.longitude
            if i>0
              house.mapaddress += " #{m.id}"
              houses.delete_at(indx)
            end
            i = i+1
          end
        end
      end
    end


    houses

  end



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


    # @adverts = @adverts.page(params[:page]).per(10)
    if params[:map]

      @adverts = marker(@adverts)


      render :template => 'adverts/map'
    else
      @adverts = @adverts.paginate(:page => params[:page], :per_page => 20)

      #@adverts = marker(@adverts)

      respond_with @adverts, @category = Category.find(params[:category])  if params[:category].present?
    end
  end

  def show
    @advert = Advert.find(params[:id])

    @contact_form = ContactForm.new
    if params[:url].present?
      @url = params[:url]
    else
      @url = ""
    end

    @map = static_map
    respond_to do |format|
      format.html
      format.json

      format.pdf do
        pdf = AdvertPdf.new(@advert, view_context, @url, @map)
        send_data pdf.render, :filename => @advert.slug + ".pdf", :type => "application/pdf", :disposition => "inline"
      end



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
    @advert.modified = Time.now
    @advert.publication_date = Time.now
    @advert.user_id = current_user
    #map_download(@advert)
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
    #map_download(@advert)
    @advert.modified = Time.now
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

  def map_download(advert)
    require 'open-uri'
    @path = 'public/uploads/advert/image/' + advert.id.to_s + '/map.png'
    open(@path, 'wb') do |file|
      file << open(static_map).read
    end
  end

  def static_map
    params = {
        :center => [-50.4501, 50.4501].join(","),
        :zoom => 10,
        :size => "300x300",
        :markers => [-50.4501, 50.4501].join(","),
        :sensor => false
    }

    query_string =  params.map{|k,v| "#{k}=#{v}"}.join("&")
    @c = "http://maps.googleapis.com/maps/api/staticmap?#{query_string}"
    return @c
  end


end
