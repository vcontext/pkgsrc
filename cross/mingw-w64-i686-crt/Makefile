# $NetBSD: Makefile,v 1.6 2019/12/29 01:08:13 ryoon Exp $

.include "../../cross/mingw-w64-x86_64-crt/Makefile.common"

PKGNAME=		${DISTNAME:S/mingw-w64-v/mingw-w64-i686-crt-/}
COMMENT=		Mingw-w64 C runtime for win32 cross-development

BUILD_DEPENDS+=		mingw-w64-i686-gcc-bootstrap-[0-9]*:../../cross/mingw-w64-i686-gcc-bootstrap

MINGW_TARGET=		${MINGW_W64_32_TARGET}
CONFIGURE_ARGS+=	--enable-lib32
CONFIGURE_ARGS+=	--disable-lib64

.include "../../cross/mingw-w64-i686-headers/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
