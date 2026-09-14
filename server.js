const express = require('express');

const app = express();

const PORT = ;

app.get('/', (req, res) => {
    res.send('Aplicacao rodando em conteiner Docker');
});

app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});
