//const { PrismaClient } = require('@prisma/client');

//const prisma = new PrismaClient();

//async function createNewProductTransaction(supplierData, productData) {
    //try {
        //await prisma.$transaction(async (prisma) => {

            //const newSupplier = await prisma.supplier.create({
                //data: supplierData,
            //});

            //const newProduct = await prisma.product.create({
                //data: {
                    //...productData,
                    //id_supp1: newSupplier.id_supp,
                //},
            //});

            //console.log('transaccion completada con exito');

            //return{
            //supplier: newSupplier,
            //producto: newProduct
            //}
        //});
    //} catch (error) 
    //{
        //console.error('Error al realizar la actualizacion: ', error);

    //} finally {
        //await prisma.$disconnect();
    //}
//}


//const supplierData = {
    //id_supp: '223423232',
    //name_supp: 'Daniel',
    //app_supp: 'Hernandez',
    //brand_supp: 'Microsoft',
    //tel_supp: '4124129010',
    //com_supp: 100,
//};

//const productData = {
    //id_pro: '9991123',
    //name_pro: 'The legen of zelda Twiling princess',
    //cat_pro: 'Adventure',
    //price_pro: 1200,
    //barcode_pro: 'ANDF120I2MAO',
    //year_pro: '2010',
    //id_supp1: '223423232',
//};

//createNewProductTransaction(supplierData, productData);

const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();

export default async function handler(req, res) {
  let transaction;

  try {
    transaction = await prisma.$transaction([
        prisma.supplier.create({
            data: {
              id_supp: 7771231,
              name_supp: 'MuestraPaPapiChema',
              app_supp: 'ejemplo1',
              brand_supp: 'Microsoft',
              tel_supp: '456567890',
              com_supp: 20000.0,
            },
          }),

      prisma.product.create({
        data: {
          id_pro: 999781231,
          name_pro: 'MuestraPaChemita2',
          cat_pro: '24',
          price_pro: 2550.0,
          barcod_pro: '88856789012',
          year_pro: '2004',
          id_supp1: 7771231,
        },
      }),
    ]);

    console.log('Transaction committed successfully.');
  } catch (error) {
    console.error('Transaction failed:', error);
    if (transaction) {
      console.log('Rolling back transaction...');
      await prisma.$queryRaw('ROLLBACK');
      console.log('Transaction rolled back.');
    }
  } finally {
    await prisma.$disconnect();
  }
}