.class Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$1;
.super Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$1;->this$0:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-direct {p0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVectorChanged(FFFFFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "tiltRangeX"    # F
    .param p4, "tiltRangeY"    # F
    .param p5, "rangeX"    # F
    .param p6, "rangeY"    # F

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$1;->this$0:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-static {v0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->access$000(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;)Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$1;->this$0:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-static {v0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->access$000(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;)Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->access$100(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;FFFFFF)V

    .line 44
    :cond_0
    return-void
.end method
