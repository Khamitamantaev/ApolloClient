/*
  Warnings:

  - You are about to drop the column `profession` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `onvacation` on the `user` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `user` DROP COLUMN `profession`,
    DROP COLUMN `onvacation`;
