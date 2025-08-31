const request = require('supertest');
const { app, server } = require('./app');

describe('Hello World', () => {
  afterAll(async () => {
    await new Promise(resolve => server.close(resolve));
  });

  describe('GET /', () => {
    test('should return status ok', async () => {
      const response = await request(app).get('/');
      expect(response.status).toBe(200);
      expect(response.body).toEqual({ status: 'ok' });
      expect(response.headers['content-type']).toMatch(/json/);
    });
  });

  describe('GET /health', () => {
    test('should return health status', async () => {
      const response = await request(app).get('/health');
      expect(response.status).toBe(200);
      expect(response.body.status).toBe('ok');
      expect(response.body).toHaveProperty('timestamp');
      expect(response.body.service).toBe('hello-world');
    });
  });
});