public class countryclasswather {
public string allcities {get;set;}

public string cname1 ='India';
    public String getCname() {
    system.debug('Testi'+cname1);
        return cname1;
    }


public String setcname(string cname2) {

cname1 = cname2;
return null;
}


    public pagereference countrysearch() {
    
    countrysearch_new();
       return null;
    }
    
    public string countrysearch_new() {
    system.debug('cname1 '+cname1 );
    //string ind = 'India';
WeatherReportClassfromWSDL.GlobalWeatherSoap testobj = new WeatherReportClassfromWSDL.GlobalWeatherSoap();
allcities = testobj.GetCitiesByCountry(cname1);
return allcities ;
}
}