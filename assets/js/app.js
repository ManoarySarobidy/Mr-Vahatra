// base image path
var path = "../img/My Product/";

function getXhr(){
    let xhr;
    try {  xhr = new ActiveXObject('Msxml2.XMLHTTP');   }
    catch (e) 
    {
        try {   xhr = new ActiveXObject('Microsoft.XMLHTTP'); }
        catch (e2) 
        {
            try {  xhr = new XMLHttpRequest();  }
            catch (e3) {  xhr = false;   }
        }
    }
    return xhr;
}

function setCategory(){
	let xhr = getXhr();
	// alaina le document misy azy
	let ul = document.querySelector(".myList");
	xhr.onreadystatechange = function(){
		if( xhr.readyState == 4 ){
			if( xhr.status == 200 ){
				var response = JSON.parse(xhr.responseText);
				// de bouclena ito zavatra ito
				for( let i = 0; i < response.length ;i++ ){
					let li = document.createElement("li");
					let a = document.createElement("a");
					a.setAttribute("href", "shop-grid.html?idProduct=" + response[i]['idcategory']);
					let text = document.createTextNode(response[i]['name']);
					a.appendChild(text);
					li.appendChild(a);
					ul.appendChild(li);
				}
			}
		}
	};

	xhr.open("GET","./php/traitement/category.php",true);
	xhr.send(null);

}

function setCaroussel( ){
	// manao var let fotsiny
	let xhr = getXhr();
	let container = document.querySelector(".categories__slider.owl-carousel");
	let lastchild = container.lastChild;
	let img = './assets/img/categories/';
	xhr.onreadystatechange = function(){
		if( xhr.readyState == 4 ){
			if( xhr.status == 200 ){
				var response = JSON.parse(xhr.responseText);
				// de bouclena ito zavatra ito
				for( let i = 0 ; i < response.length ; i++ ){
						let div = document.createElement("div");
						div.classList.add("col-lg-3");
						
						let div2 = document.createElement("div");
						div2.classList.add("categories__item");
						div2.classList.add("set-bg");
						div2.setAttribute("data-setbg" ,img + response[i]['categoryimage']);
						
						let h5 = document.createElement("h5");
						let a = document.createElement("a");
						
						a.setAttribute("href","shop-grid.html?idCategory=" + response[i]['idcategory']);
						a.appendChild( document.createTextNode( response[i]['name'] ) );
						
						h5.appendChild(a);
						div2.appendChild(h5);
						div.appendChild(div2);
						container.after(div);
				}
				
			}
		}
	};

	xhr.open("GET","./php/traitement/category.php",true);
	xhr.send(null);
}