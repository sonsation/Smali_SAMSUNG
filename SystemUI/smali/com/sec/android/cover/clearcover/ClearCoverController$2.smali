.class Lcom/sec/android/cover/clearcover/ClearCoverController$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/clearcover/ClearCoverController;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v2, 0x3ea

    const/16 v4, 0x3e9

    .line 125
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "font_scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "display_density_forced"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDensityChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-get1(Lcom/sec/android/cover/clearcover/ClearCoverController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 137
    const-wide/16 v2, 0x7d0

    .line 136
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 124
    :cond_3
    return-void
.end method
