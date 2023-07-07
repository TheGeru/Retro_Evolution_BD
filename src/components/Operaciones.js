import React, { useState } from "react";

const Operaciones = () => {
    // const [result, setResult] = useState();
    const [products, setProducts] = useState([]);
    const [products_view, setProducts2] = useState([]);
    const [supplier, setSupplier] =useState([]);

    const handleSearch = async () =>
    {
        try{
            const response = await fetch('/api/search_products');

            if(response.ok){
                const data = await response.json();

                setProducts(data.products);
            }else{
                console.error('Error al buscar productos');
            }
        }
        catch(error){
            console.error(`Error en la solicitud: ${error}`);
        }
    }

    const handleView = async () =>
    {
        try{
            const response2 = await fetch('/api/transaction1');

            if(response2.ok){
                const data2 = await response2.json();

                setProducts2(data2.products_view);
            }else{
                console.error('Error al buscar Vista');
            }
        }
        catch(error){
            console.error(`Error en la solicitud: ${error}`);
        }
    }
    const handleSearch2= async () =>
    {
        try{
            const response3 = await fetch('/api/search_supp');

            if(response3.ok){
                const data3 = await response3.json();

                setSupplier(data3.supplier);
            }else{
                console.error('Error al buscar Vista');
            }
        }
        catch(error){
            console.error(`Error en la solicitud: ${error}`);
        }
    }
    
    return(
        <div>
            <button
            onClick={handleSearch}>
                Transaction1
            </button>
            <div>
                {/* Resultado de productos: <span>{products}</span> */}
                {products.length > 0 && (
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Categoria</th>
                                <th>Precio</th>
                                <th>CodigoB</th>
                                <th>Año</th>
                                <th>Proveedor</th>
                            </tr>                            
                        </thead>
                        <tbody>
                            {
                                products.map( (product) => (
                                    <tr key={product.id_pro}>
                                        <td>{product.name_pro}</td>
                                        <td>{product.cat_pro}</td>
                                        <td>{product.price_pro}</td>
                                        <td>{product.barcode_pro}</td>
                                        <td>{product.id_supp1}</td>
                                    </tr>
                                ))
                            }                            
                        </tbody>
                    </table>
                  )
                }
            </div>
            <div>
            <button
            onClick={handleView}>
                Registrar
            </button>
                {/* Resultado de productos: <span>{products}</span> */}
                {products_view.length > 0 && (
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Descripción</th>
                                <th>Brand</th>
                                <th>Category</th>
                                <th>Modelo</th>
                                <th>Precio</th>
                            </tr>                            
                        </thead>
                        <tbody>
                            {
                                products_view.map( (product) => (
                                <tr key={product.product_id}>
                                    <td>{product.product_id}</td>
                                    <td>{product.product_name}</td>
                                    <td>{product.product_description}</td>
                                    <td>{product.brand_name}</td> {/* Corregido: usar 'brand_name' en lugar de 'product_brand' */}
                                    <td>{product.category_name}</td> {/* Corregido: usar 'category_name' en lugar de 'product_category' */}
                                    <td>{product.model_year}</td> {/* Corregido: usar 'model_year' en lugar de 'product_model' */}
                                    <td>{product.list_price}</td> {/* Corregido: usar 'list_price' en lugar de 'product_precio' */}
                                </tr>
                                ))
                            }                            
                        </tbody>
                    </table>
                  )
                }
            </div>
            <div>
                <button
                onClick={handleSearch2}>
                    Transaccion2
                </button>
                {supplier.length > 0 && (
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Appellido</th>
                                <th>Marca</th>
                                <th>Telefono</th>
                                <th>Comision</th>
                            </tr>                            
                        </thead>
                        <tbody>
                            {
                                supplier.map( (supplier) => (
                                <tr key={supplier.id_supp}>
                                    <td>{supplier.name_supp}</td>
                                    <td>{supplier.app_supp}</td>
                                    <td>{supplier.brand_supp}</td>
                                    <td>{supplier.tel_supp}</td>
                                    <td>{supplier.com_supp}</td> 
                                </tr>
                                ))
                            }                            
                        </tbody>
                    </table>
                  )
                }
            </div>
        </div>        
    );
}

export default Operaciones;

