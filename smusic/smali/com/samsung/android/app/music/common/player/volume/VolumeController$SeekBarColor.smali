.class Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;
.super Ljava/lang/Object;
.source "VolumeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/volume/VolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SeekBarColor"
.end annotation


# instance fields
.field public final backgroundColor:I

.field public final progressColor:I

.field public final thumbColor:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "thumbColor"    # I
    .param p2, "progressColor"    # I
    .param p3, "backgroundColor"    # I

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput p1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;->thumbColor:I

    .line 448
    iput p2, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;->progressColor:I

    .line 449
    iput p3, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$SeekBarColor;->backgroundColor:I

    .line 450
    return-void
.end method
