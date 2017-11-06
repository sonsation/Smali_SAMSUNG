.class Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;
.super Landroid/os/ResultReceiver;


# instance fields
.field private a:I

.field private b:[I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v0, "CallBackJson"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string v0, "[SA_SDK]SAFileTransferCallbackReceiver"

    const-string v1, "Wrong resultCode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/samsung/accessory/safiletransfer/a/g;

    invoke-direct {v1}, Lcom/samsung/accessory/safiletransfer/a/g;-><init>()V

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/samsung/accessory/safiletransfer/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/a/g;->a()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/a/g;->b()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    iget v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/samsung/accessory/safiletransfer/a/f;

    invoke-direct {v1}, Lcom/samsung/accessory/safiletransfer/a/f;-><init>()V

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/samsung/accessory/safiletransfer/a/f;->a(Ljava/lang/Object;)V

    const-string v0, "[SA_SDK]SAFileTransferCallbackReceiver"

    const-string v2, "Transfer Complete"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/a/f;->a()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/a/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/a/f;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    iget v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a(ILjava/lang/String;I)V

    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    iget v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a(ILjava/lang/String;I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :pswitch_2
    const-string v1, "[SA_SDK]SAFileTransferCallbackReceiver"

    const-string v2, "FT Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/accessory/safiletransfer/a/d;

    invoke-direct {v1}, Lcom/samsung/accessory/safiletransfer/a/d;-><init>()V

    :try_start_3
    invoke-virtual {v1, v0}, Lcom/samsung/accessory/safiletransfer/a/d;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/a/d;->a()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/a/d;->b()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    iget v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a(ILjava/lang/String;I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    iput v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    iput-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->c:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->d:Ljava/lang/String;

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :pswitch_3
    const-string v1, "[SA_SDK]SAFileTransferCallbackReceiver"

    const-string v2, "FT Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/accessory/safiletransfer/a/e;

    invoke-direct {v1}, Lcom/samsung/accessory/safiletransfer/a/e;-><init>()V

    :try_start_4
    invoke-virtual {v1, v0}, Lcom/samsung/accessory/safiletransfer/a/e;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/a/e;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->b:[I

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/a/e;->b()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->e:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->b:[I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;->a([II)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    iput v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->a:I

    iput-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->c:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->d:Ljava/lang/String;

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
