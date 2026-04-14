let preguntas = [];
let preguntaActual;
let numeroDePregunta = 1;
let puntaje = 0;
let preguntasUsadas = [];
let intervaloTiempo = null; // Variable global para el intervalo del timer

function preguntaAleatoria(lista) {
    return Math.floor(Math.random() * lista.length);
}

function shuffleArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
}

async function cargarPreguntas() {
    try {
        const response = await fetch("trivia_realista_240.json");
        const data = await response.json();
        preguntas = data.categorias;
    } catch (error) {
        console.error("Error al cargar las preguntas:", error);
    }
}

async function seleccionarCategoria() {
    const categoriasDiv = document.getElementById("categorias");
    categoriasDiv.style.display = "block";
    
    // Nos aseguramos de que las preguntas se hayan cargado

    
    mostrarCategorias(preguntas);
}

function mostrarCategorias(categoriasArr) {
    const contenedor = document.getElementById("categoriaN");
    contenedor.innerHTML = "";

    categoriasArr.forEach(cat => {
        const div = document.createElement("div");
        const radioButton = document.createElement("input");
        radioButton.type = "radio";
        radioButton.name = "categoria";
        radioButton.value = cat.nombre;
        radioButton.id = `cat-${cat.nombre}`;

        const label = document.createElement("label");
        label.htmlFor = `cat-${cat.nombre}`;
        label.textContent = cat.nombre;

        div.appendChild(radioButton);
        div.appendChild(label);
        contenedor.appendChild(div);
    });
}

// Carga inicial
cargarPreguntas();

// Detiene el timer actual si existe
function detenerTimer() {
    if (intervaloTiempo) {
        clearInterval(intervaloTiempo);
        intervaloTiempo = null;
    }
}

// Inicia el timer de 10 segundos para responder
function iniciarTimer() {
    detenerTimer(); // Limpiar cualquier timer anterior
    var tiempoRestante = 10;
    const tiempoEl = document.getElementById("tiempo");
    const timerBar = document.getElementById("timerBar");
    const timerHudItem = tiempoEl.closest('.hud-item');
    
    tiempoEl.textContent = tiempoRestante;
    tiempoEl.classList.remove("urgente");
    if (timerHudItem) timerHudItem.classList.remove("urgente");
    if (timerBar) {
        timerBar.style.width = "100%";
        timerBar.classList.remove("urgente");
    }
    
    intervaloTiempo = setInterval(() => {
        tiempoRestante--;
        tiempoEl.textContent = tiempoRestante;
        
        // Actualizar barra de progreso
        if (timerBar) {
            timerBar.style.width = (tiempoRestante / 10 * 100) + "%";
        }
        
        // Efecto urgente cuando quedan 3 segundos o menos
        if (tiempoRestante <= 3) {
            tiempoEl.classList.add("urgente");
            if (timerHudItem) timerHudItem.classList.add("urgente");
            if (timerBar) timerBar.classList.add("urgente");
        }
        
        if (tiempoRestante === 0) {
            detenerTimer();
            // Se acabó el tiempo, 0 puntos y mostrar la respuesta correcta
            mostrarRespuestaCorrectaYPasar(null);
        }
    }, 1000);
}

// Muestra la respuesta correcta en verde (y la incorrecta seleccionada en rojo)
// Espera 5 segundos y luego pasa a la siguiente pregunta
function mostrarRespuestaCorrectaYPasar(respuestaSeleccionadaValue) {
    // Deshabilitar todos los radio buttons para que no se pueda cambiar
    const radios = document.querySelectorAll('input[name="opcion"]');
    radios.forEach(radio => {
        radio.disabled = true;
    });

    // Deshabilitar el botón confirmar
    document.getElementById("btnConfirmar").disabled = true;

    // Limpiar la barra de timer visualmente
    const timerBar = document.getElementById("timerBar");
    if (timerBar) {
        timerBar.style.width = "0%";
        timerBar.classList.remove("urgente");
    }

    // Colorear las respuestas usando clases CSS
    const opcionesContenedor = document.getElementById("opcion");
    const divs = opcionesContenedor.querySelectorAll("div");
    
    divs.forEach(div => {
        const radio = div.querySelector("input");
        
        if (radio.value === preguntaActual.correcta) {
            // La respuesta correcta se pinta de verde
            div.classList.add("opcion-correcta");
        } else if (respuestaSeleccionadaValue && radio.value === respuestaSeleccionadaValue) {
            // La respuesta incorrecta seleccionada se pinta de rojo
            div.classList.add("opcion-incorrecta");
        }
    });

    // Esperar 5 segundos antes de pasar a la siguiente pregunta
    setTimeout(() => {
        numeroDePregunta++;
        document.getElementById("numeroDePregunta").textContent = numeroDePregunta;
        if (numeroDePregunta <= 5) {
            document.getElementById("btnConfirmar").disabled = false;
            iniciarJuego();
        } else {
            mostrarResultado();
        }
    }, 5000);
}

function iniciarJuego() {
    // ocultar vistas de seleccion de categoria 
    const incicio = document.getElementById("seleccionarCategoria");
    incicio.style.display = "none";

    const categorias = document.getElementById("categorias");
    categorias.style.display = "none";

    const resultado = document.getElementById("resultado");
    resultado.style.display = "none";
    
    const juego = document.getElementById("juego");
    juego.style.display = "block";

    const categoriaSeleccionada = document.querySelector('input[name="categoria"]:checked');
    if (!categoriaSeleccionada) {
        alert("Por favor, selecciona una categoría.");
        return;
    }
    
    // Buscamos la categoría seleccionada
    const categoriaEncontrada = preguntas.find(cat => cat.nombre === categoriaSeleccionada.value);

    if (!categoriaEncontrada || categoriaEncontrada.preguntas.length === 0) {
        alert("No se encontraron preguntas para la categoría seleccionada.");
        return;
    }

    var listaDePreguntas = categoriaEncontrada.preguntas;
    var indice = preguntaAleatoria(listaDePreguntas);
    preguntasUsadas.push(indice);
    
    preguntaActual = listaDePreguntas[indice];
    var respuestas = [...preguntaActual.incorrectas, preguntaActual.correcta];
    
    respuestas = shuffleArray(respuestas);

    // Mostramos la pregunta
    var displayPregunta = document.getElementById("pregunta");
    displayPregunta.textContent = preguntaActual.pregunta;

    var opcionesContenedor = document.getElementById("opcion");
    opcionesContenedor.innerHTML = "";

    respuestas.forEach(opcion => {
        const div = document.createElement("div");
        const radioButton = document.createElement("input");
        radioButton.type = "radio";
        radioButton.name = "opcion";
        radioButton.value = opcion;
        radioButton.id = `opcion-${opcion}`;

        const label = document.createElement("label");
        label.htmlFor = `opcion-${opcion}`;
        label.textContent = opcion;

        div.appendChild(radioButton);
        div.appendChild(label);
        opcionesContenedor.appendChild(div);
    });

    console.log("Pregunta seleccionada:", preguntaActual);
    
    // Iniciar el timer de 10 segundos
    iniciarTimer();
}

// Event listener para el botón de confirmar (definido una sola vez)
document.getElementById("btnConfirmar").addEventListener("click", () => {
    if (!preguntaActual) return;

    const respuestaSeleccionada = document.querySelector('input[name="opcion"]:checked');
    
    if (!respuestaSeleccionada) {
        alert("Por favor, selecciona una respuesta.");
        return;
    }

    // Detener el timer al confirmar respuesta
    detenerTimer();

    if (respuestaSeleccionada.value === preguntaActual.correcta) {
        puntaje++;
        document.getElementById("puntaje").textContent = puntaje;
        // Mostrar en verde la correcta y esperar 5 segundos
        mostrarRespuestaCorrectaYPasar(null);
    } else {
        // Mostrar correcta en verde e incorrecta en rojo, esperar 5 segundos
        mostrarRespuestaCorrectaYPasar(respuestaSeleccionada.value);
    }
});

function mostrarResultado() {
    detenerTimer(); // Asegurarse de detener el timer
    const juego = document.getElementById("juego");
    juego.style.display = "none";
    const resultado = document.getElementById("resultado");
    resultado.style.display = "flex";
    const puntajeFinal = document.getElementById("puntajeFinal");
    puntajeFinal.textContent = puntaje;
    
    // Mostrar estrellas según el puntaje
    const starsEl = document.getElementById("resultStars");
    if (starsEl) {
        const estrellas = ["😞", "⭐", "⭐⭐", "⭐⭐⭐", "⭐⭐⭐⭐", "⭐⭐⭐⭐⭐"];
        starsEl.textContent = estrellas[puntaje] || "⭐";
    }
}

function reiniciarJuego() {
    // Reiniciar todas las variables
    numeroDePregunta = 1;
    puntaje = 0;
    preguntasUsadas = [];
    
    // Detener cualquier timer activo
    detenerTimer();
    
    // Reiniciar los displays del HTML
    document.getElementById("puntaje").textContent = "0";
    document.getElementById("numeroDePregunta").textContent = "1";
    document.getElementById("tiempo").textContent = "10";
    document.getElementById("btnConfirmar").disabled = false;
    
    iniciarJuego();
}
