.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$2;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->initViewCreatePlaylist(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1054
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->access$900(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1056
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "103"

    const-string v5, "1046"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .line 1060
    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->access$1000(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .line 1061
    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->access$1100(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1062
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .line 1063
    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->access$1200(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v3, v8, v6, v7, v4}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistDialogLauncher;->show(Landroid/app/Activity;[JZZLjava/lang/String;)V

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->access$1300(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1067
    .local v1, "fm":Landroid/app/FragmentManager;
    const-string v3, "CreatePlaylistDialogFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1068
    .local v0, "fg":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 1070
    invoke-static {v8, v6, v7}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getNewInstance([JZZ)Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;

    move-result-object v2

    .line 1071
    .local v2, "fragment":Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->access$1400(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1072
    const-string v3, "CreatePlaylistDialogFragment"

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
