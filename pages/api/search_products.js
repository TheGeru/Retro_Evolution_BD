import prisma from "../../prisma/client";

export default async function handler (req, res){
    if(req.method === 'GET'){
        try{
            const products = await prisma.product.findMany();

            res.status(200).json({products});
        }
        catch(error){
            res.status(500).json(`Error al buscar productos: ${error}`);
        }
    }else{
        res.status(400).json({error: 'Método no permitido'});
    }
}