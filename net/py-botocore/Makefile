# $NetBSD: Makefile,v 1.26 2019/01/16 09:09:11 adam Exp $

DISTNAME=	botocore-1.12.79
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	net python
MASTER_SITES=	${MASTER_SITE_PYPI:=b/botocore/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/boto/botocore
COMMENT=	Low-level interface to a growing number of Amazon Web Services
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-dateutil>=2.5.3<3:../../time/py-dateutil
DEPENDS+=	${PYPKGPREFIX}-docutils>=0.12:../../textproc/py-docutils
DEPENDS+=	${PYPKGPREFIX}-jmespath>=0.7.1<1:../../textproc/py-jmespath
DEPENDS+=	${PYPKGPREFIX}-urllib3-[0-9]*:../../www/py-urllib3

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
