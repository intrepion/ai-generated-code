const express = require('express');
const app = express();
const port = 3000;

// Middleware for JSON parsing
app.use(express.json());

// Health check endpoint
app.get('/health', (req, res) => {
    res.json({ status: 'healthy' });
});

// Simple GET endpoint
app.get('/hello', (req, res) => {
    res.json({ message: 'Hello, World!' });
});

// Simple POST endpoint
app.post('/echo', (req, res) => {
    const { message } = req.body;
    if (!message) {
        return res.status(400).json({ error: 'Message required' });
    }
    res.json({ received: message });
});

// Error handling
app.use((err, req, res, next) => {
    console.error(err);
    res.status(500).json({ error: 'Internal server error' });
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});