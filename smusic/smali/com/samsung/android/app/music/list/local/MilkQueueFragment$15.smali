.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$15;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$15;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 2
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$15;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$15;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$400(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$2402(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)Z

    .line 1143
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$15;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$15;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$2200(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->setOnlineContentDisabled(Z)V

    .line 1144
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$15;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$15;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$2500(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)V

    .line 1145
    return-void

    .line 1144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
