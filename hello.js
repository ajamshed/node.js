const request = require("request");
const http = require("http");
//const path = require("path");
//const fs = require("fs");
const app_port = 9000;
//const app_host =  'localhost';
const app_host =  '192.168.0.3';

/*
function a_loop() {
  var t=0;
  var i=0;
  const cdate = new Date();
  while( (new Date().getTime() - cdate.getTime()) < 50) {
    t = t + i;
  }
}
*/
function a_loop(res) {

    //Retrieve address information
 //   var address_svc_byemployeeid = appConfig.address_svc_byemployeeid;
    var remote_svc = "http://192.168.0.13:9001/employees/id/5a1386c515c033c85a19a2f0";
    var options = {
	url: remote_svc,
	timeout: 10000
    };
    request(options, function remoteSvc(error, response, data) {
        if(error) {
            console.log(error);
	    //            return callback(error);
	    res.write("Error occured");
	    res.end();
	    return;
        }
	
        if (response.statusCode != 200) {
//            console.log('Remote service error:' + response.statusCode + ':' + remote_svc);
	    //            return callback(error);
	    res.write("Error occured");
	    res.end();
	    return;	    
        }
	
	    res.write(data);
	    res.end();
	    return;	
    });
}

http.createServer(function(req, res) {
  //5sec loop
  a_loop(res);

  //res.write("Hello world!");
//  res.end();
}).listen({
  host: app_host,
  port: app_port
}, function() {
  console.log('Server running at port ' + app_port);
});
