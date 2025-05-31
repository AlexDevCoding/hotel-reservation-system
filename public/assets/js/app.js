// Funciones de utilidad
const formatDate = (date) => {
    return new Date(date).toLocaleDateString('es-ES', {
        year: 'numeric',
        month: 'long',
        day: 'numeric'
    });
};

// Manejo de formularios
document.addEventListener('DOMContentLoaded', () => {
    // Confirmación de eliminación
    const deleteButtons = document.querySelectorAll('[data-delete-confirm]');
    deleteButtons.forEach(button => {
        button.addEventListener('click', (e) => {
            if (!confirm('¿Estás seguro de que deseas eliminar este elemento?')) {
                e.preventDefault();
            }
        });
    });

    // Validación de formularios
    const forms = document.querySelectorAll('form[data-validate]');
    forms.forEach(form => {
        form.addEventListener('submit', (e) => {
            const requiredFields = form.querySelectorAll('[required]');
            let isValid = true;

            requiredFields.forEach(field => {
                if (!field.value.trim()) {
                    isValid = false;
                    field.classList.add('border-red-500');
                } else {
                    field.classList.remove('border-red-500');
                }
            });

            if (!isValid) {
                e.preventDefault();
                alert('Por favor, complete todos los campos requeridos.');
            }
        });
    });
});

// Funciones de notificación
const showNotification = (message, type = 'success') => {
    const notification = document.createElement('div');
    notification.className = `fixed top-4 right-4 p-4 rounded-lg shadow-lg ${
        type === 'success' ? 'bg-green-500' : 'bg-red-500'
    } text-white`;
    notification.textContent = message;

    document.body.appendChild(notification);

    setTimeout(() => {
        notification.remove();
    }, 3000);
}; 