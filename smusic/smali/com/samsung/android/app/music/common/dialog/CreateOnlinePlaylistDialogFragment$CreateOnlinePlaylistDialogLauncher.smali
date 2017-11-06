.class public Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistDialogLauncher;
.super Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;
.source "CreateOnlinePlaylistDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateOnlinePlaylistDialogLauncher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Activity;[JZZLjava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "ids"    # [J
    .param p2, "finishActivity"    # Z
    .param p3, "launchTrackActivity"    # Z
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p0}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistDialogLauncher;->checkNetwork(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistDialogLauncher;->checkAccount(Landroid/app/Activity;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->access$000([JZZ)Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;

    move-result-object v0

    .line 211
    .local v0, "f":Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
