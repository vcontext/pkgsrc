# $NetBSD: Makefile,v 1.15 2019/08/11 13:24:45 wiz Exp $

DISTNAME=	HTTP-Negotiate-6.01
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	8
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTTP/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/HTTP-Negotiate
COMMENT=	Negotiate HTTP service parameters
LICENSE=	${PERL5_LICENSE}

CONFLICTS+=	p5-libwww<6.00

DEPENDS+=	p5-HTTP-Message>=6.02:../../www/p5-HTTP-Message

PERL5_PACKLIST=		auto/HTTP/Negotiate/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
