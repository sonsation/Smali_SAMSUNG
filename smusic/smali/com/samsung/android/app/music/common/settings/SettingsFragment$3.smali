.class Lcom/samsung/android/app/music/common/settings/SettingsFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$3;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1313
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1314
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MusicSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreferencesUpdaterReceiver - action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v1, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1316
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$3;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$400(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    const-string v1, "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$3;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$500(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    .line 1319
    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$3;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$600(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V

    goto :goto_0
.end method
