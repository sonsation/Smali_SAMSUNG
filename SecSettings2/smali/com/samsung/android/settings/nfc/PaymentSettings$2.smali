.class Lcom/samsung/android/settings/nfc/PaymentSettings$2;
.super Landroid/os/Handler;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/PaymentSettings;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$2;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 381
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PaymentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHandler.dispatchMessage / msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$2;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    .line 380
    return-void
.end method
