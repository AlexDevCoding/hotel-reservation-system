 module.exports = {
  content: [
    "./src/Views//*.php",     // Vistas del sistema
    "./public/assets/js//*.js"
  ],
  theme: {
    extend: {colors: {
        'custom-red': 'rgba(255, 0, 0, 0.3)',
      }},
  },
  plugins: [],

}