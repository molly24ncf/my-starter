FROM ghcr.io/rocker-org/devcontainer/tidyverse:4.5

# One package of your own, so this is provably YOUR image.
RUN R -q -e 'install.packages("praise")'

# Smoke test: fail the build if the package did not install.
RUN R -q -e 'stopifnot(requireNamespace("praise"))'
