
FROM node:16


WORKDIR /app


COPY . .


RUN corepack enable && corepack prepare pnpm@8.6.0 --activate
RUN pnpm install --frozen-lockfile


RUN pnpm build


EXPOSE 5678


CMD ["pnpm", "start"]
