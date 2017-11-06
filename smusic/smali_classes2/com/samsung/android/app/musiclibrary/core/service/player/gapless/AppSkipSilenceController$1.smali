.class Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AppSkipSilenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string v4, "SMUSIC-SV-PlayerMedia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppSkipSilence: mSkipSilenceReceiver onReceive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    const-string/jumbo v4, "reason"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 85
    .local v2, "mode":I
    sget v4, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_DISABLED:I

    if-ne v2, v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;

    .line 87
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;)Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getSkipSilence()Z

    move-result v1

    .line 88
    .local v1, "isOn":Z
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;)Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v3

    .line 89
    .local v3, "player":Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;

    if-nez v3, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-static {v5, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;ZLjava/lang/String;)V

    .line 92
    .end local v1    # "isOn":Z
    .end local v2    # "mode":I
    .end local v3    # "player":Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
    :cond_0
    return-void

    .line 89
    .restart local v1    # "isOn":Z
    .restart local v2    # "mode":I
    .restart local v3    # "player":Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
