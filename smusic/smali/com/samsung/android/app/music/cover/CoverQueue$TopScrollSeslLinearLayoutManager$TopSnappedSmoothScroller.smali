.class Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager$TopSnappedSmoothScroller;
.super Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;
.source "CoverQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopSnappedSmoothScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager$TopSnappedSmoothScroller;->this$0:Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager;

    .line 65
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 66
    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager$TopSnappedSmoothScroller;->this$0:Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollSeslLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, -0x1

    return v0
.end method
