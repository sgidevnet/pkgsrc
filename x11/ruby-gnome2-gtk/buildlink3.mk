# $NetBSD: buildlink3.mk,v 1.47 2018/11/22 17:23:08 jperkin Exp $

BUILDLINK_TREE+=	ruby-gnome2-gtk

.if !defined(RUBY_GNOME2_GTK_BUILDLINK3_MK)
RUBY_GNOME2_GTK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ruby-gnome2-gtk+=	${RUBY_PKGPREFIX}-gnome2-gtk>=0.17.0
BUILDLINK_ABI_DEPENDS.ruby-gnome2-gtk+=	${RUBY_PKGPREFIX}-gnome2-gtk>=3.3.0nb2
BUILDLINK_PKGSRCDIR.ruby-gnome2-gtk?=	../../x11/ruby-gnome2-gtk

.include "../../devel/ruby-gnome2-pango/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # RUBY_GNOME2_GTK_BUILDLINK3_MK

BUILDLINK_TREE+=	-ruby-gnome2-gtk
