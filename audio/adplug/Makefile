# $NetBSD: Makefile,v 1.11 2020/05/21 13:39:55 nia Exp $

DISTNAME=	adplug-2.3.2
CATEGORIES=	audio devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=adplug/}
GITHUB_RELEASE=	${PKGNAME_NOREV}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	fcambus@NetBSD.org
HOMEPAGE=	https://github.com/adplug/adplug/
COMMENT=	AdLib emulator library supporting many formats
LICENSE=	gnu-lgpl-v2.1

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++
INFO_FILES=	yes

PKGCONFIG_OVERRIDE+=	adplug.pc.in

.include "../../devel/libbinio/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
