# $NetBSD: Makefile,v 1.9 2020/02/13 13:48:38 jperkin Exp $

DISTNAME=	watchdog-0.10.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	sysutils python
MASTER_SITES=	${MASTER_SITE_PYPI:=w/watchdog/}

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	https://github.com/gorakhargosh/watchdog
COMMENT=	Filesystem events monitoring
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-argh>=0.24.1:../../devel/py-argh
DEPENDS+=	${PYPKGPREFIX}-pathtools>=0.1.1:../../sysutils/py-pathtools
DEPENDS+=	${PYPKGPREFIX}-yaml>=3.10:../../textproc/py-yaml
TEST_DEPENDS+=	${PYPKGPREFIX}-test-[0-9]*:../../devel/py-test
TEST_DEPENDS+=	${PYPKGPREFIX}-test-cov-[0-9]*:../../devel/py-test-cov
TEST_DEPENDS+=	${PYPKGPREFIX}-test-runner-[0-9]*:../../devel/py-test-runner
TEST_DEPENDS+=	${PYPKGPREFIX}-test-timeout>=0.3:../../devel/py-test-timeout

# This creates huge issues as every recursive dependency of this package would
# also need a conditional exclusion of python27 on macOS.
#.include "../../mk/bsd.prefs.mk"
#.if ${OPSYS} == "Darwin"
#PYTHON_VERSIONS_INCOMPATIBLE=	27
#DEPENDS+=	${PYPKGPREFIX}-pyobjc-framework-FSEvents>=4.2.2:../../devel/py-pyobjc-framework-FSEvents
#.endif

PYSETUPTESTTARGET=	pytest

post-install:
	cd ${DESTDIR}${PREFIX}/bin && ${MV} watchmedo watchmedo-${PYVERSSUFFIX} || ${TRUE}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
