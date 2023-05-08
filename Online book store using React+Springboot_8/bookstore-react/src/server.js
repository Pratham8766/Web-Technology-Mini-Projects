const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

const app = express();
const port = 3001;

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'newlab8',
});

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.post('/api/signup', (req, res) => {
  const { username, email, password } = req.body;

  const query = `INSERT INTO users (username, email, password) VALUES ('${username}', '${email}', '${password}')`;

  connection.query(query, (error, results, fields) => {
    if (error) {
      console.log(error);
      res.status(500).send('Error inserting user into database');
    } else {
      res.send('User inserted into database');
    }
  });
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
