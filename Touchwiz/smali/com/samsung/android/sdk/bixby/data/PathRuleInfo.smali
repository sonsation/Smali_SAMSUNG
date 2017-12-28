.class public final Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
.super Ljava/lang/Object;
.source "PathRuleInfo.java"


# instance fields
.field private apps:[Ljava/lang/String;

.field private executionType:Ljava/lang/String;

.field private intent:Ljava/lang/String;

.field private isCalleePathRule:Z

.field private isFromSimulator:Z

.field private isRoot:Z

.field private pathRuleId:Ljava/lang/String;

.field private pathRuleName:Ljava/lang/String;

.field private sampleUtterance:Ljava/lang/String;

.field private states:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/State;",
            ">;"
        }
    .end annotation
.end field

.field private utterance:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZZLjava/util/List;)V
    .locals 1
    .param p1, "pathRuleId"    # Ljava/lang/String;
    .param p2, "pathRuleName"    # Ljava/lang/String;
    .param p3, "intent"    # Ljava/lang/String;
    .param p4, "utterance"    # Ljava/lang/String;
    .param p5, "sampleUtterance"    # Ljava/lang/String;
    .param p6, "apps"    # [Ljava/lang/String;
    .param p7, "executionType"    # Ljava/lang/String;
    .param p8, "isRoot"    # Z
    .param p9, "isCalleePathRule"    # Z
    .param p10, "isFromSimulator"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p11, "states":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/State;>;"
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->intent:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->utterance:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->sampleUtterance:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->apps:[Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->executionType:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->intent:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->utterance:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->sampleUtterance:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->apps:[Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->executionType:Ljava/lang/String;

    .line 37
    iput-boolean p8, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isRoot:Z

    .line 38
    iput-boolean p9, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isCalleePathRule:Z

    .line 39
    iput-boolean p10, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isFromSimulator:Z

    .line 40
    iput-object p11, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->states:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public getApps()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->apps:[Ljava/lang/String;

    return-object v0
.end method

.method public getExecutionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->executionType:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getPathRuleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathRuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleUtterance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->sampleUtterance:Ljava/lang/String;

    return-object v0
.end method

.method public getStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->states:Ljava/util/List;

    return-object v0
.end method

.method public getUtterance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->utterance:Ljava/lang/String;

    return-object v0
.end method

.method public isCalleePathRule()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isCalleePathRule:Z

    return v0
.end method

.method public isFromSimulator()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isFromSimulator:Z

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isRoot:Z

    return v0
.end method
