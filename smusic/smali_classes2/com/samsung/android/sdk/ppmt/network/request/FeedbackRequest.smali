.class public Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;
.super Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;
.source "FeedbackRequest.java"


# instance fields
.field private final ANDROID_PLATFORM:Ljava/lang/String;

.field private final KEY_DTS:Ljava/lang/String;

.field private final KEY_FBID:Ljava/lang/String;

.field private final KEY_FV:Ljava/lang/String;

.field private final KEY_INFO:Ljava/lang/String;

.field private final KEY_PLATFORM:Ljava/lang/String;

.field private final KEY_TARGETID:Ljava/lang/String;

.field private final KEY_TIMEZONE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mFeedback:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

.field private mMid:Ljava/lang/String;

.field private mTargetid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/Feedback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mid"    # Ljava/lang/String;
    .param p3, "targetid"    # Ljava/lang/String;
    .param p4, "feedback"    # Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;-><init>(Landroid/content/Context;)V

    .line 21
    const-class v0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->TAG:Ljava/lang/String;

    .line 23
    const-string v0, "info"

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->KEY_INFO:Ljava/lang/String;

    .line 24
    const-string v0, "fbid"

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->KEY_FBID:Ljava/lang/String;

    .line 25
    const-string v0, "fv"

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->KEY_FV:Ljava/lang/String;

    .line 26
    const-string v0, "dts"

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->KEY_DTS:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "tz"

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->KEY_TIMEZONE:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "targetid"

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->KEY_TARGETID:Ljava/lang/String;

    .line 29
    const-string v0, "platform"

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->KEY_PLATFORM:Ljava/lang/String;

    .line 31
    const-string v0, "android"

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->ANDROID_PLATFORM:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mMid:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mTargetid:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mFeedback:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    .line 43
    return-void
.end method

.method private static isFvEmpty(Lorg/json/JSONArray;)Z
    .locals 4
    .param p0, "fvList"    # Lorg/json/JSONArray;

    .prologue
    .line 88
    if-eqz p0, :cond_1

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 91
    const-string v2, ""

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 99
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 90
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getJsonRequestBody()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mMid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mFeedback:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    if-nez v3, :cond_1

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mMid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] fail to create network request. mid/feedback null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v3, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw v3

    .line 63
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v2, "jo_info":Lorg/json/JSONObject;
    const-string v3, "fbid"

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mFeedback:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->getFbids()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mFeedback:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->getFvs()Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->isFvEmpty(Lorg/json/JSONArray;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 66
    const-string v3, "fv"

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mFeedback:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->getFvs()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :cond_2
    const-string v3, "dts"

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mFeedback:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->getDts()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string/jumbo v3, "tz"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mTargetid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 71
    const-string/jumbo v3, "targetid"

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mTargetid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :cond_3
    const-string v3, "platform"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v1, "jo_body":Lorg/json/JSONObject;
    const-string v3, "info"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->appendIdsBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-object v1

    .line 81
    .end local v1    # "jo_body":Lorg/json/JSONObject;
    .end local v2    # "jo_info":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mMid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] fail to create network request. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v3, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw v3
.end method

.method public getRequestMethod()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://sdk.peppermint.samsung.com/v2/app/feedback/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGzipEnabled()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
