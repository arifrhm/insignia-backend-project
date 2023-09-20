/*
  Warnings:

  - You are about to drop the column `Account` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `ApiToken` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `Session` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `emailVerified` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `lastActivityAt` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `password` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `role` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `workspace` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `workspaceId` on the `User` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX `User_emailVerified_key` ON `User`;

-- AlterTable
ALTER TABLE `User` DROP COLUMN `Account`,
    DROP COLUMN `ApiToken`,
    DROP COLUMN `Session`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `emailVerified`,
    DROP COLUMN `lastActivityAt`,
    DROP COLUMN `password`,
    DROP COLUMN `role`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `workspace`,
    DROP COLUMN `workspaceId`,
    MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    MODIFY `name` VARCHAR(191) NULL,
    ADD PRIMARY KEY (`id`);
