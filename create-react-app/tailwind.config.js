// eslint-disable-next-line @typescript-eslint/no-var-requires
const defaultTheme = require("tailwindcss/defaultTheme")

module.exports = {
  future: {
    // removeDeprecatedGapUtilities: true,
    // purgeLayersByDefault: true,
  },
  purge: [
    "src/**/*.js",
    "src/**/*.jsx",
    "src/**/*.ts",
    "src/**/*.tsx",
    "public/**/*.html",
  ],
  theme: {
    // boxShadow: { default: "0 2px 4px 0 rgba(114, 84, 43, 0.28)" },
    extend: {
      // This section extends tailwind defaults
      // spacing: { 9: "2.25rem" },
      // fontFamily: {
      //   sans: ["YogaSansPro", ...defaultTheme.fontFamily.sans],
      // },
      // colors: {
      //   "funky-text": "#9a82e6",
      // },
    },
  },
  variants: {},
  plugins: [],
}
