# $NetBSD: Makefile,v 1.14 2018/03/07 11:57:37 wiz Exp $

DISTNAME=		libXvMC-1.0.10
PKGREVISION=		1
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_XORG:=lib/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		XVideo Motion Compensation Library
LICENSE=		mit

USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
GNU_CONFIGURE=		yes

PKGCONFIG_OVERRIDE+=	xvmc.pc.in

CONFIGURE_ARGS.NetBSD+=	--disable-malloc0returnsnull

.include "../../meta-pkgs/modular-xorg/hacks.mk"

BUILDLINK_API_DEPENDS.libX11+=	libX11>=1.6
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXv/buildlink3.mk"
.include "../../x11/xorgproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
