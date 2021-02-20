FROM archlinux:base-devel-20210131.0.14634

RUN pacman -Syu --noconfirm namcap

COPY entrypoint.sh /entrypoint.sh
COPY makepkg.conf /makepkg.conf

ENTRYPOINT ["/entrypoint.sh"]
