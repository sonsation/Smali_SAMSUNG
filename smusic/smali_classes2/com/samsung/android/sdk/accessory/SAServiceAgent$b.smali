.class final Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAServiceAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAServiceAgent;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "[SA_SDK]SAServiceAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid msg received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->a(Lcom/samsung/android/sdk/accessory/SAServiceAgent;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[SA_SDK]SAServiceAgent"

    const-string v3, "Binding to Accessory Framework failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/c;->a()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->b(Lcom/samsung/android/sdk/accessory/SAServiceAgent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->c(Lcom/samsung/android/sdk/accessory/SAServiceAgent;)V

    goto :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->onPeerAgentsUpdated([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->a(Lcom/samsung/android/sdk/accessory/SAServiceAgent;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->a(Lcom/samsung/android/sdk/accessory/SAServiceAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->b(Lcom/samsung/android/sdk/accessory/SAServiceAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->c(Lcom/samsung/android/sdk/accessory/SAServiceAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->d(Lcom/samsung/android/sdk/accessory/SAServiceAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->a(Lcom/samsung/android/sdk/accessory/SAServiceAgent;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->a(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->d(Lcom/samsung/android/sdk/accessory/SAServiceAgent;)V

    goto/16 :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
