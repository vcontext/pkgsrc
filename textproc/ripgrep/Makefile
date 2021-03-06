# $NetBSD: Makefile,v 1.8 2020/01/19 18:20:46 maya Exp $

DISTNAME=	ripgrep-11.0.2
CATEGORIES=	textproc
EXTRACT_SUFX=	.crate

MAINTAINER=	maya@NetBSD.org
HOMEPAGE=	https://github.com/BurntSushi/ripgrep/
COMMENT=	Line-oriented search tool
LICENSE=	unlicense

WRKSRC=		${WRKDIR}/${PKGNAME}
USE_LANGUAGES=	c

CARGO_CRATE_DEPENDS+=	aho-corasick-0.7.4
CARGO_CRATE_DEPENDS+=	atty-0.2.13
CARGO_CRATE_DEPENDS+=	base64-0.10.1
CARGO_CRATE_DEPENDS+=	bitflags-1.1.0
CARGO_CRATE_DEPENDS+=	bstr-0.2.6
CARGO_CRATE_DEPENDS+=	bytecount-0.5.1
CARGO_CRATE_DEPENDS+=	byteorder-1.3.2
CARGO_CRATE_DEPENDS+=	cc-1.0.38
CARGO_CRATE_DEPENDS+=	cfg-if-0.1.9
CARGO_CRATE_DEPENDS+=	clap-2.33.0
CARGO_CRATE_DEPENDS+=	crossbeam-channel-0.3.9
CARGO_CRATE_DEPENDS+=	crossbeam-utils-0.6.6
CARGO_CRATE_DEPENDS+=	encoding_rs-0.8.17
CARGO_CRATE_DEPENDS+=	encoding_rs_io-0.1.6
CARGO_CRATE_DEPENDS+=	fnv-1.0.6
CARGO_CRATE_DEPENDS+=	fs_extra-1.1.0
CARGO_CRATE_DEPENDS+=	globset-0.4.4
CARGO_CRATE_DEPENDS+=	grep-0.2.4
CARGO_CRATE_DEPENDS+=	grep-cli-0.1.3
CARGO_CRATE_DEPENDS+=	grep-matcher-0.1.3
CARGO_CRATE_DEPENDS+=	grep-pcre2-0.1.3
CARGO_CRATE_DEPENDS+=	grep-printer-0.1.3
CARGO_CRATE_DEPENDS+=	grep-regex-0.1.4
CARGO_CRATE_DEPENDS+=	grep-searcher-0.1.5
CARGO_CRATE_DEPENDS+=	ignore-0.4.9
CARGO_CRATE_DEPENDS+=	itoa-0.4.4
CARGO_CRATE_DEPENDS+=	jemalloc-sys-0.3.2
CARGO_CRATE_DEPENDS+=	jemallocator-0.3.2
CARGO_CRATE_DEPENDS+=	lazy_static-1.3.0
CARGO_CRATE_DEPENDS+=	libc-0.2.60
CARGO_CRATE_DEPENDS+=	log-0.4.8
CARGO_CRATE_DEPENDS+=	memchr-2.2.1
CARGO_CRATE_DEPENDS+=	memmap-0.7.0
CARGO_CRATE_DEPENDS+=	num_cpus-1.10.1
CARGO_CRATE_DEPENDS+=	packed_simd-0.3.3
CARGO_CRATE_DEPENDS+=	pcre2-0.2.1
CARGO_CRATE_DEPENDS+=	pcre2-sys-0.2.2
CARGO_CRATE_DEPENDS+=	pkg-config-0.3.15
CARGO_CRATE_DEPENDS+=	proc-macro2-0.4.30
CARGO_CRATE_DEPENDS+=	quote-0.6.13
CARGO_CRATE_DEPENDS+=	regex-1.2.0
CARGO_CRATE_DEPENDS+=	regex-automata-0.1.8
CARGO_CRATE_DEPENDS+=	regex-syntax-0.6.10
CARGO_CRATE_DEPENDS+=	ryu-1.0.0
CARGO_CRATE_DEPENDS+=	same-file-1.0.5
CARGO_CRATE_DEPENDS+=	serde-1.0.98
CARGO_CRATE_DEPENDS+=	serde_derive-1.0.98
CARGO_CRATE_DEPENDS+=	serde_json-1.0.40
CARGO_CRATE_DEPENDS+=	strsim-0.8.0
CARGO_CRATE_DEPENDS+=	syn-0.15.42
CARGO_CRATE_DEPENDS+=	termcolor-1.0.5
CARGO_CRATE_DEPENDS+=	textwrap-0.11.0
CARGO_CRATE_DEPENDS+=	thread_local-0.3.6
CARGO_CRATE_DEPENDS+=	ucd-util-0.1.5
CARGO_CRATE_DEPENDS+=	unicode-width-0.1.5
CARGO_CRATE_DEPENDS+=	unicode-xid-0.1.0
CARGO_CRATE_DEPENDS+=	utf8-ranges-1.0.3
CARGO_CRATE_DEPENDS+=	walkdir-2.2.9
CARGO_CRATE_DEPENDS+=	winapi-0.3.7
CARGO_CRATE_DEPENDS+=	winapi-i686-pc-windows-gnu-0.4.0
CARGO_CRATE_DEPENDS+=	winapi-util-0.1.2
CARGO_CRATE_DEPENDS+=	winapi-x86_64-pc-windows-gnu-0.4.0
CARGO_CRATE_DEPENDS+=	wincolor-1.0.1

INSTALLATION_DIRS=	bin

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${PREFIX}/bin/cargo build --locked --frozen --release -j${_MAKE_JOBS_N}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/rg ${DESTDIR}${PREFIX}/bin

.include "../../lang/rust/cargo.mk"
.include "../../mk/bsd.pkg.mk"
