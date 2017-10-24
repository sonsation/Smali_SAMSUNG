.class Lcom/android/keyguard/KnoxStateMonitor$2;
.super Landroid/os/Handler;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KnoxStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KnoxStateMonitor;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 288
    :pswitch_0
    const-string/jumbo v0, "KnoxStateMonitor"

    const-string/jumbo v1, "ignore message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 225
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap9(Lcom/android/keyguard/KnoxStateMonitor;Z)V

    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap2(Lcom/android/keyguard/KnoxStateMonitor;I)V

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap0(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 234
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap4(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 237
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap6(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 240
    :pswitch_6
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap5(Lcom/android/keyguard/KnoxStateMonitor;I)V

    goto :goto_0

    .line 243
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap7(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 246
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap11(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 249
    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap10(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 252
    :pswitch_a
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap14(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 255
    :pswitch_b
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap15(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 258
    :pswitch_c
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap16(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 261
    :pswitch_d
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap20(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 264
    :pswitch_e
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap19(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 267
    :pswitch_f
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap17(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 270
    :pswitch_10
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap18(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 273
    :pswitch_11
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap12(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto :goto_0

    .line 276
    :pswitch_12
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap8(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto/16 :goto_0

    .line 279
    :pswitch_13
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap1(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto/16 :goto_0

    .line 282
    :pswitch_14
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap13(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto/16 :goto_0

    .line 285
    :pswitch_15
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$2;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-wrap3(Lcom/android/keyguard/KnoxStateMonitor;)V

    goto/16 :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x138a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
