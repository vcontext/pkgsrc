# $NetBSD: Makefile,v 1.29 2020/01/18 23:30:25 rillig Exp $

DISTNAME=	cppunit-1.15.1
CATEGORIES=	devel
MASTER_SITES=	http://dev-www.libreoffice.org/src/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.freedesktop.org/wiki/Software/cppunit
COMMENT=	C++ unit testing framework
LICENSE=	gnu-lgpl-v2.1

USE_LANGUAGES=		c c++11
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake
GNU_CONFIGURE=		yes

PKGCONFIG_OVERRIDE=	cppunit.pc.in

.include "options.mk"

.include "../../mk/bsd.pkg.mk"
