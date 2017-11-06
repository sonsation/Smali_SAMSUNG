.class final Lcom/samsung/android/sdk/accessory/SAServiceAgent$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAServiceAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAServiceAgent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x800

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "[SA_SDK]SAServiceAgent"

    const-string v1, "onFrameworkDisconnected: mBackgroundWorker is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$a;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->f(Lcom/samsung/android/sdk/accessory/SAServiceAgent;)V

    return-void
.end method
