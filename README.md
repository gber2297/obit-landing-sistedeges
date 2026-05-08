# OBIT — landing estática

Repositorio: [github.com/gber2297/obit-landing-sistedeges](https://github.com/gber2297/obit-landing-sistedeges)

Repo pensado **solo** para publicar la landing (HTML + assets). El contenido fuente se edita en el monorepo CRM y se **regenera** aquí.

## Regenerar desde el CRM (`importedtrends/`)

Desde la carpeta `importedtrends/`:

```bash
npm run landing:build
```

(o `./scripts/sync-obit-landing-site.sh`)

Eso escribe en esta carpeta (hermana de `importedtrends/`): `index.html`, `app/images/`, `public/`.

## Despliegue

**Netlify / Vercel / Cloudflare Pages:** conectá **este** repositorio; root `.`; sin build command; publish `.`

**EasyPanel (ZIP / Dockerfile):** el repo incluye un **`Dockerfile`** que usa **nginx:alpine** y copia `index.html`, `app/` y `public/` a `/usr/share/nginx/html`. Empaquetá el proyecto **sin** `.git` (o usá el `.dockerignore` ya definido al hacer `docker build`). En EasyPanel: servicio tipo Docker build desde este contexto, puerto interno **80**.

Dominio (ej. `sistemadegestion.obitsoftware.com`): dominio custom en el panel del host + **CNAME** en el DNS de `obitsoftware.com`.
