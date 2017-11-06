.class public Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;
.super Lcom/samsung/android/sdk/ppmt/content/CardParser;
.source "PopupCardParser.java"


# instance fields
.field private final IMG_RES:[[Ljava/lang/String;

.field private final TXT_RES:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/CardParser;-><init>()V

    .line 17
    new-array v0, v7, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "body"

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "body"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "web"

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->TXT_RES:[[Ljava/lang/String;

    .line 24
    new-array v0, v7, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "popupmain"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "popupmain"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->IMG_RES:[[Ljava/lang/String;

    return-void
.end method

.method private parseColor(Ljava/lang/String;I)I
    .locals 2
    .param p1, "colorString"    # Ljava/lang/String;
    .param p2, "fallback"    # I

    .prologue
    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    .end local p2    # "fallback":I
    :goto_0
    return p2

    .line 90
    .restart local p2    # "fallback":I
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private setCardImgData(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/PopupCard;Ljava/lang/String;)V
    .locals 2
    .param p1, "imgDirectory"    # Ljava/lang/String;
    .param p2, "card"    # Lcom/samsung/android/sdk/ppmt/content/PopupCard;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v1

    .line 184
    :cond_1
    const-string v1, "popupmain"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardData;->IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    invoke-static {p1, p3, v1}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->findCertainExtension(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 187
    new-instance v1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v1

    .line 189
    :cond_2
    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setMainImagePath(Ljava/lang/String;)V

    .line 191
    .end local v0    # "path":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private setCardTxtData(Lcom/samsung/android/sdk/ppmt/content/PopupCard;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "card"    # Lcom/samsung/android/sdk/ppmt/content/PopupCard;
    .param p2, "jo"    # Lorg/json/JSONObject;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;
        }
    .end annotation

    .prologue
    .line 162
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v2

    .line 166
    :cond_1
    const-string v2, "body"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    const-string v2, "body"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->applyLRMUnicode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "body":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setBodyText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "body":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 170
    .restart local v0    # "body":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v2

    .line 173
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v2, "web"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setWebUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public parseImageContents(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "card"    # Lcom/samsung/android/sdk/ppmt/content/Card;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 149
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 150
    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v3

    .line 153
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/sdk/ppmt/content/CardData;->getCardImgFileDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "imgDirectory":Ljava/lang/String;
    move-object v2, p2

    .line 154
    check-cast v2, Lcom/samsung/android/sdk/ppmt/content/PopupCard;

    .line 155
    .local v2, "popupCard":Lcom/samsung/android/sdk/ppmt/content/PopupCard;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->IMG_RES:[[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getTemplateType()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 156
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->IMG_RES:[[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getTemplateType()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->setCardImgData(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/PopupCard;Ljava/lang/String;)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_2
    return-void
.end method

.method public parseTextContents(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "card"    # Lcom/samsung/android/sdk/ppmt/content/Card;
    .param p2, "jo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    .line 99
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 100
    :cond_0
    new-instance v8, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v8}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v8

    :cond_1
    move-object v7, p1

    .line 103
    check-cast v7, Lcom/samsung/android/sdk/ppmt/content/PopupCard;

    .line 105
    .local v7, "popupCard":Lcom/samsung/android/sdk/ppmt/content/PopupCard;
    :try_start_0
    const-string v8, "pop"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 107
    .local v6, "jo_pop":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->TXT_RES:[[Ljava/lang/String;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getTemplateType()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    array-length v8, v8

    if-ge v3, v8, :cond_2

    .line 108
    iget-object v8, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->TXT_RES:[[Ljava/lang/String;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getTemplateType()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    aget-object v8, v8, v3

    invoke-direct {p0, v7, v6, v8}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->setCardTxtData(Lcom/samsung/android/sdk/ppmt/content/PopupCard;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v7}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->isBottomVisible()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 112
    const-string v8, "btn1"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 113
    .local v4, "jo_button1":Lorg/json/JSONObject;
    const-string/jumbo v8, "text"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "button1Text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v10, :cond_3

    .line 115
    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_3
    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setButton1Text(Ljava/lang/String;)V

    .line 119
    invoke-static {v4}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setButton1Actions(Ljava/util/ArrayList;)V

    .line 120
    invoke-virtual {v7}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getButton1Actions()Ljava/util/ArrayList;

    move-result-object v8

    const-string v9, "2"

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->isValid(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 121
    sget-object v8, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] fail to parse resource. invalid landing page"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v8, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v8}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "button1Text":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "jo_button1":Lorg/json/JSONObject;
    .end local v6    # "jo_pop":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Lorg/json/JSONException;
    sget-object v8, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] invalid resource file. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v8, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v8}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v8

    .line 125
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "button1Text":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "jo_button1":Lorg/json/JSONObject;
    .restart local v6    # "jo_pop":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    const-string v8, "btn2"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 126
    .local v5, "jo_button2":Lorg/json/JSONObject;
    if-eqz v5, :cond_6

    .line 127
    const-string/jumbo v8, "text"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "button2Text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v10, :cond_5

    .line 129
    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 131
    :cond_5
    invoke-virtual {v7, v1}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setButton2Text(Ljava/lang/String;)V

    .line 133
    invoke-static {v5}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setButton2Actions(Ljava/util/ArrayList;)V

    .line 134
    invoke-virtual {v7}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getButton2Actions()Ljava/util/ArrayList;

    move-result-object v8

    const-string v9, "2"

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->isValid(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 135
    sget-object v8, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] fail to parse resource. invalid landing page"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v8, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v8}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .end local v0    # "button1Text":Ljava/lang/String;
    .end local v1    # "button2Text":Ljava/lang/String;
    .end local v4    # "jo_button1":Lorg/json/JSONObject;
    .end local v5    # "jo_button2":Lorg/json/JSONObject;
    :cond_6
    return-void
.end method

.method public parseUserData(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "card"    # Lcom/samsung/android/sdk/ppmt/content/Card;
    .param p2, "userdata"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 34
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->parseUserData(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V

    .line 35
    const/4 v1, 0x1

    .line 36
    .local v1, "DEFAULT_ON":I
    const/4 v0, 0x0

    .local v0, "DEFAULT_OFF":I
    move-object v5, p1

    .line 38
    check-cast v5, Lcom/samsung/android/sdk/ppmt/content/PopupCard;

    .line 40
    .local v5, "popupCard":Lcom/samsung/android/sdk/ppmt/content/PopupCard;
    :try_start_0
    const-string v8, "disturb"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v6, v8, :cond_1

    move v8, v6

    :goto_0
    invoke-virtual {v5, v8}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setIsDisturbOn(Z)V

    .line 42
    invoke-virtual {v5}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->isTestMsg()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 43
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setIsDisturbOn(Z)V

    .line 46
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getStyle()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v4, "jo_st":Lorg/json/JSONObject;
    const-string v8, "pop"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setTemplateType(I)V

    .line 48
    const-string v8, "bottom"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v6, v8, :cond_2

    move v8, v6

    :goto_1
    invoke-virtual {v5, v8}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setIsBottomVisible(Z)V

    .line 50
    const-string v8, "close"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v6, v8, :cond_3

    :goto_2
    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setIsCloseButtonVisible(Z)V

    .line 52
    const-string v6, "btnalign"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setButtonAlign(I)V

    .line 54
    const-string v6, "color"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 55
    .local v3, "jo_color":Lorg/json/JSONObject;
    if-nez v3, :cond_4

    .line 56
    const v6, -0x50506

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setBackgroudColor(I)V

    .line 57
    const v6, -0xa0a0b

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setBottomColor(I)V

    .line 58
    const/high16 v6, -0x22000000

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setTextColor(I)V

    .line 59
    const/high16 v6, -0x22000000

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setButtonTextColor(I)V

    .line 60
    const v6, -0x19191a

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setLineColor(I)V

    .line 82
    :goto_3
    return-void

    .end local v3    # "jo_color":Lorg/json/JSONObject;
    .end local v4    # "jo_st":Lorg/json/JSONObject;
    :cond_1
    move v8, v7

    .line 40
    goto :goto_0

    .restart local v4    # "jo_st":Lorg/json/JSONObject;
    :cond_2
    move v8, v7

    .line 48
    goto :goto_1

    :cond_3
    move v6, v7

    .line 50
    goto :goto_2

    .line 62
    .restart local v3    # "jo_color":Lorg/json/JSONObject;
    :cond_4
    const-string v6, "bg"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, -0x50506

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->parseColor(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setBackgroudColor(I)V

    .line 65
    const-string v6, "bottom"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, -0xa0a0b

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->parseColor(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setBottomColor(I)V

    .line 68
    const-string/jumbo v6, "text"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, -0x22000000

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->parseColor(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setTextColor(I)V

    .line 71
    const-string v6, "btntext"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, -0x22000000

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->parseColor(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setButtonTextColor(I)V

    .line 74
    const-string v6, "line"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, -0x19191a

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->parseColor(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->setLineColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 78
    .end local v3    # "jo_color":Lorg/json/JSONObject;
    .end local v4    # "jo_st":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] invalid userdata. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v6, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v6}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v6
.end method
