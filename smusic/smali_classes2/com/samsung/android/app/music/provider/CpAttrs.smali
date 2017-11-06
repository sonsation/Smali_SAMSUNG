.class public Lcom/samsung/android/app/music/provider/CpAttrs;
.super Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;
.source "CpAttrs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/CpAttrs$CpName;
    }
.end annotation


# static fields
.field public static final DLNA:I = 0x20004

.field public static final LOCAL:I = 0x10001

.field public static final MELON:I = 0x40002
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MILK_DRM:I = 0x80001

.field public static final MILK_MOD:I = 0x80002

.field public static final MILK_VIRTUAL:I = 0x80008


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;-><init>()V

    return-void
.end method

.method public static getCpName(I)I
    .locals 1
    .param p0, "attrs"    # I

    .prologue
    .line 22
    const/high16 v0, 0xf0000

    and-int/2addr v0, p0

    return v0
.end method
