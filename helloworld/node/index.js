module.exports = function(req,res){
	res.writeHeader(200,{
		'Content-Type':'text/plain;charset=utf-8'
	});	
	res.end("Hello World");
}
