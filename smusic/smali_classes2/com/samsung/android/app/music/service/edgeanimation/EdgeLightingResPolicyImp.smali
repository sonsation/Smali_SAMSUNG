.class public Lcom/samsung/android/app/music/service/edgeanimation/EdgeLightingResPolicyImp;
.super Ljava/lang/Object;
.source "EdgeLightingResPolicyImp.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/edgelighting/IEdgeLightingResPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertCpAttrsToUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "cpAttrs"    # I

    .prologue
    .line 12
    invoke-static {p1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getImageSizeResId()I
    .locals 1

    .prologue
    .line 17
    const v0, 0x7f0d0064

    return v0
.end method

.method public getStrokeWithResId()I
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f0d04b2

    return v0
.end method
