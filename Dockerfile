FROM archlinux:base-20210131.0.14634

RUN pacman -Syu --noconfirm base-devel namcap

COPY entrypoint.sh /entrypoint.sh
COPY makepkg.conf /makepkg.conf

ENTRYPOINT ["/entrypoint.sh"]
