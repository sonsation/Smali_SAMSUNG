.class Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;
.super Landroid/os/Handler;
.source "ClearCoverServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 145
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 146
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 149
    .local v1, "oldCount":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 150
    .local v0, "newCount":I
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notification count changed: oldCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " newCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-nez v1, :cond_1

    if-lez v0, :cond_1

    .line 152
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap1(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)V

    goto :goto_0

    .line 153
    :cond_1
    if-lez v1, :cond_0

    if-nez v0, :cond_0

    .line 154
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v2, v5}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap1(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
