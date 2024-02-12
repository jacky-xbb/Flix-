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
          dark: '#190482',
          light: '#7752FE',
        },
        secondary: {
          dark: '#8E8FFA',
          light: '#C2D9FF',
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
