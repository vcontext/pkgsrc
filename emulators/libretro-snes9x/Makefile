# $NetBSD: Makefile,v 1.5 2020/05/26 09:45:16 nia Exp $

.include "../../emulators/snes9x/Makefile.common"

PKGNAME=	libretro-snes9x-${SNES9X_VERSION}

MAINTAINER=	nia@NetBSD.org
HOMEPAGE=	https://docs.libretro.com/library/snes9x/
COMMENT=	Libretro core based on the snes9x Super Nintendo emulator

BUILD_DIRS=	libretro

USE_TOOLS+=	gmake

OPSYSVARS+=	SOEXT
SOEXT.Darwin=	dylib
SOEXT.*=	so
PLIST_SUBST+=	SOEXT=${SOEXT}

MAKE_FLAGS+=	GIT_VERSION="-pkgsrc"
MAKE_FLAGS+=	LTO=

INSTALLATION_DIRS+=	${PREFIX}/lib/libretro

do-install:
	${INSTALL_LIB} ${WRKSRC}/libretro/snes9x_libretro.so \
	    ${DESTDIR}${PREFIX}/lib/libretro/snes9x_libretro.so

.include "../../mk/bsd.pkg.mk"
