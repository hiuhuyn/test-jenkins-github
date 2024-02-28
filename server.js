const express = require('express');
const app = express();

app.get('/', (req, res) => { 
    res.json({
        msg: "Hello, world 1.0.4"
    })
})

app.listen(3000, () => {
    console.log('Server is running on port 3000 phiên bản 1.0.1');  
})