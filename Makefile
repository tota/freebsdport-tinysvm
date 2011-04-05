# New ports collection makefile for:	tinysvm
# Date created:		2011-04-05
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD$
#

PORTNAME=	tinysvm
PORTVERSION=	0.09
CATEGORIES=	science
MASTER_SITES=	http://chasen.org/~taku/software/TinySVM/src/ \
		${MASTER_SITE_LOCAL:S|%SUBDIR%|tota/tinysvm|}
DISTNAME=	TinySVM-${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	TinySVM is an implementation of Support Vector Machines

LICENSE=	LGPL21
LICENSE_FILE=	${WRKSRC}/COPYING

HAS_CONFIGURE=	yes
PORTDOCS=	*.html *.css

MAN1=	tinysvm_classify.1 tinysvm_learn.1 tinysvm_model.1

post-configure:
.for man1 in ${MAN1:S/tiny//}
	@${MV} ${WRKSRC}/man/${man1} ${WRKSRC}/man/tiny${man1}
.endfor

.if !defined(NOPORTDOCS)
post-install:
	${MKDIR} ${DOCSDIR}
	cd ${INSTALL_WRKSRC}/doc; ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
