.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$5;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


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
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$5;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1613
    const-string v1, "my_music_mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1614
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$5;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->access$1902(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Z)Z

    .line 1615
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$5;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->access$2000(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1616
    .local v0, "menu":Landroid/view/Menu;
    if-eqz v0, :cond_0

    .line 1617
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$5;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->access$600(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/view/Menu;)V

    .line 1620
    .end local v0    # "menu":Landroid/view/Menu;
    :cond_0
    return-void
.end method
