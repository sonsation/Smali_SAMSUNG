.class public Lcom/samsung/android/settings/bixby/EmSettingsManager;
.super Ljava/lang/Object;
.source "EmSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bixby/EmSettingsManager$1;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmChattyModeCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmPathRuleSplitCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestAllStatesCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestSetupCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestTearDownCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    }
.end annotation


# static fields
.field public static final EM_NLG_PARAM_MODE_CONFIRM:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

.field public static final EM_NLG_PARAM_MODE_MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

.field public static final EM_NLG_PARAM_MODE_NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

.field public static final EM_NLG_PARAM_MODE_TARGETED:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

.field public static final EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final EM_TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final EM_TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;


# instance fields
.field private mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

.field private mContext:Landroid/content/Context;

.field private mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmChattyModeCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmChattyModeCallback;

.field private mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

.field private mEmParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private mEmParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private mEmPathRuleSplitCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmPathRuleSplitCallback;

.field private mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

.field private mEmState:Lcom/samsung/android/sdk/bixby/data/State;

.field private mEmStateId:Ljava/lang/String;

.field private mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

.field private mEmTestAllStatesCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestAllStatesCallback;

.field private mEmTestSetupCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestSetupCallback;

.field private mEmTestTearDownCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestTearDownCallback;

.field private mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field private mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

.field private mNlgCallCount:I

.field mNlgrequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

.field private mPendingState:Z

.field private mPfScreenParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/bixby/data/ScreenParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mPfScreenParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/ScreenParameter;",
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

.field private mScreenStates:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

.field needResultHijack:Z


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

.method static synthetic -get11(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/util/LinkedHashSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

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

.method static synthetic -set2(Lcom/samsung/android/settings/bixby/EmSettingsManager;Lcom/samsung/android/sdk/bixby/data/State;)Lcom/samsung/android/sdk/bixby/data/State;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmState:Lcom/samsung/android/sdk/bixby/data/State;

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
    .line 42
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 44
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 46
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->CONFIRM:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_CONFIRM:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    .line 48
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    .line 50
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    .line 52
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->TARGETED:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_TARGETED:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    .line 343
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 345
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/LinkedHashSet;

    .line 72
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPfScreenParams:Ljava/util/List;

    .line 78
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 80
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    .line 82
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    .line 84
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    .line 86
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmPathRuleSplitCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmPathRuleSplitCallback;

    .line 88
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmChattyModeCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmChattyModeCallback;

    .line 90
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmTestSetupCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestSetupCallback;

    .line 92
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmTestTearDownCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestTearDownCallback;

    .line 94
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmTestAllStatesCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestAllStatesCallback;

    .line 97
    iput-boolean v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPendingState:Z

    .line 99
    iput v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    .line 101
    iput v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    .line 103
    iput-boolean v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->needResultHijack:Z

    .line 160
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;-><init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    .line 287
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    .line 314
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    .line 348
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    .line 756
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    .line 758
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    .line 760
    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgrequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 107
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ise":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "EmSettingsManager"

    const-string/jumbo v2, "EmSettingsManager() getInstance IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private callRequestNlg(Ljava/lang/String;)V
    .locals 3
    .param p1, "nlgStateId"    # Ljava/lang/String;

    .prologue
    .line 848
    iget v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    .line 849
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 850
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

    .line 851
    const-string/jumbo v2, ") : NlgStateId ["

    .line 850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 851
    const-string/jumbo v2, "] / "

    .line 850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 851
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    return-void
.end method

.method private callSendResponse()V
    .locals 3

    .prologue
    .line 838
    iget v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    .line 839
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 840
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

    .line 841
    const-string/jumbo v2, ") : "

    .line 840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 841
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 843
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sendResponse duplicated call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_1
    return-void
.end method

.method private clearEmCallbacks()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 154
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    .line 155
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    .line 156
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    .line 157
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmPathRuleSplitCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmPathRuleSplitCallback;

    .line 152
    return-void
.end method

.method private resetResponseCallCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 855
    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    .line 856
    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    .line 854
    return-void
.end method

.method private setEmCallback(Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 136
    return-void
.end method

.method private setEmStateReqCallback(Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    .line 140
    return-void
.end method

.method private setLogEnterState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenStateId"    # Ljava/lang/String;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    .line 620
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
    .line 626
    .local p2, "screenStateId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterStates(Ljava/util/Set;)V

    .line 625
    return-void
.end method

.method private setLogExitState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenStateId"    # Ljava/lang/String;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    .line 630
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
    .line 636
    .local p2, "screenStateId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitStates(Ljava/util/Set;)V

    .line 635
    return-void
.end method


# virtual methods
.method public addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;-><init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    return-void
.end method

.method public addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 763
    const-string/jumbo v0, "Already"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    const-string/jumbo v0, "Bixby_SmartView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addNlgScreenParam attrName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->needResultHijack:Z

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;-><init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    return-void
.end method

.method public bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;
    .param p3, "screenStateId"    # Ljava/lang/Object;

    .prologue
    .line 220
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v1, :cond_1

    .line 225
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    .line 233
    if-eqz p1, :cond_4

    .line 234
    if-eqz p2, :cond_2

    .line 235
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setEmCallback(Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;)V

    .line 236
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    .line 238
    :cond_2
    instance-of v1, p3, Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_5

    move-object v1, p3

    .line 239
    check-cast v1, Ljava/util/LinkedHashSet;

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/LinkedHashSet;

    .line 240
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/LinkedHashSet;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogEnterStates(Landroid/content/Context;Ljava/util/Set;)V

    .line 246
    :cond_3
    :goto_1
    const-string/jumbo v1, "EmSettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bindEmService() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_4
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "ise":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "EmSettingsManager"

    const-string/jumbo v2, "bindEmService() getInstance IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string/jumbo v1, "Settings"

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    goto :goto_0

    .line 241
    .end local v0    # "ise":Ljava/lang/IllegalStateException;
    :cond_5
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 242
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/LinkedHashSet;

    .line 243
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/LinkedHashSet;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogEnterState(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;
    .param p3, "screenStateId"    # Ljava/lang/Object;
    .param p4, "stateReqCallback"    # Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    .prologue
    .line 252
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    return-void

    .line 254
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    .line 255
    invoke-direct {p0, p4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setEmStateReqCallback(Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;)V

    .line 257
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public clearEmService(Ljava/lang/Object;)V
    .locals 3
    .param p1, "screenStateId"    # Ljava/lang/Object;

    .prologue
    .line 419
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    return-void

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmCallbacks()V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    .line 425
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->resetResponseCallCount()V

    .line 427
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 428
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 429
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogExitStates(Landroid/content/Context;Ljava/util/Set;)V

    .line 433
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

    .line 418
    :cond_2
    return-void

    .line 430
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 431
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

    .line 788
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    .line 789
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    .line 787
    return-void
.end method

.method public getParamBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 535
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
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
    .line 540
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getParamString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    .line 528
    .local v0, "param":Lcom/samsung/android/sdk/bixby/data/Parameter;
    if-nez v0, :cond_0

    .line 529
    return-object v2

    .line 530
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getParamsSize()I
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPendingState()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPendingState:Z

    return v0
.end method

.method public getStateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateId:Ljava/lang/String;

    return-object v0
.end method

.method public isLastState()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRuleRunning()Z
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v0, :cond_0

    .line 662
    const/4 v0, 0x0

    return v0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v0

    return v0
.end method

.method public isTestMode()Z
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v0, :cond_0

    .line 451
    const/4 v0, 0x0

    return v0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isTestMode()Z

    move-result v0

    return v0
.end method

.method public requestNlg(Ljava/lang/String;)V
    .locals 1
    .param p1, "nlgStateId"    # Ljava/lang/String;

    .prologue
    .line 793
    sget-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 792
    return-void
.end method

.method public requestNlg(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V
    .locals 7
    .param p1, "nlgStateId"    # Ljava/lang/String;
    .param p2, "paramMode"    # Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    .prologue
    .line 797
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 798
    :cond_0
    return-void

    .line 800
    :cond_1
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v3, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 803
    .local v3, "requestInfo":Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 804
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 805
    .local v1, "listSize":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 806
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    .line 807
    .local v2, "param":Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrName()Ljava/lang/String;

    move-result-object v5

    .line 808
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrValue()Ljava/lang/String;

    move-result-object v6

    .line 807
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 809
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

    .line 810
    const-string/jumbo v6, "/"

    .line 809
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 810
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrName()Ljava/lang/String;

    move-result-object v6

    .line 809
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 810
    const-string/jumbo v6, "/"

    .line 809
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 810
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrValue()Ljava/lang/String;

    move-result-object v6

    .line 809
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 814
    .end local v0    # "index":I
    .end local v1    # "listSize":I
    .end local v2    # "param":Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 815
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 816
    .restart local v1    # "listSize":I
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 817
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    .line 818
    .restart local v2    # "param":Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 819
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

    .line 820
    const-string/jumbo v6, "/"

    .line 819
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 820
    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 819
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 824
    .end local v0    # "index":I
    .end local v1    # "listSize":I
    .end local v2    # "param":Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v4, v3, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 825
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearNlgParams()V

    .line 826
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->callRequestNlg(Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method public requestNlgForNotSupportMenu()V
    .locals 3

    .prologue
    .line 830
    const-string/jumbo v0, "SettingsMenu"

    const-string/jumbo v1, "exist"

    const-string/jumbo v2, "no"

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string/jumbo v0, "NLG_PRECONDITION"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    .locals 1
    .param p1, "result"    # Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->needResultHijack:Z

    if-eqz v0, :cond_0

    .line 649
    sget-object p1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 653
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearNlgParams()V

    .line 654
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->callSendResponse()V

    .line 647
    return-void
.end method

.method public setAppVisible(Z)V
    .locals 3
    .param p1, "isAppVisible"    # Z

    .prologue
    .line 694
    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppVisible() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setAppVisible(Z)V

    .line 693
    return-void
.end method

.method public setClientVisibility(Z)V
    .locals 2
    .param p1, "shouldBeVisible"    # Z

    .prologue
    .line 685
    const-string/jumbo v0, "EmSettingsManager"

    const-string/jumbo v1, "setClientVisibility() : Unsupported from BixbyAgent 0.1.6"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void
.end method

.method public setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 774
    const-string/jumbo v0, "Already"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    const-string/jumbo v0, "Bixby_SmartView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNlgScreenParam attrName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->needResultHijack:Z

    .line 778
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    return-void
.end method

.method public setPendingState(Z)V
    .locals 0
    .param p1, "isPending"    # Z

    .prologue
    .line 486
    iput-boolean p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPendingState:Z

    .line 485
    return-void
.end method
