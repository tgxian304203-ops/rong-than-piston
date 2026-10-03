FROM ghcr.io/engineer-man/piston:latest

USER root

RUN /piston/piston ppman install python=3.10.0 || true
RUN /piston/piston ppman install javascript=18.15.0 || true
RUN /piston/piston ppman install bash=5.2.0 || true

USER piston

EXPOSE 2000
