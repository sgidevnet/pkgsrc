# $NetBSD: Makefile,v 1.15 2018/08/22 09:47:33 wiz Exp $

DISTNAME=	Catalyst-Engine-PSGI-0.14
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Catalyst-Engine-PSGI/
COMMENT=	Perl 5 PSGI engine for Catalyst
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Catalyst-Action-RenderView-[0-9]*:../../www/p5-Catalyst-Action-RenderView
DEPENDS+=	p5-Catalyst-Runtime>=5.80007:../../www/p5-Catalyst-Runtime
DEPENDS+=	p5-Package-DeprecationManager-[0-9]*:../../devel/p5-Package-DeprecationManager

BUILD_DEPENDS+=	p5-Test-TCP-[0-9]*:../../net/p5-Test-TCP
BUILD_DEPENDS+=	p5-Test-Requires-[0-9]*:../../devel/p5-Test-Requires
BUILD_DEPENDS+=	p5-Plack-[0-9]*:../../www/p5-Plack

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Catalyst/Engine/PSGI/.packlist
PERL5_MODULE_TYPE=	Module::Build::Tiny

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
