.class Lcom/samsung/android/settings/notification/SoundModeSettings$9;
.super Landroid/content/BroadcastReceiver;
.source "SoundModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundModeSettings;->registerListenersAndObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/SoundModeSettings;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$9;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$9;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap1(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    .line 397
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$9;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap2(Lcom/samsung/android/settings/notification/SoundModeSettings;I)V

    .line 393
    :cond_0
    return-void
.end method
