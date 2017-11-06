.class Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment$1;
.super Ljava/lang/Object;
.source "ArtistDetailMVFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "listView"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "position"    # I

    .prologue
    .line 94
    const-string v1, "ArtistDetailMVFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->access$000(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->access$000(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;->getItemCount()I

    move-result v1

    if-ge p4, v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;

    .line 105
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->access$000(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;

    move-result-object v0

    .line 107
    .local v0, "artistDetailMusicVideo":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 108
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->getMvId()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->isExplicit()Z

    move-result v4

    .line 107
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
