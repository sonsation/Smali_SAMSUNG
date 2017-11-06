.class public Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;
.super Lcom/samsung/android/sdk/accessory/SASocket;
.source "SAProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/accessory/SAProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SAProviderDataConnection"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SAPDataConnection"


# instance fields
.field private mConnectionId:I

.field final synthetic this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/service/accessory/SAProvider;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .line 463
    const-class v0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SASocket;-><init>(Ljava/lang/String;)V

    .line 464
    return-void
.end method


# virtual methods
.method public getConnectionId()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;->mConnectionId:I

    return v0
.end method

.method public onDataAvailableOnChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "connectedPeerId"    # Ljava/lang/String;
    .param p2, "channelId"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 494
    if-nez p3, :cond_0

    .line 495
    const-string v3, "SAPDataConnection"

    const-string v4, "onDataAvailableOnChannel() data is null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :goto_0
    return-void

    .line 500
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 501
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "msgId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "msgId":Ljava/lang/String;
    const-string v3, "account-req"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 504
    const-string v3, "SAPDataConnection"

    const-string v4, "onDataAvailableOnChannel() ACCOUNT_REQ"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v3, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$1100(Lcom/samsung/android/app/music/service/accessory/SAProvider;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    .end local v1    # "msgId":Ljava/lang/String;
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 507
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "msgId":Ljava/lang/String;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v3, "SAPDataConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataAvailableOnChannel() msgId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;I)V
    .locals 3
    .param p1, "channelId"    # I
    .param p2, "errorString"    # Ljava/lang/String;
    .param p3, "error"    # I

    .prologue
    .line 474
    const-string v0, "SAPDataConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() Connection is not alive ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public onReceive(I[B)V
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "data"    # [B

    .prologue
    .line 468
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 469
    .local v0, "strToUpdateUI":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;->mConnectionId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;->onDataAvailableOnChannel(Ljava/lang/String;ILjava/lang/String;)V

    .line 470
    return-void
.end method

.method protected onServiceConnectionLost(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 480
    const-string v0, "SAPDataConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnectionLost() peer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;->mConnectionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    iget v1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;->mConnectionId:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$1000(Lcom/samsung/android/app/music/service/accessory/SAProvider;I)V

    .line 483
    return-void
.end method

.method public setConnectionId(I)V
    .locals 0
    .param p1, "channel"    # I

    .prologue
    .line 490
    iput p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;->mConnectionId:I

    .line 491
    return-void
.end method
