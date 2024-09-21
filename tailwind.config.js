module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    './node_modules/flowbite/**/*.js'
  ],
  theme: {
    extend: {
      colors: {
        'primary': {
          600: '#1C64F2',
          700: '#1A56DB'
        }
      }
    }
  },
  plugins: [
    // require('flowbite/plugin')
  ]
}
