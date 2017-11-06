.class Lcom/samsung/android/sdk/accessory/SAServiceAgent$AuthenticationCallback;
.super Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAServiceAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthenticationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAServiceAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAServiceAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAServiceAgent;Lcom/samsung/android/sdk/accessory/SAServiceAgent$AuthenticationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAServiceAgent$AuthenticationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAServiceAgent;)V

    return-void
.end method


# virtual methods
.method public onPeerAgentAuthenticated(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[SA_SDK]SAServiceAgent"

    const-string v1, "Received Authentication response"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAServiceAgent$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAServiceAgent;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAServiceAgent;->a:Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAServiceAgent$b;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "[SA_SDK]SAServiceAgent"

    const-string v1, "onPeerAgentAuthenticated: mBackgroundWorker is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
