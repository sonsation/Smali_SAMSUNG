.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter$PerspectiveConverter;
.super Ljava/lang/Object;
.source "CoordConverter.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerspectiveConverter"
.end annotation


# instance fields
.field private final mCameraDistance:F

.field private final mDistanceToProjection:F

.field private final mFov:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "cameraDistance"    # F
    .param p2, "distanceToProjection"    # F
    .param p3, "fov"    # F

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter$PerspectiveConverter;->mCameraDistance:F

    .line 47
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter$PerspectiveConverter;->mDistanceToProjection:F

    .line 48
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter$PerspectiveConverter;->mFov:F

    .line 49
    return-void
.end method


# virtual methods
.method public getPSize(I)F
    .locals 3
    .param p1, "screenSize"    # I

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter$PerspectiveConverter;->mCameraDistance:F

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter$PerspectiveConverter;->mDistanceToProjection:F

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter$PerspectiveConverter;->mFov:F

    .line 54
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->screenToPhysical(IFFF)F

    move-result v0

    return v0
.end method

.method public getSSize(F)I
    .locals 3
    .param p1, "pSize"    # F

    .prologue
    .line 59
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter$PerspectiveConverter;->mCameraDistance:F

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter$PerspectiveConverter;->mDistanceToProjection:F

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CoordConverter$PerspectiveConverter;->mFov:F

    .line 60
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/FrustumCamera;->physicalToScreen(FFFF)I

    move-result v0

    return v0
.end method
