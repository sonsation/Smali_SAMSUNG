.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;
.super Landroid/os/Handler;
.source "SamsungBillingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UPCallbackHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 737
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$1;

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 741
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 742
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 743
    const-string v3, "SamsungBilling"

    const-string v4, "handleMessage v.20104, data is not null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 745
    .local v1, "responseCode":I
    const-string v3, "RESPONSE_MESSAGE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, "responseMessage":Ljava/lang/String;
    const-string v3, "SamsungBilling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage v.20104, responseCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", responseMessage ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 776
    const-string v3, "SamsungBilling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle UP callback. v20104, unknown message : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    .end local v1    # "responseCode":I
    .end local v2    # "responseMessage":Ljava/lang/String;
    :goto_0
    return-void

    .line 750
    :cond_0
    const-string v3, "SamsungBilling"

    const-string v4, "handleMessage : data is null!"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 756
    .restart local v1    # "responseCode":I
    .restart local v2    # "responseMessage":Ljava/lang/String;
    :sswitch_0
    const-string v3, "SamsungBilling"

    const-string v4, "handle UP callback. v20104, UPHelper.UP_CLIENT_OK"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 761
    :sswitch_1
    const-string v3, "SamsungBilling"

    const-string v4, "handle UP callback. v20104 Handler : UPHelper.UP_CLIENT_FAIL"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :sswitch_2
    const-string v3, "SamsungBilling"

    const-string v4, "handle UP callback. v20104, UPHelper.AIDL_RESULT_FAIL"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :sswitch_3
    const-string v3, "SamsungBilling"

    const-string v4, "handle UP callback. v20104, UPHelper.AIDL_RESULT_ERROR"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 753
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xa -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method
