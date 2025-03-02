import connection from '../connection/connection.js';

console.log('olá, bem vindo ao menu!');

export const menu = (_, res) => {
    const query = 'SELECT * FROM USERS';

    connection.query(query, (error, data) => {
        if(error) return res.json(error);

        return res.status(200).json(data);
    })
}