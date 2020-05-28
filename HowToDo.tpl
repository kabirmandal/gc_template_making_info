ajax btc price
-----------------------
$.ajax({
  url: 'https://blockchain.info/q/24hrprice',
  type: 'GET',
  success: function(data) {
   var price = data;
   dowork(data);
  }
});

function dowork(data){
	$("#cand").text(data);
}



