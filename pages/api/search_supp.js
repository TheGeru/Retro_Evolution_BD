import prisma from "../../prisma/client";

export default async function handler (req, res){
    if(req.method === 'GET'){
        try{
            const supplier = await prisma.supplier.findMany();

            res.status(200).json({supplier});
        }
        catch(error){
            res.status(500).json(`Error al mostrar Proveedores: ${error}`);
        }
    }else{
        res.status(400).json({error: 'Método no permitido'});
    }
}