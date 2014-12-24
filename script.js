
function doAjaxCallForBrands() {    
    var xhr = new XMLHttpRequest();
    
    xhr.onreadystatechange = function() {
        if ( xhr.readyState===4 && xhr.status===200 ) {  
            var records = JSON.parse(xhr.responseText); 
            var objDatalist = document.getElementById('brands');            
            records.forEach( function(rec) { 
                var o = document.createElement('option'); 
                o.setAttribute("id",rec.id); 
                o.setAttribute("value",rec.value);    
                objDatalist.appendChild(o); 
            }); 
            document.getElementById('txtBrand').focus(); 
        }
    };
    
    xhr.open("GET", "getBrands.php", true);  
    xhr.send();  
    
}

function doAjaxCallForCategories() {    
    var xhr = new XMLHttpRequest();
    
    xhr.onreadystatechange = function() {
        if ( xhr.readyState===4 && xhr.status===200 ) {  
            var records = JSON.parse(xhr.responseText); 
            var objDatalist = document.getElementById('categories'); 
            
            objDatalist.innerHTML = '';
            document.getElementById('txtCategory').value = '';
            
            records.forEach( function(rec) { 
                var o = document.createElement('option'); 
                o.setAttribute("id",rec.id); 
                o.setAttribute("value",rec.value);    
                objDatalist.appendChild(o); 
            }); 
            document.getElementById('txtCategory').focus(); 
        }
    };
    
    // get brand to pass in
    var brand = document.getElementById('txtBrand').value;
    xhr.open("GET", "getCategories.php?brand="+brand, true);  
    xhr.send();  
    
}


