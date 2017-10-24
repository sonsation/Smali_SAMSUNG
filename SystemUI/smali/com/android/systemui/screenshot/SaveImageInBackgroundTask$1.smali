.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionResult(Z)V
    .locals 5
    .param p1, "isSuccess"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 250
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get3(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get5(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->disconnect()V

    .line 252
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1, v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-set1(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 253
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1, v3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-set0(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z

    .line 254
    invoke-static {}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SaveImageInBackgroundTask : Disconnect ScrollCapture service because saving image failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return-void

    .line 256
    :cond_0
    if-eqz p1, :cond_1

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "originId"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get1(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string/jumbo v1, "rotation"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get4(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get5(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get6(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get2(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->notifyGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 262
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    invoke-static {}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SaveImageInBackgroundTask : Failed to connect to ScrollCapture service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1, v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-set1(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 264
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1, v3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-set0(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z

    goto :goto_0
.end method
