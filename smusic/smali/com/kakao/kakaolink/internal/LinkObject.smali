.class public final Lcom/kakao/kakaolink/internal/LinkObject;
.super Ljava/lang/Object;
.source "LinkObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;,
        Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;
    }
.end annotation


# instance fields
.field private final action:Lcom/kakao/kakaolink/internal/Action;

.field private final dispType:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

.field private final imageHeight:I

.field private final imageSrc:Ljava/lang/String;

.field private final imageWidth:I

.field private final objType:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

.field private final text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;Ljava/lang/String;Ljava/lang/String;IILcom/kakao/kakaolink/internal/Action;Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)V
    .locals 0
    .param p1, "objType"    # Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "imageSrc"    # Ljava/lang/String;
    .param p4, "imageWidth"    # I
    .param p5, "imageHeight"    # I
    .param p6, "action"    # Lcom/kakao/kakaolink/internal/Action;
    .param p7, "dispType"    # Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/kakao/kakaolink/internal/LinkObject;->objType:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    .line 67
    iput-object p2, p0, Lcom/kakao/kakaolink/internal/LinkObject;->text:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/kakao/kakaolink/internal/LinkObject;->imageSrc:Ljava/lang/String;

    .line 69
    iput p4, p0, Lcom/kakao/kakaolink/internal/LinkObject;->imageWidth:I

    .line 70
    iput p5, p0, Lcom/kakao/kakaolink/internal/LinkObject;->imageHeight:I

    .line 71
    iput-object p6, p0, Lcom/kakao/kakaolink/internal/LinkObject;->action:Lcom/kakao/kakaolink/internal/Action;

    .line 72
    iput-object p7, p0, Lcom/kakao/kakaolink/internal/LinkObject;->dispType:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    .line 73
    return-void
.end method

.method public static newButton(Ljava/lang/String;Lcom/kakao/kakaolink/internal/Action;Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Lcom/kakao/kakaolink/internal/LinkObject;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "action"    # Lcom/kakao/kakaolink/internal/Action;
    .param p2, "dispType"    # Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Lcom/kakao/util/KakaoParameterException;

    sget-object v1, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->CORE_PARAMETER_MISSING:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v2, "button needs action."

    invoke-direct {v0, v1, v2}, Lcom/kakao/util/KakaoParameterException;-><init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    new-instance v0, Lcom/kakao/kakaolink/internal/LinkObject;

    sget-object v1, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->BUTTON:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    const/4 v3, 0x0

    move-object v2, p0

    move v5, v4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/kakao/kakaolink/internal/LinkObject;-><init>(Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;Ljava/lang/String;Ljava/lang/String;IILcom/kakao/kakaolink/internal/Action;Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)V

    return-object v0
.end method

.method public static newImage(Ljava/lang/String;IILcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Lcom/kakao/kakaolink/internal/LinkObject;
    .locals 8
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dispType"    # Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x50

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/kakao/util/KakaoParameterException;

    sget-object v1, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->CORE_PARAMETER_MISSING:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v2, "image type needs src."

    invoke-direct {v0, v1, v2}, Lcom/kakao/util/KakaoParameterException;-><init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    if-gt p1, v1, :cond_1

    .line 88
    new-instance v0, Lcom/kakao/util/KakaoParameterException;

    sget-object v1, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->MINIMUM_IMAGE_SIZE_REQUIRED:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string/jumbo v2, "width of image type should be bigger than 80."

    invoke-direct {v0, v1, v2}, Lcom/kakao/util/KakaoParameterException;-><init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    if-gt p2, v1, :cond_2

    .line 91
    new-instance v0, Lcom/kakao/util/KakaoParameterException;

    sget-object v1, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->MINIMUM_IMAGE_SIZE_REQUIRED:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v2, "height of image type should be bigger than 80."

    invoke-direct {v0, v1, v2}, Lcom/kakao/util/KakaoParameterException;-><init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    new-instance v0, Lcom/kakao/kakaolink/internal/LinkObject;

    sget-object v1, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->IMAGE:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, v2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/kakao/kakaolink/internal/LinkObject;-><init>(Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;Ljava/lang/String;Ljava/lang/String;IILcom/kakao/kakaolink/internal/Action;Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)V

    return-object v0
.end method

.method public static newText(Ljava/lang/String;Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Lcom/kakao/kakaolink/internal/LinkObject;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "dispType"    # Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/kakao/util/KakaoParameterException;

    sget-object v1, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->CORE_PARAMETER_MISSING:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string/jumbo v2, "text type needs text."

    invoke-direct {v0, v1, v2}, Lcom/kakao/util/KakaoParameterException;-><init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    new-instance v0, Lcom/kakao/kakaolink/internal/LinkObject;

    sget-object v1, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->TEXT:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    move-object v2, p0

    move v5, v4

    move-object v6, v3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/kakao/kakaolink/internal/LinkObject;-><init>(Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;Ljava/lang/String;Ljava/lang/String;IILcom/kakao/kakaolink/internal/Action;Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)V

    return-object v0
.end method


# virtual methods
.method public createJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 113
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "objtype"

    iget-object v2, p0, Lcom/kakao/kakaolink/internal/LinkObject;->objType:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    invoke-static {v2}, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->access$000(Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    iget-object v1, p0, Lcom/kakao/kakaolink/internal/LinkObject;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/kakao/kakaolink/internal/LinkObject;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/kakao/kakaolink/internal/LinkObject;->imageSrc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kakao/kakaolink/internal/LinkObject;->objType:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    sget-object v2, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->IMAGE:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    if-ne v1, v2, :cond_2

    .line 120
    const-string/jumbo v1, "src"

    iget-object v2, p0, Lcom/kakao/kakaolink/internal/LinkObject;->imageSrc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    iget v1, p0, Lcom/kakao/kakaolink/internal/LinkObject;->imageWidth:I

    if-lez v1, :cond_1

    .line 122
    const-string/jumbo v1, "width"

    iget v2, p0, Lcom/kakao/kakaolink/internal/LinkObject;->imageWidth:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    :cond_1
    iget v1, p0, Lcom/kakao/kakaolink/internal/LinkObject;->imageHeight:I

    if-lez v1, :cond_2

    .line 125
    const-string v1, "height"

    iget v2, p0, Lcom/kakao/kakaolink/internal/LinkObject;->imageHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/kakao/kakaolink/internal/LinkObject;->action:Lcom/kakao/kakaolink/internal/Action;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kakao/kakaolink/internal/LinkObject;->objType:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    invoke-static {v1}, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->access$100(Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    const-string v1, "action"

    iget-object v2, p0, Lcom/kakao/kakaolink/internal/LinkObject;->action:Lcom/kakao/kakaolink/internal/Action;

    invoke-virtual {v2}, Lcom/kakao/kakaolink/internal/Action;->createJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/kakao/kakaolink/internal/LinkObject;->dispType:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/kakao/kakaolink/internal/LinkObject;->dispType:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    sget-object v2, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->BOTH:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    if-eq v1, v2, :cond_4

    .line 133
    const-string v1, "disptype"

    iget-object v2, p0, Lcom/kakao/kakaolink/internal/LinkObject;->dispType:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    invoke-static {v2}, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->access$200(Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_4
    return-object v0
.end method
