.class public Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
.super Ljava/lang/Object;
.source "KakaoTalkLinkMessageBuilder.java"


# instance fields
.field private final appKey:Ljava/lang/String;

.field private final appVer:Ljava/lang/String;

.field private final buttonType:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final extra:Lorg/json/JSONObject;

.field private forwardable:Z

.field private final imageType:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final linkObjList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kakao/kakaolink/internal/LinkObject;",
            ">;"
        }
    .end annotation
.end field

.field private final linkType:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final textType:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appVer"    # Ljava/lang/String;
    .param p3, "extra"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v1, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->forwardable:Z

    .line 56
    iput-object p1, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->appKey:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->appVer:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->extra:Lorg/json/JSONObject;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->textType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->imageType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->buttonType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->linkType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->linkObjList:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method public addImage(Ljava/lang/String;II)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->BOTH:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->addImage(Ljava/lang/String;IILcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Ljava/lang/String;IILcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "displayType"    # Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v1, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->imageType:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 148
    new-instance v1, Lcom/kakao/util/KakaoParameterException;

    sget-object v2, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->DUPLICATE_OBJECTS_USED:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v3, "imageType already added. each type can be added once, at most."

    invoke-direct {v1, v2, v3}, Lcom/kakao/util/KakaoParameterException;-><init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/kakao/kakaolink/internal/LinkObject;->newImage(Ljava/lang/String;IILcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Lcom/kakao/kakaolink/internal/LinkObject;

    move-result-object v0

    .line 152
    .local v0, "imageLink":Lcom/kakao/kakaolink/internal/LinkObject;
    iget-object v1, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->linkObjList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-object p0
.end method

.method public addText(Ljava/lang/String;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->BOTH:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->addText(Ljava/lang/String;Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addText(Ljava/lang/String;Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "displayType"    # Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->textType:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 115
    new-instance v1, Lcom/kakao/util/KakaoParameterException;

    sget-object v2, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->DUPLICATE_OBJECTS_USED:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string/jumbo v3, "textType already added. each type can be added once, at most."

    invoke-direct {v1, v2, v3}, Lcom/kakao/util/KakaoParameterException;-><init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_0
    invoke-static {p1, p2}, Lcom/kakao/kakaolink/internal/LinkObject;->newText(Ljava/lang/String;Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Lcom/kakao/kakaolink/internal/LinkObject;

    move-result-object v0

    .line 119
    .local v0, "textLink":Lcom/kakao/kakaolink/internal/LinkObject;
    iget-object v1, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->linkObjList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-object p0
.end method

.method public addWebButton(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    .line 221
    sget-object v0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->BOTH:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    invoke-virtual {p0, p1, p2, v0}, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->addWebButton(Ljava/lang/String;Ljava/lang/String;Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addWebButton(Ljava/lang/String;Ljava/lang/String;Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "displayType"    # Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v2, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->buttonType:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 235
    new-instance v2, Lcom/kakao/util/KakaoParameterException;

    sget-object v3, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->DUPLICATE_OBJECTS_USED:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v4, "buttonType already added. each type can be added once, at most."

    invoke-direct {v2, v3, v4}, Lcom/kakao/util/KakaoParameterException;-><init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/String;)V

    throw v2

    .line 238
    :cond_0
    invoke-static {p2}, Lcom/kakao/kakaolink/internal/Action;->newActionWeb(Ljava/lang/String;)Lcom/kakao/kakaolink/internal/Action;

    move-result-object v0

    .line 239
    .local v0, "webAction":Lcom/kakao/kakaolink/internal/Action;
    invoke-static {p1, v0, p3}, Lcom/kakao/kakaolink/internal/LinkObject;->newButton(Ljava/lang/String;Lcom/kakao/kakaolink/internal/Action;Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Lcom/kakao/kakaolink/internal/LinkObject;

    move-result-object v1

    .line 240
    .local v1, "webButton":Lcom/kakao/kakaolink/internal/LinkObject;
    iget-object v2, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->linkObjList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    return-object p0
.end method

.method public build()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    .line 394
    :try_start_0
    iget-object v5, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->linkObjList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 395
    new-instance v5, Lcom/kakao/util/KakaoParameterException;

    sget-object v6, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->CORE_PARAMETER_MISSING:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v7, "call addAppLink or addWebLink or addAppButton or addWebButton or addText or addImage before calling build()."

    invoke-direct {v5, v6, v7}, Lcom/kakao/util/KakaoParameterException;-><init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Lcom/kakao/util/KakaoParameterException;

    sget-object v6, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->UNSUPPORTED_ENCODING:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    invoke-direct {v5, v6, v0}, Lcom/kakao/util/KakaoParameterException;-><init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/Exception;)V

    throw v5

    .line 398
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "kakaolink://send"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 399
    .local v4, "talkLinkURL":Ljava/lang/StringBuilder;
    const-string v5, "linkver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "3.5"

    sget-object v7, Lcom/kakao/kakaolink/internal/KakaoTalkLinkProtocol;->ENCODING:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v5, "apiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "3.0"

    sget-object v7, Lcom/kakao/kakaolink/internal/KakaoTalkLinkProtocol;->ENCODING:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v5, "appkey"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->appKey:Ljava/lang/String;

    sget-object v7, Lcom/kakao/kakaolink/internal/KakaoTalkLinkProtocol;->ENCODING:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v5, "appver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->appVer:Ljava/lang/String;

    sget-object v7, Lcom/kakao/kakaolink/internal/KakaoTalkLinkProtocol;->ENCODING:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v5, "forwardable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->forwardable:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/kakao/kakaolink/internal/KakaoTalkLinkProtocol;->ENCODING:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v5, "extras"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->extra:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/kakao/kakaolink/internal/KakaoTalkLinkProtocol;->ENCODING:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v5, "objs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 408
    .local v2, "jsonArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->linkObjList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/kakaolink/internal/LinkObject;

    .line 409
    .local v3, "linkObject":Lcom/kakao/kakaolink/internal/LinkObject;
    invoke-virtual {v3}, Lcom/kakao/kakaolink/internal/LinkObject;->createJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 425
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "linkObject":Lcom/kakao/kakaolink/internal/LinkObject;
    .end local v4    # "talkLinkURL":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    .line 426
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/kakao/util/KakaoParameterException;

    sget-object v6, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->JSON_PARSING_ERROR:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    invoke-direct {v5, v6, v0}, Lcom/kakao/util/KakaoParameterException;-><init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/Exception;)V

    throw v5

    .line 412
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "talkLinkURL":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_2
    const-string v5, "===================================================================================="

    invoke-static {v5}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 413
    const-string v5, "++ LINK_VERSION : 3.5"

    invoke-static {v5}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 414
    const-string v5, "++ API_VERSION : 3.0"

    invoke-static {v5}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 415
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "++ appKey : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->appKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "++ appVer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->appVer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "++  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->extra:Lorg/json/JSONObject;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 418
    const-string v5, "++ linkObjList = %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 419
    const-string v5, "===================================================================================="

    invoke-static {v5}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 420
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/kakao/kakaolink/internal/KakaoTalkLinkProtocol;->ENCODING:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "encodedValue":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    return-object v5
.end method
