# $NetBSD: Makefile,v 1.5 2020/05/22 22:05:35 adam Exp $

DISTNAME=	terraform-provider-aws-2.63.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=terraform-providers/}
GITHUB_PROJECT=	${PKGBASE}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.terraform.io/docs/providers/aws/
COMMENT=	Terraform provider for Amazon Web Services
LICENSE=	mpl-2.0

DEPENDS+=	terraform-[0-9]*:../../net/terraform

UNLIMIT_RESOURCES=	datasize virtualsize

GO_DIST_BASE=	${DISTNAME}
GO_SRCPATH=	github.com/terraform-providers/${GITHUB_PROJECT}

USE_TOOLS+=	bash
REPLACE_BASH+=	scripts/*.sh

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
