.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$14;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


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
    .line 1127
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$14;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1130
    const-string v0, "my_music_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$14;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$2102(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)Z

    .line 1132
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$14;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$14;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$2200(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->setOnlineContentDisabled(Z)V

    .line 1133
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$14;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$14;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$2100(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$2300(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)V

    .line 1135
    :cond_0
    return-void

    .line 1133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
