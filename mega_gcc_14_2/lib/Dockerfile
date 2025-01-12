FROM mega_gcc_14_2_base

# boost 1.86
RUN mkdir /thirdparty/boost
COPY --chown=foobar:foobar  lib/boost /thirdparty/boost
WORKDIR /thirdparty/boost
RUN ./static_release.sh

# pybind11 2.13
RUN mkdir /thirdparty/pybind11
COPY --chown=foobar:foobar lib/pybind11 /thirdparty/pybind11
WORKDIR /thirdparty/pybind11
RUN ./static_release.sh

# gtest 1.15.2
RUN mkdir /thirdparty/gtest
COPY --chown=foobar:foobar lib/gtest /thirdparty/gtest
WORKDIR /thirdparty/gtest
RUN ./static_release.sh

# Google Benchmark 1.9.1
RUN mkdir /thirdparty/benchmark
COPY --chown=foobar:foobar lib/benchmark /thirdparty/benchmark
WORKDIR /thirdparty/benchmark
RUN ./static_release.sh

# fmt 11.0.2
RUN mkdir /thirdparty/fmt
COPY --chown=foobar:foobar lib/fmt /thirdparty/fmt
WORKDIR /thirdparty/fmt
RUN ./static_release.sh

# json 3.11.3
RUN mkdir /thirdparty/nlohmann
COPY --chown=foobar:foobar lib/nlohmann /thirdparty/nlohmann
WORKDIR /thirdparty/nlohmann
RUN ./static_release.sh

# Inja 3.4.0
RUN mkdir /thirdparty/inja
COPY --chown=foobar:foobar lib/inja /thirdparty/inja
WORKDIR /thirdparty/inja
RUN ./static_release.sh

