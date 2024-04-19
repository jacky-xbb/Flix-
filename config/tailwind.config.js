const defaultTheme = require('tailwindcss/defaultTheme')
const colors = require('tailwindcss/colors')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          dark: '#5356FF',
          light: '#378CE7',
        },
        secondary: {
          dark: '#67C6E3',
          light: '#DFF5FF',
        },
        neutral: {
          dark: colors.gray[200],
          light: colors.gray[100],
        },
      },
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
  ]
}
