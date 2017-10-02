const express = require('express')

const app = express();

app.get('/', (req, res) => {
    res.send('Hello World')
})

app.all('/health' , (req, res) => {
    res.send('OK')
})

app.listen(8080, () => console.log('server started at port 8080'))