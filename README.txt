True-Scale Solar System, with deep zoom and the full Milky Way.

Windows:   double-click start-windows.bat  (a window opens; keep it open while you use the page)
Mac/Linux: run start-mac-linux.command (needs Python 3)

It opens http://localhost:8765/ in your browser. The page loads its fonts and two code libraries (three.js and
satellite.js) from public CDNs, and, the first time Earth's satellites are on screen, current satellite orbits
from a daily copy on GitHub (raw.githubusercontent.com,
kept up to date by .github/workflows/update-tle.yml) or, failing that, from celestrak.org directly (at most once every
six hours; a copy is kept in your browser). Nothing else goes over the internet.
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

Beyond the solar system (3D view; zoom out, or use View > Go to)
- Every Hipparcos star within about 1,000 light years, then the Milky Way (a model: bar, bulge, four arms and the
  Orion Spur, sized from measurements), the Local Group and nearby galaxies with measured distances (706 of them),
  the galaxy web out to 1.6 billion light years, SDSS's slices of the cosmic web out to 8.6 billion light years, and
  the edge of the observable universe (46.5 billion light years) wearing the cosmic microwave background.
- The SDSS slice (sky/sdss.bin) and the CMB need the local server, like the 8k Milky Way.

Data credits
- Stars: HYG database v4.1 (astronexus, CC BY-SA 4.0).
- Galaxies: Updated Nearby Galaxy Catalog (Karachentsev, Makarov & Kaisina 2013, AJ 145, 101) via NASA HEASARC;
  position angles from RC3 (de Vaucouleurs et al. 1991) via HEASARC; M32 and Canis Major distances from NED.
- 6dF Galaxy Survey, final release: Jones et al. 2004, MNRAS 355, 747; Jones et al. 2009, MNRAS 399, 683
  (includes some 2dFGRS redshifts: Colless et al. 2001, MNRAS 328, 1039).
- SDSS DR7 main galaxy sample (Abazajian et al. 2009; Strauss et al. 2002) via the MPA-JHU catalogue (Brinchmann et al.
  2004; Kauffmann et al. 2003), and SDSS-III BOSS DR12 (CMASS+LOWZ). Funding for the SDSS and SDSS-II has been provided
  by the Alfred P. Sloan Foundation, the Participating Institutions, the National Science Foundation, the U.S.
  Department of Energy, the National Aeronautics and Space Administration, the Japanese Monbukagakusho, the Max Planck
  Society, and the Higher Education Funding Council for England. Funding for SDSS-III has been provided by the Alfred
  P. Sloan Foundation, the Participating Institutions, the National Science Foundation, and the U.S. Department of
  Energy Office of Science. http://www.sdss.org/ and http://www.sdss3.org/
- Redshifts become distances for a flat universe with H0 = 70 km/s/Mpc and Omega_m = 0.3 (comoving distance).

The scale journey (button "Quark to universe", or View > Go to)
- Zooms out one power of ten at a time from 10^-16 m, around a quark, to 10^27 m, the whole observable universe.
- Below a few kilometres the scenes are nested in each other: quarks, a proton, a carbon nucleus, a carbon atom, DNA,
  a chromosome (drawn illustrations), then a cell, cheek tissue, a fingerprint, a palm and a person (real photographs
  drawn at true size, with the illustrations underneath as a fallback), then a park. From there the real 3D view
  takes over, directly above the place set for the sky view (Seoul unless you change it), at local noon.
- Journey photographs (journey/*.webp, from Wikimedia Commons; cropped, edges feathered, palm background removed):
  person: "Woman making leaf 'angel' (Originally 8-4-10)" by alexisnyal, CC BY 2.0
  palm: "Boys palm" by Jiajitan, CC0 1.0
  fingerprint: "HK asian human thumb fingerprint September 2024 R12S 01" by BioMicroV 002 JL, CC0 1.0
  cheek cells: "Buccal Epithelium Cells" by Bondarev.gal, CC BY 4.0
  cell: "Macrophage in the alveolus Lung - TEM" by Louisa Howard, Dartmouth Electron Microscope Facility, public domain
  Source pages and how each scale was measured are in journey/journey.json.
- Pause, scrub, change the speed or exit with the controls; scrolling moves through the scales; Esc exits and puts
  the date back.
