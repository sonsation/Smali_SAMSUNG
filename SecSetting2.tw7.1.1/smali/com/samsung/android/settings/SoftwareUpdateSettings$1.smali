.class Lcom/samsung/android/settings/SoftwareUpdateSettings$1;
.super Landroid/os/CountDownTimer;
.source "SoftwareUpdateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SoftwareUpdateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SoftwareUpdateSettings;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SoftwareUpdateSettings;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$1;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 184
    const-string/jumbo v1, "SoftwareUpdateSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNoResponseTimer timed out when waiting for message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 185
    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$1;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get7(Lcom/samsung/android/settings/SoftwareUpdateSettings;)I

    move-result v3

    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$1;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get0(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$1;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get7(Lcom/samsung/android/settings/SoftwareUpdateSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 188
    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$1;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get0(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 179
    const-string/jumbo v0, "SoftwareUpdateSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNoResponseTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " onTick + seconds remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    .line 179
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method
