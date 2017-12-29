.class final Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatterySaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatterySaverSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/BatterySaverSettings;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->this$0:Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/BatterySaverSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;-><init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-static {}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BatterySaverSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->this$0:Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->-get2(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->this$0:Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->-get5(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    const-string/jumbo v3, "status"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 203
    .local v1, "status":I
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->this$0:Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->-get3(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    .line 204
    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    .line 205
    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    const/4 v2, 0x1

    .line 203
    :cond_3
    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 209
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->mRegistered:Z

    if-eqz v1, :cond_2

    .line 215
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->mRegistered:Z

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->this$0:Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->-get1(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->mRegistered:Z

    .line 208
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v0, "ifilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->this$0:Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->-get1(Lcom/android/settings/fuelgauge/BatterySaverSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$Receiver;->mRegistered:Z

    goto :goto_0
.end method
