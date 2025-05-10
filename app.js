require('dotenv').config();
const express = require('express');
const session = require('express-session');
const path = require('path');

const app = express();

// Middlewares
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: false,
}));
//servir archivos estaticos
app.use('/public', express.static(path.join(__dirname, 'public')));

// Rutas base (provisorio)
app.get('/', (req, res) => {
  res.send('Sistema de Gestión - Liga Mercedina de Vóley');
});

// Escuchar puerto
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});


//codigo temporal de prueba bd
const db = require('./src/models/db');

app.get('/test-db', async (req, res) => {
  try {
    const [rows] = await db.query('SELECT NOW() as now');
    res.send(`Conexión OK. Hora actual del servidor MySQL: ${rows[0].now}`);
  } catch (err) {
    console.error(err);
    res.status(500).send('Error conectando a la BD');
  }
});
