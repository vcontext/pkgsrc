# $NetBSD: Makefile,v 1.98 2020/03/10 22:10:31 wiz Exp $

META_PACKAGE=	yes

PKGREVISION= 2
.include "Makefile.common"

DISTNAME=	xfce4-${XFCE4_VERSION}
CATEGORIES=	meta-pkgs
COMMENT=	Xfce

DEPENDS+=	xfce4-tumbler>=0.2.7:../../x11/xfce4-tumbler
DEPENDS+=	xfce4-appfinder>=4.14.0:../../sysutils/xfce4-appfinder
DEPENDS+=	xfce4-desktop>=4.14.1:../../x11/xfce4-desktop
DEPENDS+=	xfce4-mousepad>=0.4.2:../../editors/xfce4-mousepad
DEPENDS+=	xfce4-panel>=4.14.0:../../x11/xfce4-panel
DEPENDS+=	xfce4-power-manager>=1.6.5:../../sysutils/xfce4-power-manager
DEPENDS+=	xfce4-orage>=4.12.1:../../time/xfce4-orage
DEPENDS+=	xfce4-settings>=4.14.0:../../x11/xfce4-settings
DEPENDS+=	xfce4-session>=4.14.0:../../x11/xfce4-session
DEPENDS+=	xfce4-terminal>=0.8.8:../../x11/xfce4-terminal
DEPENDS+=	xfce4-thunar>=1.8.9:../../sysutils/xfce4-thunar
DEPENDS+=	xfce4-wm>=4.14.0:../../wm/xfce4-wm
DEPENDS+=	xfce4-wm-themes>=4.10.0:../../wm/xfce4-wm-themes
DEPENDS+=	xfce4-xarchiver>=0.5.4:../../sysutils/xfce4-xarchiver
DEPENDS+=	elementary-xfce-icon-theme>=0.5:../../graphics/elementary-xfce-icon-theme
DEPENDS+=	xdg-utils-[0-9]*:../../misc/xdg-utils
DEPENDS+=	gnome-themes-standard>=3.20.2:../../graphics/gnome-themes-standard

pre-extract:
	${MKDIR} ${WRKSRC}

.include "../../mk/bsd.pkg.mk"
