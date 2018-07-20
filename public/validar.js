function validar(){
	var nombre, precio_max, precio_min, tipo, expresion;

	//Guardamos en nombre, precios, y tipos los datos del producto que vamos a añadir
	nombre = document.getElementById("nombre").value;
	precio_max = document.getElementById("preciomax").value;
	precio_min = document.getElementById("preciomin").value;
	tipo = document.getElementById("tipos").selectedIndex;


	if(nombre === ""){
		alert("El campo nombre esta vacío");
		return false;
	}

	else if (precio_max<0 || precio_max==="" || isNaN(precio_max)){
		alert("Introduce un precio máximo correcto");
		return false;
	}

	else if (precio_min<0 || precio_min==="" || isNaN(precio_min)){
		alert("Introduce un precio minimo correcto");
		return false;
	}

	else if (tipo === null || tipo === 0){
		alert("Selecciona un tipo");
		return false;
	}



}