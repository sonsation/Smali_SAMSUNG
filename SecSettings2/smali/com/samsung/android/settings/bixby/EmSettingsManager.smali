.class public Lcom/samsung/android/settings/bixby/EmSettingsManager;
.super Ljava/lang/Object;
.source "EmSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bixby/EmSettingsManager$1;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    }
.end annotation


# static fields
.field public static final EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

.field public static final EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

.field private mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

.field private mEmParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/executor/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private mEmParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/executor/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

.field private mEmState:Lcom/samsung/android/app/executor/data/State;

.field private mEmStateId:Ljava/lang/String;

.field private mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

.field private mInterimStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

.field private mNlgCallCount:I

.field mNlgrequestInfo:Lcom/samsung/android/app/executor/data/NlgRequestInfo;

.field private mPendingState:Z

.field private mPfScreenParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/executor/data/ScreenParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mPfScreenParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/executor/data/ScreenParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseCallCount:I

.field mResultParamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;",
            ">;"
        }
    .end annotation
.end field

.field mScreenParamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenStates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/bixby/EmSettingsManager;Lcom/samsung/android/app/executor/data/State;)Lcom/samsung/android/app/executor/data/State;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmState:Lcom/samsung/android/app/executor/data/State;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPfScreenParamMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPfScreenParams:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->resetResponseCallCount()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 45
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/HashSet;

    .line 65
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPfScreenParams:Ljava/util/List;

    .line 71
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 73
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    .line 75
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    .line 77
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    .line 80
    iput-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPendingState:Z

    .line 82
    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    .line 84
    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    .line 135
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;-><init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mInterimStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    .line 582
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    .line 584
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    .line 586
    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgrequestInfo:Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    .line 88
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorMediator;->getInstance()Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    .line 86
    :cond_0
    return-void
.end method

.method private callRequestNlg(Ljava/lang/String;)V
    .locals 3
    .param p1, "nlgStateId"    # Ljava/lang/String;

    .prologue
    .line 656
    iget v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    .line 657
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 658
    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestNlg() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 659
    const-string/jumbo v2, ") : NlgStateId ["

    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 659
    const-string/jumbo v2, "] / "

    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 659
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    return-void
.end method

.method private callSendResponse()V
    .locals 3

    .prologue
    .line 646
    iget v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    .line 647
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 648
    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResponse() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 649
    const-string/jumbo v2, ") : "

    .line 648
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 649
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 648
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 651
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sendResponse duplicated call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_1
    return-void
.end method

.method private clearEmCallbacks()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 130
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    .line 131
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    .line 132
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    .line 128
    return-void
.end method

.method private resetResponseCallCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 663
    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    .line 664
    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    .line 662
    return-void
.end method

.method private setEmCallback(Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 112
    return-void
.end method

.method private setLogEnterState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenStateId"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logEnterState(Landroid/content/Context;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method private setLogEnterStates(Landroid/content/Context;Ljava/util/Set;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p2, "screenStateId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logEnterStates(Landroid/content/Context;Ljava/util/Set;)V

    .line 467
    return-void
.end method

.method private setLogExitState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenStateId"    # Ljava/lang/String;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logExitState(Landroid/content/Context;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method private setLogExitStates(Landroid/content/Context;Ljava/util/Set;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p2, "screenStateId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logExitStates(Landroid/content/Context;Ljava/util/Set;)V

    .line 477
    return-void
.end method


# virtual methods
.method public addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;-><init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    return-void
.end method

.method public addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;-><init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    return-void
.end method

.method public bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;
    .param p3, "screenStateId"    # Ljava/lang/Object;

    .prologue
    .line 195
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    .line 199
    if-eqz p1, :cond_3

    .line 200
    if-eqz p2, :cond_1

    .line 201
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setEmCallback(Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mInterimStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setInterimStateListener(Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;)V

    .line 204
    :cond_1
    instance-of v0, p3, Ljava/util/HashSet;

    if-eqz v0, :cond_4

    move-object v0, p3

    .line 205
    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/HashSet;

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogEnterStates(Landroid/content/Context;Ljava/util/Set;)V

    .line 212
    :cond_2
    :goto_0
    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindEmService() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_3
    return-void

    .line 207
    :cond_4
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/HashSet;

    .line 209
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/HashSet;

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogEnterState(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearEmService(Ljava/lang/Object;)V
    .locals 3
    .param p1, "screenStateId"    # Ljava/lang/Object;

    .prologue
    .line 264
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    return-void

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmCallbacks()V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0}, Lcom/samsung/android/app/executor/ExecutorMediator;->clearInterimStateListener()V

    .line 270
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->resetResponseCallCount()V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 273
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 274
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogExitStates(Landroid/content/Context;Ljava/util/Set;)V

    .line 278
    :cond_1
    :goto_0
    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearEmService() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_2
    return-void

    .line 275
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 276
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogExitState(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearNlgParams()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 606
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    .line 607
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    .line 605
    return-void
.end method

.method public getParamInt(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/executor/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/app/executor/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getParamString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/executor/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/app/executor/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/executor/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    return-object v0
.end method

.method public getParamsSize()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPendingState()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPendingState:Z

    return v0
.end method

.method public getStateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateId:Ljava/lang/String;

    return-object v0
.end method

.method public isLastState()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmState:Lcom/samsung/android/app/executor/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/app/executor/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRuleRunning()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0}, Lcom/samsung/android/app/executor/ExecutorMediator;->isRuleRunning()Z

    move-result v0

    return v0
.end method

.method public requestNlg(Ljava/lang/String;)V
    .locals 7
    .param p1, "nlgStateId"    # Ljava/lang/String;

    .prologue
    .line 611
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 612
    :cond_0
    return-void

    .line 614
    :cond_1
    new-instance v3, Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    invoke-direct {v3, p1}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 617
    .local v3, "requestInfo":Lcom/samsung/android/app/executor/data/NlgRequestInfo;
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 618
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 619
    .local v1, "listSize":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 620
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    .line 621
    .local v2, "param":Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrName()Ljava/lang/String;

    move-result-object v5

    .line 622
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrValue()Ljava/lang/String;

    move-result-object v6

    .line 621
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    .line 623
    const-string/jumbo v4, "EmSettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestNlg() ScreenParam("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 624
    const-string/jumbo v6, "/"

    .line 623
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 624
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrName()Ljava/lang/String;

    move-result-object v6

    .line 623
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 624
    const-string/jumbo v6, "/"

    .line 623
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 624
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrValue()Ljava/lang/String;

    move-result-object v6

    .line 623
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    .end local v0    # "index":I
    .end local v1    # "listSize":I
    .end local v2    # "param":Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 629
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 630
    .restart local v1    # "listSize":I
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 631
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    .line 632
    .restart local v2    # "param":Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    .line 633
    const-string/jumbo v4, "EmSettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestNlg() ResultParam("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 634
    const-string/jumbo v6, "/"

    .line 633
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 634
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 633
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 638
    .end local v0    # "index":I
    .end local v1    # "listSize":I
    .end local v2    # "param":Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->requestNlg(Lcom/samsung/android/app/executor/data/NlgRequestInfo;)V

    .line 639
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearNlgParams()V

    .line 640
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->callRequestNlg(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V
    .locals 1
    .param p1, "result"    # Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 491
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearNlgParams()V

    .line 492
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->callSendResponse()V

    .line 489
    return-void
.end method

.method public setClientVisibility(Z)V
    .locals 3
    .param p1, "shouldBeVisible"    # Z

    .prologue
    .line 518
    const-string/jumbo v0, "EmSettingsManager"

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClientVisibility() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setClientVisibility(Z)V

    .line 517
    return-void
.end method

.method public setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 596
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public setPendingState(Z)V
    .locals 0
    .param p1, "isPending"    # Z

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPendingState:Z

    .line 327
    return-void
.end method
