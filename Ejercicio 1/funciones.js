let numerosArray = []
let min= -5
let max= 10
let suma = 0
let contenedor = document.getElementById("num")
let num
let div


function ocultardiv(){
    div = document.getElementById("numeros");
    div.style.display = "none";
}
ocultardiv()

function configuracion (){
    let configuracion = document.getElementsByClassName("configuracion")[0];
    configuracion.style.display = "none";
    div.style.display = "block";
    
    cantidadDeNumeros = Number(document.getElementById("cantidadDeNumeros").value)
    const intervalo = Number(document.getElementById("intervalo").value)

    temporizador = setInterval(generarNumeros, intervalo * 1000, cantidadDeNumeros);

}


function random(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function generarNumeros(cantidadDeNumeros) {
    num = random(min, max)
    if (num === 0) {
        while (num === 0) {
            num = random(min, max)
        }
    }
    numerosArray.push(num)
    suma += num
    contenedor.innerHTML = num 
    
    console.log("Número generado:", num)
    console.log("Suma actual: ", suma)

    if (numerosArray.length === cantidadDeNumeros) {
        clearInterval(temporizador);
       
    }
  }

function verificar() {
    let resultado = Number(document.getElementById("resultado").value)
    if (resultado === suma) {
        alert("¡Correcto! La suma es " + suma);
    } else {
        alert("Incorrecto. La suma es " + suma);
    }
}