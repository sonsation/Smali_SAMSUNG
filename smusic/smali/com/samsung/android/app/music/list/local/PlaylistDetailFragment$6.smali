.class Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$6;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$6;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

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
    .line 782
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$6;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->access$1200(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    .line 783
    return-void
.end method
