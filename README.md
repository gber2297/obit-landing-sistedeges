# OBIT — landing estática

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

Dominio (ej. `sistemadegestion.obitsoftware.com`): dominio custom en el panel del host + **CNAME** en el DNS de `obitsoftware.com`.
