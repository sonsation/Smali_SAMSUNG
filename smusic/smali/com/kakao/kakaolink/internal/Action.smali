.class public Lcom/kakao/kakaolink/internal/Action;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;
    }
.end annotation


# instance fields
.field private appActionInfos:[Lcom/kakao/kakaolink/internal/AppActionInfo;

.field private type:Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;Ljava/lang/String;[Lcom/kakao/kakaolink/internal/AppActionInfo;)V
    .locals 3
    .param p1, "type"    # Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "appActionInfos"    # [Lcom/kakao/kakaolink/internal/AppActionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Lcom/kakao/util/KakaoParameterException;

    sget-object v1, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->CORE_PARAMETER_MISSING:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v2, "action needs type."

    invoke-direct {v0, v1, v2}, Lcom/kakao/util/KakaoParameterException;-><init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/kakao/kakaolink/internal/Action;->type:Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    .line 51
    iput-object p2, p0, Lcom/kakao/kakaolink/internal/Action;->url:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/kakao/kakaolink/internal/Action;->appActionInfos:[Lcom/kakao/kakaolink/internal/AppActionInfo;

    .line 53
    return-void
.end method

.method public static newActionWeb(Ljava/lang/String;)Lcom/kakao/kakaolink/internal/Action;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/kakao/kakaolink/internal/Action;

    sget-object v1, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;->WEB:Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/kakao/kakaolink/internal/Action;-><init>(Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;Ljava/lang/String;[Lcom/kakao/kakaolink/internal/AppActionInfo;)V

    return-object v0
.end method


# virtual methods
.method public createJSONObject()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "type"

    iget-object v4, p0, Lcom/kakao/kakaolink/internal/Action;->type:Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    invoke-static {v4}, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;->access$000(Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget-object v3, p0, Lcom/kakao/kakaolink/internal/Action;->url:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 71
    const-string/jumbo v3, "url"

    iget-object v4, p0, Lcom/kakao/kakaolink/internal/Action;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/kakao/kakaolink/internal/Action;->appActionInfos:[Lcom/kakao/kakaolink/internal/AppActionInfo;

    if-eqz v3, :cond_2

    .line 74
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 75
    .local v1, "jsonObjs":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/kakao/kakaolink/internal/Action;->appActionInfos:[Lcom/kakao/kakaolink/internal/AppActionInfo;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 76
    .local v2, "obj":Lcom/kakao/kakaolink/internal/AppActionInfo;
    invoke-virtual {v2}, Lcom/kakao/kakaolink/internal/AppActionInfo;->createJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "obj":Lcom/kakao/kakaolink/internal/AppActionInfo;
    :cond_1
    const-string v3, "actioninfo"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    .end local v1    # "jsonObjs":Lorg/json/JSONArray;
    :cond_2
    return-object v0
.end method
