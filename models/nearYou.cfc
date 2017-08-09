component  output="false"
{
	public struct function findClosest(required string lattitude,required string longitude)
	{
		var nearestStore = {lattitude:"28.6172",
							longitude:"77.2075",
							type:"Authorised Service Center"};
		
		//Get all the location data for a corresponding comapny
		
		
		//calculate the nearest location
		/*
		This uses the ‘haversine’ formula to calculate the great-circle distance between two points 
		– that is, the shortest distance over the earth’s surface – giving an ‘as-the-crow-flies’
		 distance between the points (ignoring any hills they fly over, of course!).
		*/
		var rEarth = 6371e3;var valuesfromdb = 0;var someLonFromDB = 0;
		var userLatToRadians = (arguments.lattitude)*Pi() / 180;
		var companyLatToRadians = (valuesfromdb)*Pi() / 180;
		var phi = (userLatToRadians - companyLatToRadians) * Pi() /180;
		var delta = (arguments.longitude - someLonFromDB) * Pi() /180 ;
		
		var a = sin(phi/2) * sin (phi/2) + cos(userLatToRadians) * cos(companyLatToRadians) * sin(delta/2) * sin(delta/2) ; 
		//have to find a value for the atan2 function
		var c = 2 * atan2(Sqr(a),Sqr(1-a));
		var d = rEarth * c ;  
		//return the value d
		return local.nearestStore;
	}
	public function atan2(x, y){
		var Math = createObject("java","java.lang.Math");    
		return Math.atan2(javacast("double",x), javacast("double",y)); 
	}
	

}