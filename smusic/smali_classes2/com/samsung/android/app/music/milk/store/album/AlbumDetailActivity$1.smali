.class Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$1;
.super Ljava/lang/Object;
.source "AlbumDetailActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderScrolled(II)V
    .locals 3
    .param p1, "scrollOffset"    # I
    .param p2, "visiblePercent"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;->access$000(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailActivity;)Landroid/view/View;

    move-result-object v0

    int-to-float v1, p2

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 169
    return-void
.end method
