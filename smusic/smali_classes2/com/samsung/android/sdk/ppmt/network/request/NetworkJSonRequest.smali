.class public abstract Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;
.super Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;
.source "NetworkJSonRequest.java"


# static fields
.field public static final KEY_TEST:Ljava/lang/String; = "test"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final KEY_IDS:Ljava/lang/String;

.field private final KEY_PID:Ljava/lang/String;

.field private final KEY_PPMTID:Ljava/lang/String;

.field private final KEY_UID:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;-><init>()V

    .line 24
    const-string v0, "ids"

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->KEY_IDS:Ljava/lang/String;

    .line 25
    const-string v0, "pid"

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->KEY_PID:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "uid"

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->KEY_UID:Ljava/lang/String;

    .line 27
    const-string v0, "ppmtid"

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->KEY_PPMTID:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public appendBasicBody(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    const-string v4, "basics"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 40
    const-string v4, "basics"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 45
    .local v0, "basicData":Lorg/json/JSONObject;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getSimMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "smcc":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getNetMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "nmcc":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "cc":Ljava/lang/String;
    const-string v4, "mcc"

    if-nez v3, :cond_0

    const-string v3, ""

    .end local v3    # "smcc":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v4, "nmcc"

    if-nez v2, :cond_1

    const-string v2, ""

    .end local v2    # "nmcc":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v4, "cc"

    if-nez v1, :cond_2

    const-string v1, ""

    .end local v1    # "cc":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v4, "basics"

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    return-void

    .line 42
    .end local v0    # "basicData":Lorg/json/JSONObject;
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .restart local v0    # "basicData":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method public appendIdsBody(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "jo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v6, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 58
    sget-object v6, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->TAG:Ljava/lang/String;

    const-string v7, "fail to create network request. context null"

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v6, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {v6}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw v6

    .line 62
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v3

    .line 63
    .local v3, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPType()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "ptype":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getAID()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "aid":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getUID()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "uid":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPpmtID()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "ppmtId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 69
    :cond_1
    sget-object v6, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mandatory data is empty : ptype("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), aid("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), ppmtId("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v6, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {v6}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw v6

    .line 73
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "ptype"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v6, "aid"

    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string/jumbo v6, "uid"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v6, "ppmtid"

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v6, "ids"

    invoke-virtual {p1, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    iget-object v6, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/sdk/ppmt/common/TestModeManager;->isTestMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 83
    const-string/jumbo v6, "test"

    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/TestModeManager;->getTestFilterJo()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    :cond_3
    return-void
.end method

.method public appendUploadIdsBody(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "jo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v7, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->mContext:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 89
    sget-object v7, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->TAG:Ljava/lang/String;

    const-string v8, "fail to create network request. context null"

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v7, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {v7}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw v7

    .line 93
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v4

    .line 94
    .local v4, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPID()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "pid":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPType()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "ptype":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getAID()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "aid":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getUID()Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "uid":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPpmtID()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "ppmtId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 101
    :cond_1
    sget-object v7, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mandatory data is empty : pid("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), ptype("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), aid("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), ppmtId("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v7, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {v7}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw v7

    .line 105
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "pid"

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v7, "ptype"

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v7, "aid"

    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string/jumbo v7, "uid"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v7, "ppmtid"

    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v7, "ids"

    invoke-virtual {p1, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    iget-object v7, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/sdk/ppmt/common/TestModeManager;->isTestMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 116
    const-string/jumbo v7, "test"

    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/TestModeManager;->getTestFilterJo()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_3
    return-void
.end method

.method public abstract getJsonRequestBody()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation
.end method

.method public getRequestBody()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->getJsonRequestBody()Lorg/json/JSONObject;

    move-result-object v0

    .line 127
    .local v0, "jsonBody":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 131
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract isGzipEnabled()Z
.end method
