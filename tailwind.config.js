/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        "./resources/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
    ],
    theme: {
        screens: {
            sm: "280px",
            md: "768px",
            lg: "976px",
            xl: "1440px",
        },
        extend: {
            width: {
                card: "500px",
            },
            backgroundImage: {
                ilustration:
                    "url('https://img.freepik.com/free-vector/taxi-app-concept-illustration_52683-36028.jpg?w=2000')",
            },
            colors: {
                yellow: "#F5F532",
                dark: "#18181B",
                textColorLight: "#D4D4D8",
                textColorDark: "#27272A",
                lightW: "#fff",
            },
            fontSize: {
                smt: "20px",
                mdt: "2rem",
                smx: "25px",
            },
            boxShadow: {
                custom: "10px 10px 5px 0px rgba(109,102,102,0.75)",
            },
        },
    },
    plugins: [],
};
