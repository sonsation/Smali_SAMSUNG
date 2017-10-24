.class Lcom/android/systemui/qs/tiles/SoundModeTile$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/SoundModeTile;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 84
    const-string/jumbo v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const-string/jumbo v2, "android.media.EXTRA_RINGER_MODE"

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "profile":I
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_TEMPORARY_MUTE:Z

    if-eqz v2, :cond_3

    .line 87
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mode_ringer_time_on"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 88
    .local v0, "isTempMuteOn":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTile;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isTempMuteOn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mode_ringer_time_on"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 91
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setMuteInterval(I)V

    .line 96
    .end local v0    # "isTempMuteOn":Z
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->refreshState()V

    .line 83
    .end local v1    # "profile":I
    :cond_1
    return-void

    .line 87
    .restart local v1    # "profile":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isTempMuteOn":Z
    goto :goto_0

    .line 94
    .end local v0    # "isTempMuteOn":Z
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTile;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
