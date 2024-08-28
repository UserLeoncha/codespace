const express = require('express');
const serve = require('serve-static');
const app = express();

app.use(express.static('docs/.vitepress/dist'));

app.get('*', (req, res) => {
  res.sendFile(path.join(_dirname, 'docs/.vitepress/dist', 'index.html'));
});


const PORT = process.env.PORT || 80;
app.listen(PORT, () => {
  console.log('Server is running on port http://localhost:${PORT}');
})