.class Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;
.super Ljava/lang/Object;
.source "AlbumDetailFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 133
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->access$000(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;)Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v0

    .line 134
    .local v0, "marginBottom":I
    if-ltz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;->val$view:Landroid/view/View;

    const v5, 0x7f1203b1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->access$100(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->access$200(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->access$300(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;I[Landroid/view/View;)V

    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->access$000(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;)Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 138
    :cond_0
    return-void
.end method