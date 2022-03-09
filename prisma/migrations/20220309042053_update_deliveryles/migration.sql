/*
  Warnings:

  - You are about to drop the `Deliveryles` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Deliveryles" DROP CONSTRAINT "Deliveryles_id_client_fkey";

-- DropForeignKey
ALTER TABLE "Deliveryles" DROP CONSTRAINT "Deliveryles_id_deliveryman_fkey";

-- DropTable
DROP TABLE "Deliveryles";

-- CreateTable
CREATE TABLE "deliveryles" (
    "id" TEXT NOT NULL,
    "item_name" TEXT NOT NULL,
    "id_client" TEXT NOT NULL,
    "id_deliveryman" TEXT NOT NULL,
    "creat_At" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "end_At" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "deliveryles_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "deliveryles" ADD CONSTRAINT "deliveryles_id_deliveryman_fkey" FOREIGN KEY ("id_deliveryman") REFERENCES "deliveryman"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "deliveryles" ADD CONSTRAINT "deliveryles_id_client_fkey" FOREIGN KEY ("id_client") REFERENCES "clients"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
