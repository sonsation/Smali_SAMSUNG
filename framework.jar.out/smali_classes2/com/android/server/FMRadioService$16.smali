.class Lcom/android/server/FMRadioService$16;
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
    .line 947
    iput-object p1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 949
    const-string/jumbo v1, "reason"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 950
    .local v0, "reason":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEmergencyReceiver onReceive : reason- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 951
    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq v0, v5, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 952
    :cond_0
    const-string/jumbo v1, "mReceiver: EMERGENCY_STATE_CHANGED - fmradio off"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 953
    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-wrap8(Lcom/android/server/FMRadioService;)V

    .line 954
    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 955
    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1, v3, v6, v3}, Lcom/android/server/FMRadioService;->-wrap0(Lcom/android/server/FMRadioService;ZIZ)Z

    .line 948
    :cond_1
    :goto_0
    return-void

    .line 957
    :cond_2
    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eq v0, v5, :cond_3

    if-ne v0, v6, :cond_1

    .line 958
    :cond_3
    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1, v3}, Lcom/android/server/FMRadioService;->-set5(Lcom/android/server/FMRadioService;Z)Z

    .line 959
    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    iput-boolean v4, v1, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    .line 960
    const-string/jumbo v1, "force stop : remove audiofocus"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 961
    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get5(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method
