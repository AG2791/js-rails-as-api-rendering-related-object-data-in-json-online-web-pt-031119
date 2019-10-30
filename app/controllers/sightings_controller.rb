# def show
#   sighting = Sighting.find_by(id: params[:id])
#   render json: sighting
# end

#using an object(aka hash)
def show
  sighting = Sighting.find_by(id: params[:id])
  render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
end

###using include 
def show
  sighting = Sighting.find_by(id: params[:id])
  render json: sighting, include: [:bird, :location], except: [:updated_at]
end