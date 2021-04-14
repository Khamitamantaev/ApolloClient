const { PrismaClient } = require("@prisma/client")

// 2
const prisma = new PrismaClient()

//3
async function main() {
  const newLink = await prisma.link.create({
    data:{
      description: 'My portfolio',
      url: 'www.khamitamantaev.com',
    },
  })

  const allLinks = await prisma.link.findMany()
  console.log(allLinks)
}

//4
main()
  .catch(e => {
    throw e
  })
  // 5
  .finally(async () => {
    await prisma.$disconnect()
  })