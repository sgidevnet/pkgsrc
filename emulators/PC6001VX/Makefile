# $NetBSD: Makefile,v 1.30 2018/12/31 21:43:58 tsutsui Exp $

VERSION=		3.1.1
DISTNAME=		PC6001VX_${VERSION}_src
PKGNAME=		${DISTNAME:S/_src//:S/_/-/}
#PKGREVISION=		
CATEGORIES=		emulators
MASTER_SITES=		http://eighttails.up.seesaa.net/bin/

MAINTAINER=		tsutsui@NetBSD.org
HOMEPAGE=		http://eighttails.seesaa.net/
COMMENT=		Cross platform PC-6001 emulator
LICENSE=		gnu-lgpl-v2.1

USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
USE_LANGUAGES=		c c++

INSTALLATION_DIRS+=	bin share/doc/PC6001VX

.include "options.mk"

do-configure:
	cd ${WRKSRC} && ${PKGSRC_SETENV} ${CONFIGURE_ENV} \
		${QTDIR}/bin/qmake -o Makefile ${QMAKE_ARGS} PC6001VX.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/PC6001VX \
	    ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README.html \
	    ${DESTDIR}${PREFIX}/share/doc/PC6001VX

.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../x11/qt5-qtmultimedia/buildlink3.mk"
.include "../../x11/qt5-qtx11extras/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
