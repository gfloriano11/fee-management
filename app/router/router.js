import express from 'express';
import menu from '../controller/MenuController';

const router = express.Router();

router.get('/', menu);

export default router;