.class public Lcom/samsung/android/share/executor/Command;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field public mCommand:Ljava/lang/String;

.field public mContent:Ljava/lang/String;

.field public mRequestId:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/samsung/android/share/executor/Command;->mVersion:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/share/executor/Command;->mCommand:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/share/executor/Command;->mRequestId:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/share/executor/Command;->mContent:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonCommand"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v2, p0, Lcom/samsung/android/share/executor/Command;->mVersion:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lcom/samsung/android/share/executor/Command;->mCommand:Ljava/lang/String;

    .line 12
    iput-object v2, p0, Lcom/samsung/android/share/executor/Command;->mRequestId:Ljava/lang/String;

    .line 13
    iput-object v2, p0, Lcom/samsung/android/share/executor/Command;->mContent:Ljava/lang/String;

    .line 20
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, "jObjRes":Lorg/json/JSONObject;
    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "command"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid command!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "jObjRes":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 23
    .restart local v1    # "jObjRes":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/share/executor/Command;->mVersion:Ljava/lang/String;

    .line 28
    const-string/jumbo v2, "requestId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    const-string/jumbo v2, "requestId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/share/executor/Command;->mRequestId:Ljava/lang/String;

    .line 33
    :goto_1
    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/share/executor/Command;->mContent:Ljava/lang/String;

    .line 34
    const-string/jumbo v2, "command"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/share/executor/Command;->mCommand:Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_2
    const-string/jumbo v2, "1"

    iput-object v2, p0, Lcom/samsung/android/share/executor/Command;->mRequestId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/samsung/android/share/executor/Command;->mVersion:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/share/executor/Command;->mCommand:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/share/executor/Command;->mRequestId:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/share/executor/Command;->mContent:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/share/executor/Command;->mVersion:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/share/executor/Command;->mCommand:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/samsung/android/share/executor/Command;->mRequestId:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/samsung/android/share/executor/Command;->mContent:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/share/executor/Command;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/share/executor/Command;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/share/executor/Command;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/share/executor/Command;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/share/executor/Command;->mCommand:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/share/executor/Command;->mContent:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/share/executor/Command;->mRequestId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/android/share/executor/Command;->mVersion:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    const-string/jumbo v0, "{"

    .line 84
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"version\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/share/executor/Command;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"command\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/share/executor/Command;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"requestId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/share/executor/Command;->mRequestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"content\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/share/executor/Command;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method
