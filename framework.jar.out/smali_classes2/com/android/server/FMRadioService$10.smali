.class Lcom/android/server/FMRadioService$10;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private off()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 780
    iget-object v0, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const-string/jumbo v0, "mSystemReceiver1 force stop : making off FM"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-wrap8(Lcom/android/server/FMRadioService;)V

    .line 783
    iget-object v0, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 784
    iget-object v0, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    const/4 v1, 0x6

    invoke-static {v0, v2, v1, v2}, Lcom/android/server/FMRadioService;->-wrap0(Lcom/android/server/FMRadioService;ZIZ)Z

    .line 779
    :goto_0
    return-void

    .line 786
    :cond_0
    const-string/jumbo v0, "mSystemReceiver1 : remove audiofocus"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-get5(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 754
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 756
    .local v1, "extraDontKillApp":Ljava/lang/Boolean;
    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 757
    const-string/jumbo v4, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 756
    if-nez v4, :cond_1

    .line 758
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 760
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "com.sec.android.app.fm"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 762
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_SupportNextRadio"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 763
    const-string/jumbo v4, "com.nextradioapp.nextradio"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 761
    if-eqz v4, :cond_3

    .line 764
    :cond_2
    iget-object v4, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/FMRadioService;->-set5(Lcom/android/server/FMRadioService;Z)Z

    .line 765
    iget-object v4, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    iput-boolean v6, v4, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    .line 766
    invoke-direct {p0}, Lcom/android/server/FMRadioService$10;->off()V

    .line 767
    iget-object v4, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get30(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 768
    iget-object v4, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4, v6}, Lcom/android/server/FMRadioService;->-set15(Lcom/android/server/FMRadioService;Z)Z

    .line 769
    iget-object v4, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-wrap4(Lcom/android/server/FMRadioService;)V

    goto :goto_0

    .line 772
    :cond_3
    const-string/jumbo v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    iget-boolean v4, v4, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 773
    iget-object v4, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get5(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 774
    iget-object v4, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    iput-boolean v6, v4, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    goto :goto_0
.end method
