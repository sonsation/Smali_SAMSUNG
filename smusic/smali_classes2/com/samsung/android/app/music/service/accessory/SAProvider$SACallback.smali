.class public Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "SAProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/accessory/SAProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SACallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/service/accessory/SAProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 443
    if-eqz p2, :cond_1

    .line 444
    const-string v0, "SAP"

    const-string v1, "onReceiveAccessToken() Received Success"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    if-eqz p3, :cond_0

    .line 446
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    const-string v1, "access_token"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$902(Lcom/samsung/android/app/music/service/accessory/SAProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->accountResponse(Z)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    const-string v0, "SAP"

    const-string v1, "onReceiveAccessToken() Received Fail"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->accountResponse(Z)V

    goto :goto_0
.end method
