/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      colors: {
        black: '#434343',
        green: '#a0d468',
        gray: '#777777',
        white: '#ffffff',
        gray100: '#DDDDDD',
        blue: '#13b5ea',
      },
    },
  },
  plugins: [
    require('daisyui'),
  ],
}
