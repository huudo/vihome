(function (b) {
    function c() {}
    for (var d = "assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,timeStamp,profile,profileEnd,time,timeEnd,trace,warn".split(","), a; a = d.pop();) {
        b[a] = b[a] || c
    }
})((function () {
    try {
        console.log();
        return window.console;
    } catch (err) {
        return window.console = {};
    }
})());

var GLOBAL = {
  common : {
    init: function(){
      $('.add-to-cart').bind( 'click', addToCart );
    }
  },
  templateIndex : {
    init: function(){
    }
  },
  templateProduct : {
    init: function(){
    }
  },
  templateCart : {
    init: function(){
      
    }
  }
}

var UTIL = {
  fire : function(func,funcname, args){
    var namespace = GLOBAL;
    funcname = (funcname === undefined) ? 'init' : funcname;
    if (func !== '' && namespace[func] && typeof namespace[func][funcname] == 'function'){
      namespace[func][funcname](args);
    }
  },
    
  loadEvents : function(){
    var bodyId = document.body.id;
    UTIL.fire('common');
    $.each(document.body.className.split(/\s+/),function(i,classnm){
      UTIL.fire(classnm);
      UTIL.fire(classnm,bodyId);
    });
  }
};

$(document).ready(UTIL.loadEvents);

$(window).load( function(){
  if( $('body').hasClass('templateIndex') ){
  } else {
  }
});

function notifyProduct($info){
  var wait = setTimeout(function(){
    $.jGrowl($info,{life: 2000 });  
  },300);
}

function addToCart(e){
  if (typeof e !== 'undefined') e.preventDefault();
  var $this = $(this);
  var form = $this.parents('form');
  $.ajax({
    type: 'POST',
    url: '/cart/add.js',
    async: false,
    data: form.serialize(),
    dataType: 'json',
    error: addToCartFail,
    success: addToCartSuccess,
    cache: false
  });
  $('.modal').modal('hide');
}
function addToCartSuccess (jqXHR, textStatus, errorThrown){
  $.ajax({
    type: 'GET',
    url: '/cart.js',
    async: false,
    cache: false,
    dataType: 'json',
    success: updateCartDesc
  });
  var $info = '<div class="row"><div class="col-md-3"><img style="max-width: 65px;" src="'+ Bizweb.resizeImage(jqXHR['image'], "medium") +'" alt="'+ jqXHR['name'] +'"/></div><div class="col-md-9"><a class="jGrowl-title" href="'+ jqXHR['url'] +'">'+ jqXHR['name'] +'</a><div class="jGrowl-note">ÄÃ£ thÃªm thÃ nh cÃ´ng sáº£n pháº©m vÃ o <a href="/cart" class="your_cart">giá» hÃ ng</a> cá»§a báº¡n.</div></div></div>';
  notifyProduct($info);
  Bizweb.getCart(function(cart) {
    Bizweb.updateCartFromForm(cart, 'cart-info');       
  });
}
function addToCartFail(jqXHR, textStatus, errorThrown){
  var response = $.parseJSON(jqXHR.responseText);
  var $info = '<div class="error">'+ response.description +'</div>';
  notifyProduct($info);
}
