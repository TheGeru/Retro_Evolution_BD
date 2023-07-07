/*
  Warnings:

  - The primary key for the `customer` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `city` on the `customer` table. All the data in the column will be lost.
  - You are about to drop the column `customer_id` on the `customer` table. All the data in the column will be lost.
  - You are about to drop the column `email` on the `customer` table. All the data in the column will be lost.
  - You are about to drop the column `first_name` on the `customer` table. All the data in the column will be lost.
  - You are about to drop the column `last_name` on the `customer` table. All the data in the column will be lost.
  - You are about to drop the column `maternal_surname` on the `customer` table. All the data in the column will be lost.
  - You are about to drop the column `number_street` on the `customer` table. All the data in the column will be lost.
  - You are about to drop the column `paternal_surname` on the `customer` table. All the data in the column will be lost.
  - You are about to drop the column `phone` on the `customer` table. All the data in the column will be lost.
  - You are about to drop the column `rfc_customer` on the `customer` table. All the data in the column will be lost.
  - You are about to drop the column `state` on the `customer` table. All the data in the column will be lost.
  - You are about to drop the column `street` on the `customer` table. All the data in the column will be lost.
  - You are about to drop the column `zip_code` on the `customer` table. All the data in the column will be lost.
  - The primary key for the `product` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `brand_id` on the `product` table. All the data in the column will be lost.
  - You are about to drop the column `category_id` on the `product` table. All the data in the column will be lost.
  - You are about to drop the column `list_price` on the `product` table. All the data in the column will be lost.
  - You are about to drop the column `model_year` on the `product` table. All the data in the column will be lost.
  - You are about to drop the column `product_description` on the `product` table. All the data in the column will be lost.
  - You are about to drop the column `product_id` on the `product` table. All the data in the column will be lost.
  - You are about to drop the column `product_name` on the `product` table. All the data in the column will be lost.
  - The primary key for the `stock` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `product_id` on the `stock` table. All the data in the column will be lost.
  - You are about to drop the column `quantity` on the `stock` table. All the data in the column will be lost.
  - You are about to drop the column `store_id` on the `stock` table. All the data in the column will be lost.
  - The primary key for the `store` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `city` on the `store` table. All the data in the column will be lost.
  - You are about to drop the column `email` on the `store` table. All the data in the column will be lost.
  - You are about to drop the column `number_street` on the `store` table. All the data in the column will be lost.
  - You are about to drop the column `phone` on the `store` table. All the data in the column will be lost.
  - You are about to drop the column `rfc_store` on the `store` table. All the data in the column will be lost.
  - You are about to drop the column `state` on the `store` table. All the data in the column will be lost.
  - You are about to drop the column `store_id` on the `store` table. All the data in the column will be lost.
  - You are about to drop the column `store_name` on the `store` table. All the data in the column will be lost.
  - You are about to drop the column `street` on the `store` table. All the data in the column will be lost.
  - You are about to drop the column `zip_code` on the `store` table. All the data in the column will be lost.
  - You are about to drop the `brand` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `category` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `sale` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `sale_item` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `staff` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `add_cus` to the `Customer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `app_cus` to the `Customer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `codpos_cus` to the `Customer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id_cus` to the `Customer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `mail_cus` to the `Customer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name_cus` to the `Customer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rfc_cus` to the `Customer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tel_cus` to the `Customer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `barcod_pro` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cat_pro` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id_pro` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id_supp1` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name_pro` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price_pro` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `year_pro` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cant_stock` to the `Stock` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id_pro2` to the `Stock` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id_stock` to the `Stock` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id_store1` to the `Stock` table without a default value. This is not possible if the table is not empty.
  - Added the required column `add_store` to the `Store` table without a default value. This is not possible if the table is not empty.
  - Added the required column `codpo_store` to the `Store` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id_store` to the `Store` table without a default value. This is not possible if the table is not empty.
  - Added the required column `mail_store` to the `Store` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tel_store` to the `Store` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `product` DROP FOREIGN KEY `product_brand_id_fkey`;

-- DropForeignKey
ALTER TABLE `product` DROP FOREIGN KEY `product_category_id_fkey`;

-- DropForeignKey
ALTER TABLE `sale` DROP FOREIGN KEY `sale_customer_id_fkey`;

-- DropForeignKey
ALTER TABLE `sale` DROP FOREIGN KEY `sale_staff_id_fkey`;

-- DropForeignKey
ALTER TABLE `sale` DROP FOREIGN KEY `sale_store_id_fkey`;

-- DropForeignKey
ALTER TABLE `sale_item` DROP FOREIGN KEY `sale_item_sale_id_fkey`;

-- DropForeignKey
ALTER TABLE `staff` DROP FOREIGN KEY `staff_store_id_fkey`;

-- DropForeignKey
ALTER TABLE `stock` DROP FOREIGN KEY `stock_store_id_fkey`;

-- AlterTable
ALTER TABLE `customer` DROP PRIMARY KEY,
    DROP COLUMN `city`,
    DROP COLUMN `customer_id`,
    DROP COLUMN `email`,
    DROP COLUMN `first_name`,
    DROP COLUMN `last_name`,
    DROP COLUMN `maternal_surname`,
    DROP COLUMN `number_street`,
    DROP COLUMN `paternal_surname`,
    DROP COLUMN `phone`,
    DROP COLUMN `rfc_customer`,
    DROP COLUMN `state`,
    DROP COLUMN `street`,
    DROP COLUMN `zip_code`,
    ADD COLUMN `add_cus` VARCHAR(191) NOT NULL,
    ADD COLUMN `app_cus` VARCHAR(191) NOT NULL,
    ADD COLUMN `codpos_cus` VARCHAR(191) NOT NULL,
    ADD COLUMN `id_cus` INTEGER NOT NULL,
    ADD COLUMN `mail_cus` VARCHAR(191) NOT NULL,
    ADD COLUMN `name_cus` VARCHAR(191) NOT NULL,
    ADD COLUMN `rfc_cus` VARCHAR(191) NOT NULL,
    ADD COLUMN `tel_cus` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`id_cus`);

-- AlterTable
ALTER TABLE `product` DROP PRIMARY KEY,
    DROP COLUMN `brand_id`,
    DROP COLUMN `category_id`,
    DROP COLUMN `list_price`,
    DROP COLUMN `model_year`,
    DROP COLUMN `product_description`,
    DROP COLUMN `product_id`,
    DROP COLUMN `product_name`,
    ADD COLUMN `barcod_pro` VARCHAR(191) NOT NULL,
    ADD COLUMN `cat_pro` VARCHAR(191) NOT NULL,
    ADD COLUMN `id_pro` INTEGER NOT NULL,
    ADD COLUMN `id_supp1` INTEGER NOT NULL,
    ADD COLUMN `name_pro` VARCHAR(191) NOT NULL,
    ADD COLUMN `price_pro` DOUBLE NOT NULL,
    ADD COLUMN `year_pro` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`id_pro`);

-- AlterTable
ALTER TABLE `stock` DROP PRIMARY KEY,
    DROP COLUMN `product_id`,
    DROP COLUMN `quantity`,
    DROP COLUMN `store_id`,
    ADD COLUMN `cant_stock` INTEGER NOT NULL,
    ADD COLUMN `id_pro2` INTEGER NOT NULL,
    ADD COLUMN `id_stock` INTEGER NOT NULL,
    ADD COLUMN `id_store1` INTEGER NOT NULL,
    ADD PRIMARY KEY (`id_stock`);

-- AlterTable
ALTER TABLE `store` DROP PRIMARY KEY,
    DROP COLUMN `city`,
    DROP COLUMN `email`,
    DROP COLUMN `number_street`,
    DROP COLUMN `phone`,
    DROP COLUMN `rfc_store`,
    DROP COLUMN `state`,
    DROP COLUMN `store_id`,
    DROP COLUMN `store_name`,
    DROP COLUMN `street`,
    DROP COLUMN `zip_code`,
    ADD COLUMN `add_store` VARCHAR(191) NOT NULL,
    ADD COLUMN `codpo_store` VARCHAR(191) NOT NULL,
    ADD COLUMN `id_store` INTEGER NOT NULL,
    ADD COLUMN `mail_store` VARCHAR(191) NOT NULL,
    ADD COLUMN `tel_store` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`id_store`);

-- DropTable
DROP TABLE `brand`;

-- DropTable
DROP TABLE `category`;

-- DropTable
DROP TABLE `sale`;

-- DropTable
DROP TABLE `sale_item`;

-- DropTable
DROP TABLE `staff`;

-- CreateTable
CREATE TABLE `Supplier` (
    `id_supp` INTEGER NOT NULL,
    `name_supp` VARCHAR(191) NOT NULL,
    `app_supp` VARCHAR(191) NOT NULL,
    `brand_supp` VARCHAR(191) NOT NULL,
    `tel_supp` VARCHAR(191) NOT NULL,
    `com_supp` DOUBLE NOT NULL,

    PRIMARY KEY (`id_supp`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Employee` (
    `id_emp` INTEGER NOT NULL,
    `codpos_emp` VARCHAR(191) NOT NULL,
    `name_emp` VARCHAR(191) NOT NULL,
    `app_emp` VARCHAR(191) NOT NULL,
    `tel_emp` VARCHAR(191) NOT NULL,
    `sal_emp` DOUBLE NOT NULL,
    `add_emp` VARCHAR(191) NOT NULL,
    `mail_emp` VARCHAR(191) NOT NULL,
    `rfc_emp` VARCHAR(191) NOT NULL,
    `status_emp` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_emp`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Purchase` (
    `id_pur` INTEGER NOT NULL,
    `total_pur` DOUBLE NOT NULL,
    `date_pur` DATETIME(3) NOT NULL,
    `cantpor_pur` INTEGER NOT NULL,
    `id_emp1` INTEGER NOT NULL,
    `id_cus1` INTEGER NOT NULL,
    `id_pro1` INTEGER NOT NULL,

    PRIMARY KEY (`id_pur`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Product` ADD CONSTRAINT `Product_id_supp1_fkey` FOREIGN KEY (`id_supp1`) REFERENCES `Supplier`(`id_supp`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Purchase` ADD CONSTRAINT `Purchase_id_emp1_fkey` FOREIGN KEY (`id_emp1`) REFERENCES `Employee`(`id_emp`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Purchase` ADD CONSTRAINT `Purchase_id_cus1_fkey` FOREIGN KEY (`id_cus1`) REFERENCES `Customer`(`id_cus`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Purchase` ADD CONSTRAINT `Purchase_id_pro1_fkey` FOREIGN KEY (`id_pro1`) REFERENCES `Product`(`id_pro`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Stock` ADD CONSTRAINT `Stock_id_pro2_fkey` FOREIGN KEY (`id_pro2`) REFERENCES `Product`(`id_pro`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Stock` ADD CONSTRAINT `Stock_id_store1_fkey` FOREIGN KEY (`id_store1`) REFERENCES `Store`(`id_store`) ON DELETE RESTRICT ON UPDATE CASCADE;
