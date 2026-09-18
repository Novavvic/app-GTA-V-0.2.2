This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/app/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.

## Learn More

To learn more about Next.js, take a look at the following resources:


You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.

## Publication sur GitHub Pages

Le workflow GitHub Actions publie automatiquement le dossier `out/` sur GitHub Pages. Les visiteurs ouvrent ensuite l'application dans leur navigateur sans installer Node.js et sans lancer de serveur local.

1. Envoie le projet sur GitHub.
2. Dans le depot, ouvre **Settings > Pages**.
3. Dans **Build and deployment**, selectionne **GitHub Actions**.
4. Attends la fin du workflow **Deploy to GitHub Pages**.

L'adresse sera generalement :

`https://TON_COMPTE.github.io/NOM_DU_DEPOT/`

Les donnees Prisma sont integrees au moment du build. Pour modifier les donnees publiees, modifie `prisma/seed.ts`, puis pousse un nouveau commit.
