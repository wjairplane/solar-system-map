True-Scale Solar System, with deep zoom and the full Milky Way.

Windows:   double-click start-windows.bat  (a window opens; keep it open while you use the page)
Mac/Linux: run start-mac-linux.command (needs Python 3)

It opens http://localhost:8765/ in your browser. The page loads its fonts and two code libraries (three.js and
satellite.js) from public CDNs, and, the first time Earth's satellites are on screen, current satellite orbits
from celestrak.org (at most once every six hours; a copy is kept in your browser). Nothing else goes over the internet.
Double-clicking index.html directly also works, but without deep zoom and the 8k Milky Way,
because browsers block image tiles loaded from plain files.

What's in the 3D and sky views
- Sky from Earth: alt-az and RA-Dec grids, ecliptic, meridian, a ground you can switch off, atmospheric
  refraction, a light-pollution (Bortle) slider, and the whole sky at other wavelengths: radio, microwave
  (cosmic background), infrared, hydrogen-alpha, X-ray and gamma ray (sky/wave_*.webp, real survey maps;
  these need the local server, like the 8k Milky Way).
- Overlays in 3D: solar wind and heliosphere, auroras, Lagrange points, Roche limit and Hill sphere,
  solar eclipse paths on Earth, the day-night line, landing sites.
- Earth satellites use live CelesTrak orbits (SGP4) for dates within about six weeks of the download; for other
  dates, or offline, their positions along the orbits are illustrative.
- More things: 393 named and nearby stars (click them in the sky, or zoom far out in 3D to see the nearest
  at their real distances), the Oort cloud, Earth satellites, and true-size 3D models of the spacecraft
  (double-click a spacecraft twice to get close).
