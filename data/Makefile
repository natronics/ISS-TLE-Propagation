today=`date --iso-8601=seconds --utc`
lat="40.027435"
lon="-105.251945"
alt="1655"

all: inital_tle prediction nasa_traject

inital_tle:
	wget -O NORAD.$(today).tle https://celestrak.com/NORAD/elements/stations.txt

nasa_traject:
	wget -O NASA.$(today).html http://spaceflight.nasa.gov/realdata/sightings/SSapplications/Post/JavaSSOP/orbit/ISS/SVPOST.html

prediction:
	wget -O passes.$(today).json "http://api.open-notify.org/iss-pass.json?lat=$(lat)&lon=$(lon)&alt=$(alt)&n=100"
