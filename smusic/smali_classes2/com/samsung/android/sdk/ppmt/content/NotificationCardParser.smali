.class public Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;
.super Lcom/samsung/android/sdk/ppmt/content/CardParser;
.source "NotificationCardParser.java"


# static fields
.field public static final MAX_FLIP_COUNT:I = 0xa


# instance fields
.field private final EXPANDED_IMG_RES:[[Ljava/lang/String;

.field private final EXPANDED_TXT_RES:[[Ljava/lang/String;

.field private final FOLDED_IMG_RES:[[Ljava/lang/String;

.field private final FOLDED_TXT_RES:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/CardParser;-><init>()V

    .line 21
    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "contentTitle"

    aput-object v2, v1, v3

    const-string v2, "contentText"

    aput-object v2, v1, v4

    const-string/jumbo v2, "subContentText"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->FOLDED_TXT_RES:[[Ljava/lang/String;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "contentTitle"

    aput-object v2, v1, v3

    const-string v2, "contentText"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "contentTitle"

    aput-object v2, v1, v3

    const-string v2, "contentText"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "contentTitle"

    aput-object v2, v1, v3

    const-string v2, "contentText"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->EXPANDED_TXT_RES:[[Ljava/lang/String;

    .line 35
    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "smallIcon"

    aput-object v2, v1, v3

    const-string v2, "largeIcon"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "banner"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "flip_f"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->FOLDED_IMG_RES:[[Ljava/lang/String;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "smallIcon"

    aput-object v2, v1, v3

    const-string v2, "largeIcon"

    aput-object v2, v1, v4

    const-string v2, "bigPicture"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "smallIcon"

    aput-object v2, v1, v3

    const-string v2, "largeIcon"

    aput-object v2, v1, v4

    const-string v2, "bigPicture"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "smallIcon"

    aput-object v2, v1, v3

    const-string v2, "largeIcon"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "flip_e"

    aput-object v2, v1, v3

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->EXPANDED_IMG_RES:[[Ljava/lang/String;

    return-void
.end method

.method private setCardImgData(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/NotificationCard;Ljava/lang/String;)V
    .locals 4
    .param p1, "imgDirectory"    # Ljava/lang/String;
    .param p2, "card"    # Lcom/samsung/android/sdk/ppmt/content/NotificationCard;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v2

    .line 159
    :cond_1
    const-string v2, "flip_f"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "flip_e"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 161
    :cond_2
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-gt v0, v2, :cond_6

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/ppmt/content/CardData;->IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->findCertainExtension(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 164
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 165
    new-instance v2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v2

    .line 169
    :cond_3
    const-string v2, "flip_f"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->putFoldedFlipperPaths(Ljava/lang/String;)V

    .line 161
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_4
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->putExpandedFlipperPaths(Ljava/lang/String;)V

    goto :goto_1

    .line 176
    .end local v0    # "i":I
    .end local v1    # "path":Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardData;->IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    invoke-static {p1, p3, v2}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->findCertainExtension(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .restart local v1    # "path":Ljava/lang/String;
    const-string v2, "largeIcon"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 178
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setLargeIconPath(Ljava/lang/String;)V

    .line 192
    .end local v1    # "path":Ljava/lang/String;
    :cond_6
    :goto_2
    return-void

    .line 179
    .restart local v1    # "path":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "smallIcon"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 180
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setSmallIconPath(Ljava/lang/String;)V

    goto :goto_2

    .line 182
    :cond_8
    if-nez v1, :cond_9

    .line 183
    new-instance v2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v2

    .line 185
    :cond_9
    const-string v2, "bigPicture"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 186
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setBigPicturePath(Ljava/lang/String;)V

    goto :goto_2

    .line 187
    :cond_a
    const-string v2, "banner"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 188
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setBannerPicturePath(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setCardTxtData(Lcom/samsung/android/sdk/ppmt/content/NotificationCard;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "card"    # Lcom/samsung/android/sdk/ppmt/content/NotificationCard;
    .param p2, "jo"    # Lorg/json/JSONObject;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 140
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v0

    .line 144
    :cond_1
    const-string v0, "contentTitle"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->applyLRMUnicode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setContentTitle(Ljava/lang/String;)V

    .line 151
    :cond_2
    :goto_0
    return-void

    .line 146
    :cond_3
    const-string v0, "contentText"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->applyLRMUnicode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setContentText(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_4
    const-string/jumbo v0, "subContentText"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->applyLRMUnicode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setSubContentText(Ljava/lang/String;)V

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
    .line 124
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 125
    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v3

    .line 128
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/sdk/ppmt/content/CardData;->getCardImgFileDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "imgDirectory":Ljava/lang/String;
    move-object v2, p2

    .line 129
    check-cast v2, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;

    .line 130
    .local v2, "notiCard":Lcom/samsung/android/sdk/ppmt/content/NotificationCard;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->FOLDED_IMG_RES:[[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getFoldedType()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 131
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->FOLDED_IMG_RES:[[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getFoldedType()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->setCardImgData(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/NotificationCard;Ljava/lang/String;)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->EXPANDED_IMG_RES:[[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getExpandedType()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 134
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->EXPANDED_IMG_RES:[[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getExpandedType()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->setCardImgData(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/NotificationCard;Ljava/lang/String;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_3
    return-void
.end method

.method public parseTextContents(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "card"    # Lcom/samsung/android/sdk/ppmt/content/Card;
    .param p2, "jo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 91
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 92
    :cond_0
    new-instance v5, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v5

    :cond_1
    move-object v3, p1

    .line 95
    check-cast v3, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;

    .line 97
    .local v3, "notiCard":Lcom/samsung/android/sdk/ppmt/content/NotificationCard;
    :try_start_0
    const-string/jumbo v5, "ticker"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "ticker":Ljava/lang/String;
    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setTicker(Ljava/lang/String;)V

    .line 101
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->FOLDED_TXT_RES:[[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getFoldedType()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 102
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->FOLDED_TXT_RES:[[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getFoldedType()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    aget-object v5, v5, v2

    invoke-direct {p0, v3, p2, v5}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->setCardTxtData(Lcom/samsung/android/sdk/ppmt/content/NotificationCard;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->EXPANDED_TXT_RES:[[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getExpandedType()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 105
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->EXPANDED_TXT_RES:[[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getExpandedType()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    aget-object v5, v5, v2

    invoke-direct {p0, v3, p2, v5}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->setCardTxtData(Lcom/samsung/android/sdk/ppmt/content/NotificationCard;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    :cond_3
    invoke-static {p2}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 109
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/content/CardAction;>;"
    const-string v5, "1"

    invoke-static {v0, v5}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->isValid(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 110
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] fail to parse resource. invalid landing page"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v5, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/content/CardAction;>;"
    .end local v2    # "i":I
    .end local v4    # "ticker":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] fail to parse resource. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v5, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v5

    .line 113
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/content/CardAction;>;"
    .restart local v2    # "i":I
    .restart local v4    # "ticker":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setClickActions(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    return-void
.end method

.method public parseUserData(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "card"    # Lcom/samsung/android/sdk/ppmt/content/Card;
    .param p2, "userdata"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->parseUserData(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V

    move-object v4, p1

    .line 53
    check-cast v4, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;

    .line 55
    .local v4, "notiCard":Lcom/samsung/android/sdk/ppmt/content/NotificationCard;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getStyle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, "jo_st":Lorg/json/JSONObject;
    const-string v5, "f"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setFoldedType(I)V

    .line 57
    const-string v5, "e"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setExpandedType(I)V

    .line 59
    const-string v5, "fa"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 60
    .local v1, "flippingAnimation":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getExpandedType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 61
    const-string v5, "fp"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 62
    .local v2, "flippingPeriod":Lorg/json/JSONObject;
    const-string v5, "e"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setExpandedFlipPeriod(I)V

    .line 63
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getExpandedFlipPeriod()I

    move-result v5

    if-gtz v5, :cond_0

    .line 64
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->TAG:Ljava/lang/String;

    const-string v6, "invalid flipping period"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v5, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "flippingAnimation":Lorg/json/JSONObject;
    .end local v2    # "flippingPeriod":Lorg/json/JSONObject;
    .end local v3    # "jo_st":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid userdata. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v5, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v5

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "flippingAnimation":Lorg/json/JSONObject;
    .restart local v2    # "flippingPeriod":Lorg/json/JSONObject;
    .restart local v3    # "jo_st":Lorg/json/JSONObject;
    :cond_0
    if-eqz v1, :cond_1

    .line 68
    :try_start_1
    const-string v5, "e"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setExpandedFlipAnim(I)V

    .line 71
    .end local v2    # "flippingPeriod":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getFoldedType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 72
    const-string v5, "fp"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 73
    .restart local v2    # "flippingPeriod":Lorg/json/JSONObject;
    const-string v5, "f"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setFoldedFlipPeriod(I)V

    .line 74
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getFoldedFlipPeriod()I

    move-result v5

    if-gtz v5, :cond_2

    .line 75
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->TAG:Ljava/lang/String;

    const-string v6, "invalid flipping period"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v5, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v5

    .line 78
    :cond_2
    if-eqz v1, :cond_3

    .line 79
    const-string v5, "f"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setFoldedFlipAnim(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .end local v2    # "flippingPeriod":Lorg/json/JSONObject;
    :cond_3
    return-void
.end method
