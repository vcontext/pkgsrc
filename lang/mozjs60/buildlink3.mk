# $NetBSD: buildlink3.mk,v 1.3 2020/04/12 08:27:58 adam Exp $

BUILDLINK_TREE+=	mozjs60

.if !defined(MOZJS60_BUILDLINK3_MK)
MOZJS60_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mozjs60+=	mozjs60>=60.8.0
BUILDLINK_ABI_DEPENDS.mozjs60+=	mozjs60>=60.8.0nb2
BUILDLINK_PKGSRCDIR.mozjs60?=	../../lang/mozjs60

.include "../../devel/zlib/buildlink3.mk"
.include "../../textproc/icu/buildlink3.mk"
.endif	# MOZJS60_BUILDLINK3_MK

BUILDLINK_TREE+=	-mozjs60
