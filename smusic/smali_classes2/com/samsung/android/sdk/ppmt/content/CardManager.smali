.class public Lcom/samsung/android/sdk/ppmt/content/CardManager;
.super Ljava/lang/Object;
.source "CardManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/sdk/ppmt/content/CardManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllCard(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v1

    .line 142
    .local v1, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getAllCardList()Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    .local v0, "cardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    .local v3, "mid":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->clearAllRelatedCardDataWithMid(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    .line 149
    .end local v3    # "mid":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0
.end method

.method private static clearAllRelatedCardDataWithMid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 153
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 154
    :cond_0
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] fail to clear all : invalid params"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    return v5

    .line 158
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v1

    .line 159
    .local v1, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v1, :cond_2

    .line 160
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] fail to clear all : db open fail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->isCardExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 164
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardState(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 166
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCard(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v0

    .line 167
    .local v0, "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMarketingType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->getDisplayManager(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/display/DisplayManager;

    move-result-object v3

    .line 168
    .local v3, "displayManager":Lcom/samsung/android/sdk/ppmt/display/DisplayManager;
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardDisplayId(Ljava/lang/String;)I

    move-result v2

    .line 169
    .local v2, "displayId":I
    if-eqz v3, :cond_3

    if-lez v2, :cond_3

    .line 170
    invoke-virtual {v3, p0, v2}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->clear(Landroid/content/Context;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    .end local v2    # "displayId":I
    .end local v3    # "displayManager":Lcom/samsung/android/sdk/ppmt/display/DisplayManager;
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardData;->getCardDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->deleteFiles(Ljava/lang/String;)Z

    .line 179
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->deleteCardData(Ljava/lang/String;)Z

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "card_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->cancelEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "card_dismiss_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->cancelEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fbtimer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->cancelEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] successfully delete all related data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 187
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 172
    :catch_0
    move-exception v4

    .line 173
    .local v4, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] fail to clear all : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto/16 :goto_0
.end method

.method private static deleteOverDatedCards(Landroid/content/Context;)V
    .locals 18
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 213
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v5

    .line 214
    .local v5, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v5, :cond_5

    .line 215
    invoke-virtual {v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getAllCardList()Ljava/util/ArrayList;

    move-result-object v3

    .line 216
    .local v3, "cardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_4

    .line 217
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 220
    .local v11, "mid":Ljava/lang/String;
    :try_start_0
    invoke-static {v11, v5}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->isCardOverDated(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/storage/DBHandler;)Z
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 225
    .local v10, "isOverdated":Z
    if-eqz v10, :cond_0

    .line 226
    invoke-virtual {v5, v11}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardState(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v4

    .line 227
    .local v4, "cardState":Lcom/samsung/android/sdk/ppmt/content/CardState;
    sget-object v13, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v13, v4}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 230
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCard(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 234
    .local v2, "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    sget-object v13, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] overdated but delete later to send feedback"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->dismissDisplayedCard(Landroid/content/Context;)V

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x240c8400

    sub-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    add-long v6, v14, v16

    .line 238
    .local v6, "delayDeleteMillis":J
    invoke-virtual {v5, v11, v6, v7}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardReceivedTime(Ljava/lang/String;J)Z

    .line 216
    .end local v2    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    .end local v4    # "cardState":Lcom/samsung/android/sdk/ppmt/content/CardState;
    .end local v6    # "delayDeleteMillis":J
    .end local v10    # "isOverdated":Z
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v8

    .line 222
    .local v8, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    sget-object v13, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] fail to delete overdated cards:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 231
    .end local v8    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    .restart local v4    # "cardState":Lcom/samsung/android/sdk/ppmt/content/CardState;
    .restart local v10    # "isOverdated":Z
    :catch_1
    move-exception v8

    .line 232
    .local v8, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 240
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v13, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v13, v4}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v13, v4}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v13, v4}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 243
    :cond_2
    sget-object v13, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] overdated but delete later to send feedback"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v5, v11}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardTargetId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 245
    .local v12, "targetid":Ljava/lang/String;
    sget-object v13, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12, v13, v14}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x240c8400

    sub-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    add-long v6, v14, v16

    .line 248
    .restart local v6    # "delayDeleteMillis":J
    invoke-virtual {v5, v11, v6, v7}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardReceivedTime(Ljava/lang/String;J)Z

    goto :goto_1

    .line 251
    .end local v6    # "delayDeleteMillis":J
    .end local v12    # "targetid":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->clearAllRelatedCardDataWithMid(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 254
    .end local v4    # "cardState":Lcom/samsung/android/sdk/ppmt/content/CardState;
    .end local v10    # "isOverdated":Z
    .end local v11    # "mid":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 256
    .end local v3    # "cardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "i":I
    :cond_5
    return-void
.end method

.method private static deleteUnusedResources(Landroid/content/Context;)V
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 285
    if-eqz p0, :cond_0

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "appDataPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ppmt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 306
    .end local v0    # "appDataPath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 291
    .restart local v0    # "appDataPath":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 292
    .local v3, "childList":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 293
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v4

    .line 294
    .local v4, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v4, :cond_0

    .line 297
    move-object v1, v3

    .local v1, "arr$":[Ljava/io/File;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v2, v1, v6

    .line 298
    .local v2, "childFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->isCardExist(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 299
    sget-object v8, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete unused resource["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ppmt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->deleteFiles(Ljava/lang/String;)Z

    .line 297
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 303
    .end local v2    # "childFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0
.end method

.method public static handlePushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appData"    # Ljava/lang/String;
    .param p2, "pushType"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    if-nez p0, :cond_0

    .line 37
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    const-string v1, "Error at handle push msg. ctx null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v7

    .line 42
    .local v7, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-virtual {v7}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getAID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    const-string v1, "not init sdk"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->parseAppData(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardAppData;

    move-result-object v6

    .line 51
    .local v6, "cardAppData":Lcom/samsung/android/sdk/ppmt/content/CardAppData;
    if-eqz v6, :cond_3

    .line 52
    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->getMsgType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->getUserdata()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->getTargetId()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->handlePushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->deleteOverDatedCards(Landroid/content/Context;)V

    .line 58
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->deleteUnusedResources(Landroid/content/Context;)V

    goto :goto_0

    .line 57
    .end local v6    # "cardAppData":Lcom/samsung/android/sdk/ppmt/content/CardAppData;
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->deleteOverDatedCards(Landroid/content/Context;)V

    .line 58
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->deleteUnusedResources(Landroid/content/Context;)V

    throw v0
.end method

.method private static handlePushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "userdata"    # Ljava/lang/String;
    .param p4, "targetid"    # Ljava/lang/String;
    .param p5, "pushType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 64
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->isTestMsg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "test"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 69
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->insertCardDataToDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 70
    .local v3, "id":I
    if-gez v3, :cond_1

    .line 71
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Error at insert card. id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v3    # "id":I
    :goto_0
    return-void

    .line 75
    .restart local v3    # "id":I
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPType()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "curPushType":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 77
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] push platform changed. push ignored."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_PUSH_PLATFORM:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v5, 0x0

    invoke-static {p0, p1, p4, v4, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v1    # "curPushType":Ljava/lang/String;
    .end local v3    # "id":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 82
    .restart local v1    # "curPushType":Ljava/lang/String;
    .restart local v3    # "id":I
    :cond_2
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DELIVER:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v5, 0x0

    invoke-static {p0, p1, p4, v4, v5}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 84
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCard(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v0

    .line 85
    .local v0, "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->setAlarmForGetCancelStatusApi(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 88
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    .end local v1    # "curPushType":Ljava/lang/String;
    .end local v3    # "id":I
    :catch_1
    move-exception v2

    .line 89
    .local v2, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to handle push. db error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v5, "dberror"

    invoke-static {p0, p1, p4, v4, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v2    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
    :catch_2
    move-exception v2

    .line 92
    .local v2, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to handle push. internal error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, p1, p4, v4, v8}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    .end local v2    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    :catch_3
    move-exception v2

    .line 95
    .local v2, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to handle push. not supported type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, p1, p4, v4, v8}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    .end local v2    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
    :catch_4
    move-exception v2

    .line 98
    .local v2, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to handle push. invalid card data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, p1, p4, v4, v8}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static handleUpdateEvent(Landroid/content/Context;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 309
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    const-string v7, "handle update event"

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    if-nez p0, :cond_0

    .line 311
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    const-string v7, "fail to handle update event. ctx null"

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v2

    .line 315
    .local v2, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v2, :cond_1

    .line 316
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    const-string v7, "fail to handle update event. dbhandler null"

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_1
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v2, v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardList(Lcom/samsung/android/sdk/ppmt/content/CardState;)Ljava/util/ArrayList;

    move-result-object v1

    .line 320
    .local v1, "cardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 321
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 323
    .local v5, "mid":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCard(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v0

    .line 324
    .local v0, "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    const/4 v6, 0x0

    invoke-virtual {v0, p0, v6}, Lcom/samsung/android/sdk/ppmt/content/Card;->displayCard(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 325
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    :catch_0
    move-exception v3

    .line 326
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] fail to handle update event. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 330
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mid":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0
.end method

.method private static insertCardDataToDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "msgtype"    # Ljava/lang/String;
    .param p3, "userdata"    # Ljava/lang/String;
    .param p4, "targetid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;
        }
    .end annotation

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] fail to insert db. ctx null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;-><init>()V

    throw v1

    .line 109
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->isValidParams(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    const-string v2, "fail to insert db. invalid mid"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;-><init>()V

    throw v1

    .line 113
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 114
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v0, :cond_2

    .line 115
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] fail to insert db. db null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;-><init>()V

    throw v1

    .line 119
    :cond_2
    :try_start_0
    const-string v1, "event"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->isTestMsg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->clearAllRelatedCardDataWithMid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 121
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] fail to insert db. cannot delete previous card"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    throw v1

    .line 126
    :cond_4
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->isCardExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] already have the same card"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;-><init>()V

    throw v1

    .line 131
    :cond_5
    invoke-static {p2, p3, p4}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->isValidParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 132
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->addCardData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v1

    .line 135
    :cond_6
    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->addCardData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    return v1
.end method

.method private static isCardOverDated(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/storage/DBHandler;)Z
    .locals 12
    .param p0, "mid"    # Ljava/lang/String;
    .param p1, "dbHandler"    # Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 259
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 260
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] isCardOverDated. invalid params"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v1

    .line 263
    :cond_1
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardReceivedTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 264
    .local v2, "cardReceivedTime":J
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-gez v1, :cond_2

    .line 265
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] isCardOverDated. fail to get received time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v1

    .line 268
    :cond_2
    move-wide v4, v2

    .line 271
    .local v4, "maxSaveTime":J
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardMsgType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardUserdata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardDisplayId(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardTargetId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v1, v8, v9, v10}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->parseAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v0

    .line 273
    .local v0, "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getTtlFrom()J

    move-result-wide v8

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v10, v1

    sub-long v6, v8, v10

    .line 274
    .local v6, "ttlFrom":J
    cmp-long v1, v6, v2

    if-lez v1, :cond_3

    .line 275
    move-wide v4, v6

    .line 280
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    .end local v6    # "ttlFrom":J
    :cond_3
    :goto_0
    const-wide/32 v8, 0x240c8400

    add-long/2addr v4, v8

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-ltz v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 277
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static isValidParams(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mid"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "msgtype"    # Ljava/lang/String;
    .param p1, "userdata"    # Ljava/lang/String;
    .param p2, "targetid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x2800

    if-gt v1, v2, :cond_0

    .line 201
    const-string v1, "event"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    .line 209
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static requestIncompleteEvents(Landroid/content/Context;Z)V
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "isBootCompleted"    # Z

    .prologue
    const/4 v12, 0x0

    .line 334
    if-nez p0, :cond_0

    .line 335
    sget-object v9, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    const-string v10, "fail to request incomplete events. ctx null"

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v2

    .line 339
    .local v2, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v2, :cond_1

    .line 340
    sget-object v9, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    const-string v10, "fail to request incomplete events. dbHandler null."

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getAllCardList()Ljava/util/ArrayList;

    move-result-object v1

    .line 344
    .local v1, "cardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_9

    .line 345
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 346
    .local v6, "mid":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardState(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v7

    .line 347
    .local v7, "state":Lcom/samsung/android/sdk/ppmt/content/CardState;
    invoke-virtual {v2, v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardTargetId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, "targetid":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v9, v7}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v9, v7}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v9, v7}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 353
    :cond_3
    :try_start_0
    invoke-static {p0, v6}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCard(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v0

    .line 354
    .local v0, "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    if-eqz p1, :cond_4

    .line 355
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->updateExpectedDisplayTime(Landroid/content/Context;)V

    .line 357
    :cond_4
    sget-object v9, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v9, v7}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 358
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->setAlarmForGetCancelStatusApi(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 369
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    :catch_0
    move-exception v3

    .line 370
    .local v3, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    sget-object v9, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] fail to request incomplete events. internal error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    sget-object v9, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v6, v8, v9, v12}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 359
    .end local v3    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    .restart local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    :cond_5
    :try_start_1
    sget-object v9, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v9, v7}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 360
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lcom/samsung/android/sdk/ppmt/PpmtService;

    invoke-direct {v5, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, "com.samsung.android.sdk.ppmt.SERVICE_EVENTS"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v9, "mid"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string/jumbo v9, "targetid"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v9, "extra_action"

    const-string v10, "download_resource"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 372
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 373
    .local v3, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
    sget-object v9, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] fail to request incomplete events. db error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v9, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v10, "dberror"

    invoke-static {p0, v6, v8, v9, v10}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 367
    .end local v3    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
    .restart local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    :cond_6
    :try_start_2
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->setAlarmForDisplay(Landroid/content/Context;)V
    :try_end_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 375
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    :catch_2
    move-exception v3

    .line 376
    .local v3, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] fail to request incomplete events. unsupported type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    sget-object v9, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v6, v8, v9, v12}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 378
    .end local v3    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
    :catch_3
    move-exception v3

    .line 379
    .local v3, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] fail to request incomplete events. invalid card data."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/sdk/ppmt/content/CardManager;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    sget-object v9, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v6, v8, v9, v12}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 383
    .end local v3    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;
    :cond_7
    sget-object v9, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v9, v7}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 384
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lcom/samsung/android/sdk/ppmt/PpmtService;

    invoke-direct {v5, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "com.samsung.android.sdk.ppmt.SERVICE_EVENTS"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v9, "mid"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v9, "extra_action"

    const-string/jumbo v10, "req_call_api"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 390
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_8
    sget-object v9, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v9, v7}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz p1, :cond_2

    .line 391
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lcom/samsung/android/sdk/ppmt/PpmtService;

    invoke-direct {v5, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "com.samsung.android.sdk.ppmt.SERVICE_EVENTS"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v9, "mid"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string/jumbo v9, "targetid"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v9, "is_first_display"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    const-string v9, "extra_action"

    const-string v10, "display"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 401
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "mid":Ljava/lang/String;
    .end local v7    # "state":Lcom/samsung/android/sdk/ppmt/content/CardState;
    .end local v8    # "targetid":Ljava/lang/String;
    :cond_9
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto/16 :goto_0
.end method
