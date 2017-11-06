.class public Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;
.super Ljava/lang/Object;
.source "VolumeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/volume/VolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanelLook"
.end annotation


# instance fields
.field public final backgroundId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public final heightId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field public final layoutId:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field public final widthId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "widthId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p3, "heightId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p4, "backgroundId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput p1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;->layoutId:I

    .line 433
    iput p2, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;->widthId:I

    .line 434
    iput p3, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;->heightId:I

    .line 435
    iput p4, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;->backgroundId:I

    .line 436
    return-void
.end method
