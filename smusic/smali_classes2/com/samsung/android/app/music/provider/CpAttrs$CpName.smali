.class public Lcom/samsung/android/app/music/provider/CpAttrs$CpName;
.super Ljava/lang/Object;
.source "CpAttrs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/CpAttrs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpName"
.end annotation


# static fields
.field public static final DLNA:I = 0x20000

.field public static final LOCAL:I = 0x10000

.field public static final MASK:I = 0xf0000

.field public static final MELON:I = 0x40000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MILK:I = 0x80000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
