.class public Lcom/samsung/android/sdk/ppmt/data/DataSender;
.super Ljava/lang/Object;
.source "DataSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;,
        Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;
    }
.end annotation


# static fields
.field public static final KEY_BASICS:Ljava/lang/String; = "basics"

.field public static final KEY_CUSTOMS:Ljava/lang/String; = "customs"

.field public static final KEY_DEREG:Ljava/lang/String; = "deregi"

.field public static final KEY_DTS:Ljava/lang/String; = "dts"

.field public static final KEY_IAP:Ljava/lang/String; = "iap"

.field public static final KEY_LOC:Ljava/lang/String; = "loc"

.field public static final KEY_START:Ljava/lang/String; = "start"

.field public static final KEY_UC:Ljava/lang/String; = "uc"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/sdk/ppmt/data/DataSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method private static getAppUsageDataArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "appUsageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 370
    .local v0, "appUsageData":Lorg/json/JSONArray;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;

    .line 372
    .local v1, "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;->mData:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_1
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string v5, "getAppUsageDataArray json error. "

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 372
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    iget-object v4, v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;->mData:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 378
    .end local v1    # "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;
    :cond_1
    return-object v0
.end method

.method private static getIapDataBody(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 352
    .local v1, "delimiter":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;

    .line 353
    .local v0, "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;->mData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v1, ","

    .line 356
    goto :goto_0

    .line 357
    .end local v0    # "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;
    :cond_0
    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .local v4, "iapData":Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 361
    .end local v4    # "iapData":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 363
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .restart local v4    # "iapData":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private static getLocationDataBody(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "locationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 334
    .local v1, "delimiter":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;

    .line 335
    .local v0, "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;->mData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v1, ","

    .line 338
    goto :goto_0

    .line 339
    .end local v0    # "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;
    :cond_0
    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .local v4, "locData":Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 343
    .end local v4    # "locData":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 345
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .restart local v4    # "locData":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private static getUpdatedDataBody(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Lorg/json/JSONObject;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "dereg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .local p1, "updatedDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;>;"
    .local p2, "startDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;>;"
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 276
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 278
    .local v6, "updatedData":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 279
    .local v0, "basicData":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 280
    .local v1, "customData":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 283
    .local v5, "startData":Lorg/json/JSONArray;
    :try_start_0
    const-string v7, "deregi"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;

    .line 285
    .local v2, "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;
    iget-object v7, v2, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mType:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    move v7, v9

    :goto_1
    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 287
    :pswitch_0
    iget-object v7, v2, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mKey:Ljava/lang/String;

    iget-object v10, v2, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    .end local v2    # "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 322
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json parsing error. getUpdatedDataBody. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v6

    .line 285
    .restart local v2    # "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :sswitch_0
    :try_start_1
    const-string v10, "bs"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    goto :goto_1

    :sswitch_1
    const-string v10, "cs"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    .line 290
    :pswitch_1
    iget-object v7, v2, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mKey:Ljava/lang/String;

    iget-object v10, v2, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 295
    .end local v2    # "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;
    :cond_2
    const-string v7, "bAgreement"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 296
    const-string v7, "bAgreement"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    :cond_3
    const-string v7, "bAgreementDate"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 299
    const-string v7, "bAgreementDate"

    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPushAgreementTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 303
    const-string v7, "basics"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 305
    const-string v7, "customs"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    :cond_6
    const-string v7, "dts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    if-eqz p2, :cond_1

    .line 310
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;

    .line 311
    .local v2, "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;
    iget-object v7, v2, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;->mType:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    :cond_7
    move v7, v9

    :goto_4
    packed-switch v7, :pswitch_data_2

    goto :goto_3

    .line 313
    :pswitch_2
    iget-object v7, v2, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;->mData:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_3

    .line 311
    :pswitch_3
    const-string/jumbo v10, "start"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    goto :goto_4

    .line 317
    .end local v2    # "data":Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;
    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 318
    const-string/jumbo v7, "start"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 285
    :sswitch_data_0
    .sparse-switch
        0xc51 -> :sswitch_0
        0xc70 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 311
    :pswitch_data_1
    .packed-switch 0x68ac462
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static needRetry(I)Z
    .locals 2
    .param p0, "code"    # I

    .prologue
    const/4 v0, 0x0

    .line 382
    const/16 v1, 0x1ce

    if-ne p0, v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v0

    .line 384
    :cond_1
    const/16 v1, 0x230

    if-eq p0, v1, :cond_0

    .line 386
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static sendCumulativeData(Landroid/content/Context;Z)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isRetry"    # Z

    .prologue
    .line 103
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/sdk/ppmt/Ppmt;->getTncAgreement(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 104
    sget-object v24, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string v25, "cumulative data send. not initialized or tnc agreement is false."

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 108
    :cond_0
    if-eqz p1, :cond_1

    .line 109
    sget-object v24, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "retry send Cumulative data."

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v10

    .line 113
    .local v10, "handler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v10, :cond_2

    .line 114
    sget-object v24, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "send cumulative data. db handler returns null."

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v10}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getLocationSendDataList()Ljava/util/ArrayList;

    move-result-object v16

    .line 118
    .local v16, "locationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;>;"
    invoke-virtual {v10}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getIapSendDataList()Ljava/util/ArrayList;

    move-result-object v12

    .line 119
    .local v12, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;>;"
    invoke-virtual {v10}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getAppUsageSendDataList()Ljava/util/ArrayList;

    move-result-object v5

    .line 121
    .local v5, "appUsageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;>;"
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getDeregState()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 122
    sget-object v24, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "sendCumulative data. dereg state."

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v10}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v25

    add-int v24, v24, v25

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    add-int v22, v24, v25

    .line 130
    .local v22, "totalDataCount":I
    if-gtz v22, :cond_4

    .line 131
    sget-object v24, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "there is no cumulative data to send."

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v10}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 135
    :cond_4
    const-wide/16 v18, -0x1

    .line 136
    .local v18, "locationMaxRowId":J
    const-wide/16 v14, -0x1

    .line 137
    .local v14, "iapMaxRowId":J
    const-wide/16 v6, -0x1

    .line 140
    .local v6, "appUsageMaxRowId":J
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->getLocationDataBody(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v13

    .line 141
    .local v13, "locationData":Lorg/json/JSONObject;
    invoke-static {v12}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->getIapDataBody(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v11

    .line 142
    .local v11, "iapData":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->getAppUsageDataArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v4

    .line 143
    .local v4, "appUsageArray":Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v8, "cumulativeDataJson":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_5

    .line 146
    const-string v24, "loc"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_6

    .line 148
    const-string v24, "iap"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 150
    const-string/jumbo v24, "uc"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_7
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_8

    .line 157
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;->mId:J

    move-wide/from16 v18, v0

    .line 159
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_9

    .line 160
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;

    move-object/from16 v0, v24

    iget-wide v14, v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;->mId:J

    .line 162
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_a

    .line 163
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;->mId:J

    .line 165
    :cond_a
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 168
    .local v20, "maxRowId":J
    new-instance v23, Lcom/samsung/android/sdk/ppmt/network/request/TrackingRequest;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/sdk/ppmt/network/request/TrackingRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 169
    .local v23, "trackingRequest":Lcom/samsung/android/sdk/ppmt/network/request/TrackingRequest;
    const/16 v24, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->request(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v17

    .line 170
    .local v17, "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->isSuccess:Z

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 171
    sget-object v24, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cumulative data sending succeeded. Code:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseCode:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", Message:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseMsg:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->truncateCumulativeData(J)Z

    .line 173
    const-string/jumbo v24, "send_collected_data"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->initRetryCountAndAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    :cond_b
    :goto_2
    invoke-virtual {v10}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto/16 :goto_0

    .line 151
    .end local v17    # "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    .end local v20    # "maxRowId":J
    .end local v23    # "trackingRequest":Lcom/samsung/android/sdk/ppmt/network/request/TrackingRequest;
    :catch_0
    move-exception v9

    .line 152
    .local v9, "e":Lorg/json/JSONException;
    sget-object v24, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "get cumulative data error. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 176
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v17    # "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    .restart local v20    # "maxRowId":J
    .restart local v23    # "trackingRequest":Lcom/samsung/android/sdk/ppmt/network/request/TrackingRequest;
    :cond_c
    sget-object v24, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cumulative data sending failed. Code:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseCode:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", Message:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseMsg:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseCode:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->needRetry(I)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 178
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->retryCumulativeDataSend(Landroid/content/Context;Z)V

    goto :goto_2
.end method

.method public static sendDereg(Landroid/content/Context;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isRetry"    # Z

    .prologue
    const/4 v8, 0x1

    .line 242
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v3

    .line 244
    .local v3, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getDeregSendDone()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 272
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v1

    .line 248
    .local v1, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v1, :cond_1

    .line 249
    sget-object v6, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "send dereg. db handler returns null."

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getUpdateSendMandatoryData()Ljava/util/ArrayList;

    move-result-object v2

    .line 253
    .local v2, "mandatoryData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;>;"
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 255
    if-nez v2, :cond_2

    .line 256
    sget-object v6, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "send dereg. mandatory data is null."

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_2
    const/4 v6, 0x0

    invoke-static {p0, v2, v6, v8}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->getUpdatedDataBody(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 261
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v5, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 262
    .local v5, "uploadRequest":Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;
    const/16 v6, 0x3c

    invoke-static {p0, v5, v6}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->request(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v4

    .line 263
    .local v4, "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    iget-boolean v6, v4, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->isSuccess:Z

    if-eqz v6, :cond_3

    .line 264
    sget-object v6, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string v7, "dereg success."

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v6, "send_dereg"

    invoke-static {p0, v6}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->initRetryCountAndAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3, v8}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setDeregSendDone(Z)V

    .line 267
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->deleteData(Landroid/content/Context;)V

    goto :goto_0

    .line 269
    :cond_3
    sget-object v6, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dereg fail. Code:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Message:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseMsg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->retryDeregSend(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static sendUpdatedData(Landroid/content/Context;Z)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isRetry"    # Z

    .prologue
    const/4 v12, 0x0

    .line 185
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/Ppmt;->getTncAgreement(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 186
    sget-object v10, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "updated data send. not initialized or tnc agreement is false."

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 190
    :cond_0
    if-eqz p1, :cond_1

    .line 191
    sget-object v10, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "retry send updated data."

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 195
    .local v0, "handler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v0, :cond_2

    .line 196
    sget-object v10, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "send updated data. db handler returns null."

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getSendYetDataCount()J

    move-result-wide v4

    .line 200
    .local v4, "sendYetDataCount":J
    const-string/jumbo v10, "start"

    invoke-virtual {v0, v10}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCumulativeRegSendDataList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 202
    .local v6, "startDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;>;"
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getDeregState()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 203
    sget-object v10, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "sendCumulative data. dereg state."

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 209
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_4

    .line 210
    sget-object v10, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "there is no updated data to send."

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 214
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getUpdateSendData()Ljava/util/ArrayList;

    move-result-object v7

    .line 215
    .local v7, "updateDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;>;"
    invoke-static {p0, v7, v6, v12}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->getUpdatedDataBody(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Lorg/json/JSONObject;

    move-result-object v8

    .line 218
    .local v8, "updatedData":Lorg/json/JSONObject;
    new-instance v9, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;

    invoke-direct {v9, p0, v8}, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 219
    .local v9, "uploadRequest":Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;
    const/16 v10, 0x3c

    invoke-static {p0, v9, v10}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->request(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v1

    .line 220
    .local v1, "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    iget-boolean v10, v1, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->isSuccess:Z

    if-eqz v10, :cond_7

    .line 221
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setIsFirstInit(Z)V

    .line 222
    sget-object v10, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updated data sending succeeded. Code:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Message:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseMsg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->sendDoneUpdateData(Ljava/util/ArrayList;)Z

    .line 226
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 227
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;

    iget-wide v2, v10, Lcom/samsung/android/sdk/ppmt/data/DataSender$CumulativeData;->mId:J

    .line 228
    .local v2, "lastId":J
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->truncateCumulativeRegData(J)Z

    .line 230
    .end local v2    # "lastId":J
    :cond_5
    const-string/jumbo v10, "send_updated_data"

    invoke-static {p0, v10}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->initRetryCountAndAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto/16 :goto_0

    .line 233
    :cond_7
    sget-object v10, Lcom/samsung/android/sdk/ppmt/data/DataSender;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updated data sending failed. Code:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Message:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseMsg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget v10, v1, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseCode:I

    invoke-static {v10}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->needRetry(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 235
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->retryUpdatedDataSend(Landroid/content/Context;Z)V

    goto :goto_1
.end method
