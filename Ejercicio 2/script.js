let dolaresData = [];

async function obtenerDolar() {
    const respuesta = await fetch("https://dolarapi.com/v1/dolares")
    dolaresData = await respuesta.json()
    mostrarDolar(dolaresData)
}

function mostrarDolar(datos) {
    const tabla = document.getElementById("tabla")
    const tbody = tabla.querySelector("tbody")
    tbody.innerHTML = ""
    datos.forEach(dolar => {
        const fila = document.createElement("tr")
        fila.innerHTML = `
            <td>${dolar.nombre}</td>
            <td>$${dolar.compra}</td>
            <td>$${dolar.venta}</td>
        `
        tbody.appendChild(fila)
    })
}

function mostrarConversion() {
    const tablaConversion = document.querySelector("#conversion table")
    const tbody = tablaConversion.querySelector("tbody")
    const inputPesos = document.getElementById("pesos").value

    const pesos = parseFloat(inputPesos)

    if (isNaN(pesos) || pesos <= 0) return;

    const textoPesos = document.querySelector("#conversion p")
    textoPesos.textContent = `Pesos: $${pesos}`

    tbody.innerHTML = ""

    dolaresData.forEach(dolar => {
        const descCompra = dolar.compra > 0 ? (pesos / dolar.compra).toFixed(2) : "0.00"
        const descVenta = dolar.venta > 0 ? (pesos / dolar.venta).toFixed(2) : "0.00"

        const fila = document.createElement("tr")
        fila.innerHTML = `
            <td>${dolar.nombre}</td>
            <td>USD ${descCompra}</td>
            <td>USD ${descVenta}</td>
        `
        tbody.appendChild(fila)
    })
    document.getElementById("conversion").style.display = "block";
}

const formulario = document.querySelector("form")
formulario.addEventListener("submit", (evento) => {
    evento.preventDefault();
    mostrarConversion();
})

obtenerDolar()