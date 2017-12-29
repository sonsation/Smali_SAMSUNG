.class final Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "DreamyNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/DreamyNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/cover/DreamyNfcLedCoverController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    .line 104
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 103
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 109
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 111
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap9(Lcom/android/server/cover/DreamyNfcLedCoverController;)V

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v4, v5, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap8(Lcom/android/server/cover/DreamyNfcLedCoverController;I[B)V

    goto :goto_0

    .line 117
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v4, v5}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap2(Lcom/android/server/cover/DreamyNfcLedCoverController;II)V

    goto :goto_0

    .line 120
    :pswitch_4
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v1, :cond_1

    move v0, v1

    .line 121
    .local v0, "attach":Z
    :goto_1
    if-nez v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap1(Lcom/android/server/cover/DreamyNfcLedCoverController;)V

    goto :goto_0

    .end local v0    # "attach":Z
    :cond_1
    move v0, v4

    .line 120
    goto :goto_1

    .line 126
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v4, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap0(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    .line 129
    :pswitch_6
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v4, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap6(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    .line 132
    :pswitch_7
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v4, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap3(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    .line 135
    :pswitch_8
    const-wide/16 v2, 0x0

    .line 136
    .local v2, "whenNanos":J
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 137
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v1, v2, v3}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap7(Lcom/android/server/cover/DreamyNfcLedCoverController;J)V

    goto :goto_0

    .line 140
    .end local v2    # "whenNanos":J
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap4(Lcom/android/server/cover/DreamyNfcLedCoverController;)V

    goto :goto_0

    .line 143
    :pswitch_a
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v1, :cond_2

    :goto_2
    invoke-static {v5, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap10(Lcom/android/server/cover/DreamyNfcLedCoverController;Z)V

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_2

    .line 146
    :pswitch_b
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v1, :cond_3

    :goto_3
    invoke-static {v5, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap5(Lcom/android/server/cover/DreamyNfcLedCoverController;Z)V

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_3

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
