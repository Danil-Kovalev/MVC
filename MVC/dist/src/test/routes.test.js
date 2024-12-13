import request from 'supertest';
import app from '../back/src/serverV1.js'; // шлях до вашого серверного файлу
describe('Server Routes', () => {
    // Тест для головної сторінки
    it('should return 200 for the / route', (done) => {
        request(app)
            .get('/')
            .expect(200)
            .end(done);
    });
    // Тест для API
    it('should return 200 for the /book/:bookID route', (done) => {
        request(app)
            .get('/book/:bookID')
            .expect(200)
            .end(done);
    });
});
