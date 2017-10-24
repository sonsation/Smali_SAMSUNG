.class Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VolumeSettings;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VolumeSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;-><init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 539
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    const-string/jumbo v3, "VolumeSettings"

    const-string/jumbo v4, "onReceive : NotificationManager.ACTION_EFFECTS_SUPPRESSOR_CHANGED received"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/notification/VolumeSettings$H;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/VolumeSettings$H;->sendEmptyMessage(I)Z

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    const-string/jumbo v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 544
    const-string/jumbo v3, "VolumeSettings"

    const-string/jumbo v4, "onReceive : AudioManager.INTERNAL_RINGER_MODE_CHANGED_ACTION received"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/notification/VolumeSettings$H;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/VolumeSettings$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 546
    :cond_2
    const-string/jumbo v3, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    const-string/jumbo v3, "VolumeSettings"

    const-string/jumbo v4, "onReceive : NotificationManager.ACTION_INTERRUPTION_FILTER_CHANGED received"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 549
    .local v2, "progress":I
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get6(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/app/NotificationManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 550
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get6(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/notification/VolumeSettings;->-set0(Lcom/samsung/android/settings/notification/VolumeSettings;I)I

    .line 551
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 552
    .local v1, "msg":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 553
    const/4 v3, 0x6

    iput v3, v1, Landroid/os/Message;->what:I

    .line 554
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/notification/VolumeSettings$H;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/notification/VolumeSettings$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public register(Z)V
    .locals 2
    .param p1, "register"    # Z

    .prologue
    .line 524
    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->mRegistered:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 525
    :cond_0
    if-eqz p1, :cond_1

    .line 526
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 527
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get1(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 534
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->mRegistered:Z

    .line 523
    return-void

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get1(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
