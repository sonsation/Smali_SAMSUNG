.class Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$3;
.super Ljava/lang/Object;
.source "ArtistDetailAlbumFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 166
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->access$200(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;)Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v0

    .line 167
    .local v0, "marginBottom":I
    if-ltz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$3;->val$view:Landroid/view/View;

    const v5, 0x7f1203b1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->access$300(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->access$400(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->access$500(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;I[Landroid/view/View;)V

    .line 169
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->access$200(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;)Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 171
    :cond_0
    return-void
.end method
