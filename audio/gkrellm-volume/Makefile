# $NetBSD: Makefile,v 1.62 2018/11/14 22:21:01 kleink Exp $

DISTNAME=	gkrellm-volume-2.1.13
PKGREVISION=	36
CATEGORIES=	audio
MASTER_SITES=	http://gkrellm.luon.net/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	http://gkrellm.luon.net/volume.phtml
COMMENT=	Gkrellm2 volume mixer plugin
LICENSE=	gnu-gpl-v2

USE_TOOLS+=		gmake msgfmt pkg-config
USE_PKGLOCALEDIR=	YES
WRKSRC=			${WRKDIR}/gkrellm-volume

MAKE_ENV+=	LOCALEDIR=${PREFIX}/${PKGLOCALEDIR}/locale \
		enable_nls=1

INSTALLATION_DIRS+=	lib/gkrellm2/plugins
INSTALL_MAKE_FLAGS+=	PREFIX=${DESTDIR}${PREFIX} \
			LOCALEDIR=${DESTDIR}${PREFIX}/${PKGLOCALEDIR}/locale

.include "../../sysutils/gkrellm/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/oss.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
