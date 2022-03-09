-- CreateTable
CREATE TABLE "Deliveryles" (
    "id" TEXT NOT NULL,
    "item_name" TEXT NOT NULL,
    "id_client" TEXT NOT NULL,
    "id_deliveryman" TEXT NOT NULL,
    "creat_At" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "end_At" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Deliveryles_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Deliveryles" ADD CONSTRAINT "Deliveryles_id_deliveryman_fkey" FOREIGN KEY ("id_deliveryman") REFERENCES "deliveryman"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Deliveryles" ADD CONSTRAINT "Deliveryles_id_client_fkey" FOREIGN KEY ("id_client") REFERENCES "clients"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
