FROM archlinux:base-devel

RUN pacman -Syu --noconfirm namcap

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
