-- AlterTable
ALTER TABLE `link` ADD COLUMN     `postedById` INTEGER;

-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `profession` VARCHAR(191) NOT NULL,
    `onvacation` BOOLEAN NOT NULL,
UNIQUE INDEX `User.email_unique`(`email`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Link` ADD FOREIGN KEY (`postedById`) REFERENCES `User`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;