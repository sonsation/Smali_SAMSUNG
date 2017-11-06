.class public final Lcom/samsung/android/app/music/provider/DrmType;
.super Ljava/lang/Object;
.source "DrmType.java"


# static fields
.field private static final DISPLAYED_NAME_DRM:Ljava/lang/String; = "DRM"

.field private static final DISPLAYED_NAME_NONE:Ljava/lang/String; = "NONE"

.field public static final MELON:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MILK:I = 0x2

.field public static final NONE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDisplayName(I)Ljava/lang/String;
    .locals 1
    .param p0, "drmType"    # I

    .prologue
    .line 16
    packed-switch p0, :pswitch_data_0

    .line 24
    const-string v0, "NONE"

    :goto_0
    return-object v0

    .line 18
    :pswitch_0
    const-string v0, "DRM"

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
