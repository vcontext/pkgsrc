# $NetBSD: Makefile,v 1.15 2020/03/10 22:09:06 wiz Exp $

DISTNAME=	gtk-mac-integration-2.0.8
PKGREVISION=	8
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gtk-mac-integration/${PKGVERSION_NOREV:R}/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	https://www.gtk.org/download/macos.php
COMMENT=	OS X integration for GTK
LICENSE=	gnu-lgpl-v2.1

ONLY_FOR_PLATFORM=	Darwin-*-*

USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config #gmake
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-python

.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
