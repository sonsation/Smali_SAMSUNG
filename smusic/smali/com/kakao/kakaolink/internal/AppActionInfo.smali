.class public Lcom/kakao/kakaolink/internal/AppActionInfo;
.super Ljava/lang/Object;
.source "AppActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;
    }
.end annotation


# instance fields
.field private final deviceType:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

.field private final executeParam:Ljava/lang/String;

.field private final marketParam:Ljava/lang/String;

.field private final os:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;


# virtual methods
.method public createJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "os"

    iget-object v2, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->os:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    invoke-static {v2}, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->access$000(Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v1, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->deviceType:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "devicetype"

    iget-object v2, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->deviceType:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    invoke-virtual {v2}, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->executeParam:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    const-string v1, "execparam"

    iget-object v2, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->executeParam:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->marketParam:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    const-string v1, "marketparam"

    iget-object v2, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->marketParam:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_2
    return-object v0
.end method
