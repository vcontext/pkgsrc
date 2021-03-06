# $NetBSD: Makefile,v 1.7 2020/01/26 17:31:13 rillig Exp $
#

DISTNAME=	dungeon-3.2b
PKGREVISION=	2
DISTFILES=	dungeon-gdt-glk.tar.gz \
		glkterm-080.tar.gz
CATEGORIES=	games
MASTER_SITES=	http://eblong.com/zarf/glk/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://eblong.com/zarf/glk/
COMMENT=	Classic game of Dungeon

# There really isn't any license in any of the source code or in the
# accompanying documentation, but the sources of many versions have
# been freely made available for many years with the assumption that
# the "No commercial use" comment following the copyright statement
# implies a license to use in non-commercial applications.  We'll adopt
# that implication here.

LICENSE=		dungeon-license
RESTRICTED=		No license to redistribute
NO_BIN_ON_CDROM=	${RESTRICTED}
NO_BIN_ON_FTP=		${RESTRICTED}
NO_SRC_ON_CDROM=	${RESTRICTED}
NO_SRC_ON_FTP=		${RESTRICTED}

WRKSRC=		${WRKDIR}
DATADIR=	${PREFIX}/share/dungeon

MAKE_FLAGS+=	DATADIR=${DATADIR}

PKG_OPTIONS_VAR=	PKG_OPTIONS.dungeon
PKG_SUPPORTED_OPTIONS=	dungeon-gdt

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mdungeon-gdt)
MAKE_ENV+=	GDT_FLAG=-DHAVE_GDT
.endif

# Before we build the game itself, we need to build the glkterm library
BUILD_DIRS=	glkterm dungeon-gdt

INSTALLATION_DIRS+=	bin ${DATADIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dungeon-gdt/dungeon ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/dungeon-gdt/dundat ${DESTDIR}${DATADIR}/

.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
