.class Lcom/android/server/FMRadioService$9;
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
    .line 722
    iput-object p1, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private off()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 740
    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    const-string/jumbo v0, "mSystemReceiver2 force stop : making off FM"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-wrap8(Lcom/android/server/FMRadioService;)V

    .line 743
    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 744
    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    const/4 v1, 0x6

    invoke-static {v0, v2, v1, v2}, Lcom/android/server/FMRadioService;->-wrap0(Lcom/android/server/FMRadioService;ZIZ)Z

    .line 739
    :goto_0
    return-void

    .line 746
    :cond_0
    const-string/jumbo v0, "mSystemReceiver2  : remove audiofocus"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-get5(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 724
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v3, "com.samsung.applock.intent.action.APP_LOCK_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 726
    const-string/jumbo v0, "package_name"

    .line 727
    .local v0, "PACKAGE_NAME":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "com.sec.android.app.fm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 729
    iget-object v3, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/FMRadioService;->-set5(Lcom/android/server/FMRadioService;Z)Z

    .line 730
    iget-object v3, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    iput-boolean v5, v3, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    .line 731
    invoke-direct {p0}, Lcom/android/server/FMRadioService$9;->off()V

    .line 732
    iget-object v3, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-get30(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 733
    iget-object v3, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v5}, Lcom/android/server/FMRadioService;->-set15(Lcom/android/server/FMRadioService;Z)Z

    .line 734
    iget-object v3, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-wrap4(Lcom/android/server/FMRadioService;)V

    .line 723
    .end local v0    # "PACKAGE_NAME":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
