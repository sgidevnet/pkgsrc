# $NetBSD: Makefile,v 1.70 2016/05/01 04:54:01 mef Exp $

DISTNAME=	cue-snap-20151214
PKGNAME=	${DISTNAME:S/snap-//}
CATEGORIES=	mail
MASTER_SITES=	ftp://sh.wide.ad.jp/WIDE/free-ware/cue/snap/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	# not available
COMMENT=	Mh-e like mail user agent
LICENSE=	modified-bsd

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-openssl=${SSLBASE:Q}
CONFIGURE_ARGS+=	--with-zlib=${BUILDLINK_PREFIX.zlib}
INSTALLATION_DIRS+=	bin share/doc/cue share/examples/cue

CPPFLAGS.SunOS+=	-Du_int8_t=uint8_t

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cue ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/sample.cuerc \
		${DESTDIR}${PREFIX}/share/examples/cue
	${INSTALL_DATA} ${WRKSRC}/cue.hlp ${DESTDIR}${PREFIX}/share/doc/cue

.include "options.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
