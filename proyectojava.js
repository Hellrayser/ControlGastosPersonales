        const productos = [
            { nombre: "-", precio: 0},
            { nombre: "Refrigerador", precio: 500 },
            { nombre: "Microondas", precio: 100 },
            { nombre: "Lavadora", precio: 400 },
            { nombre: "Secadora", precio: 350 },
            { nombre: "Horno eléctrico", precio: 150 },
            { nombre: "Aspiradora", precio: 200 },
            { nombre: "Televisor", precio: 600 },
            { nombre: "Cafetera", precio: 50 },
            { nombre: "Licuadora", precio: 40 },
            { nombre: "Tostadora", precio: 30 },
            { nombre: "Batidora", precio: 60 },
            { nombre: "Plancha", precio: 45 },
            { nombre: "Ventilador", precio: 80 },
            { nombre: "Calefactor", precio: 120 },
            { nombre: "Aire acondicionado", precio: 700 },
            { nombre: "Purificador de agua", precio: 90 },
            { nombre: "Deshumidificador", precio: 130 },
            { nombre: "Máquina de hielo", precio: 160 },
            { nombre: "Freidora de aire", precio: 180 },
            { nombre: "Robot aspirador", precio: 300 },
            { nombre: "Cámara de seguridad", precio: 250 },
            { nombre: "Router WiFi", precio: 100 },
            { nombre: "Impresora", precio: 200 },
            { nombre: "Humidificador", precio: 110 },
            { nombre: "Máquina de coser", precio: 220 }
        ];

        const selectProducto = document.getElementById("producto");
        productos.forEach(prod => {
            const option = document.createElement("option");
            option.value = prod.nombre;
            option.textContent = `${prod.nombre} - $${prod.precio}`;
            selectProducto.appendChild(option);
        });

        document.getElementById('gastoForm').addEventListener('submit', function(event) {
            event.preventDefault();
            
            const productoSeleccionado = productos.find(prod => prod.nombre === selectProducto.value);
            const cantidad = parseInt(document.getElementById('cantidad').value);
            
            if (!productoSeleccionado || isNaN(cantidad) || cantidad <= 0) {
                alert('Por favor, ingrese valores válidos');
                return;
            }
            
            const total = productoSeleccionado.precio * cantidad;
            
            const nuevaFila = document.createElement('tr');
            nuevaFila.innerHTML = `
                <td>${productoSeleccionado.nombre}</td>
                <td>$${productoSeleccionado.precio.toFixed(2)}</td>
                <td>${cantidad}</td>
                <td>$${total.toFixed(2)}</td>
                <td><button class="delete-btn">Eliminar</button></td>
            `;
            
            document.getElementById('gastosLista').appendChild(nuevaFila);
            actualizarTotal();
            
            nuevaFila.querySelector('.delete-btn').addEventListener('click', function() {
                nuevaFila.remove();
                actualizarTotal();
            });
            
            this.reset();
        });
        
        function actualizarTotal() {
            let totalGasto = [...document.querySelectorAll('#gastosLista tr')].reduce((sum, fila) => sum + parseFloat(fila.cells[3].textContent.replace('$', '')), 0);
            document.getElementById('totalGasto').textContent = `Total Gastado: $${totalGasto.toFixed(2)}`;
        }