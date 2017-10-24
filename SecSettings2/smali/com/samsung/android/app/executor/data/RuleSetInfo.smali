.class public Lcom/samsung/android/app/executor/data/RuleSetInfo;
.super Ljava/lang/Object;
.source "RuleSetInfo.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private ruleSetVersion:Ljava/lang/String;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 91
    if-nez p1, :cond_1

    .line 94
    :cond_0
    return v1

    .line 91
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/app/executor/data/RuleSetInfo;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/RuleSetInfo;->appName:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/app/executor/data/RuleSetInfo;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/RuleSetInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/RuleSetInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleSetVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/RuleSetInfo;->ruleSetVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/executor/data/RuleSetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
