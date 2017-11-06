.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$11;
.super Landroid/content/BroadcastReceiver;
.source "PlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$11;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, "action":Ljava/lang/String;
    const-string v1, "UiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAudioStateChangedListener - action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$11;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$900(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1191
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    const/4 v3, -0x1

    .line 1193
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1194
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$11;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$900(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;->updateVolumeUi()V

    .line 1195
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$11;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1000(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    .line 1199
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1200
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$11;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$900(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;->updateVolumeUi()V

    .line 1204
    :cond_1
    const-string v1, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1205
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$11;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$900(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1206
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$11;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$900(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;->updateVolumeUi()V

    .line 1208
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$11;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1100(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1209
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$11;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1100(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->updateUhqUpscalerView(Z)V

    .line 1211
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$11;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1000(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    .line 1213
    :cond_4
    return-void
.end method
