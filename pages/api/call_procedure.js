
export default async function handler(req, res){
    if(req.method === 'POST'){
        try{
            const result = 'Entraste al método';

            res.status(200).json({result});
        }
        catch(error){
            res.status(500).json({error: 'Error al llamar al procedimiento almacenado'});
        }
    }
    else{
        res.status(405).json({error: 'Método no permitido'});
    }
}