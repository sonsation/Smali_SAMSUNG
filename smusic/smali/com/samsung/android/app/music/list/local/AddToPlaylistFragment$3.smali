.class Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$3;
.super Ljava/lang/Object;
.source "AddToPlaylistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 1
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->updateUi()V

    .line 459
    return-void
.end method
