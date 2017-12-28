.class Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;
.super Ljava/lang/Object;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TiltValue"
.end annotation


# instance fields
.field mTiltRangeX:F

.field mTiltRangeY:F

.field mWallpaperRangeX:F

.field mWallpaperRangeY:F

.field mX:F

.field mY:F


# direct methods
.method constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "t_x_range"    # F
    .param p4, "t_y_range"    # F
    .param p5, "x_range"    # F
    .param p6, "y_range"    # F

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mX:F

    .line 146
    iput p2, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mY:F

    .line 147
    iput p3, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mTiltRangeX:F

    .line 148
    iput p4, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mTiltRangeY:F

    .line 149
    iput p5, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mWallpaperRangeX:F

    .line 150
    iput p6, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mWallpaperRangeY:F

    .line 151
    return-void
.end method
