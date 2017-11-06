.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$2;
.super Landroid/database/ContentObserver;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 616
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 617
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 618
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    const-string v1, "UiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPlaylistsObserver onChange() selfChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->access$300(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    goto :goto_0

    .line 628
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->access$400(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->access$400(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;->forceLoad()V

    goto :goto_0
.end method
