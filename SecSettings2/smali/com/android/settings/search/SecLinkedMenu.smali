.class public Lcom/android/settings/search/SecLinkedMenu;
.super Lcom/android/settings/search/SecMenu;
.source "SecLinkedMenu.java"


# instance fields
.field private final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private EXTERNAL_PKG:[Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private targetAction:Ljava/lang/String;

.field private targetClass:Ljava/lang/String;

.field private targetPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "parent"    # Lcom/android/settings/search/SecMenu;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "keywords"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "com.android.phone"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "com.android.settings"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "com.sec.android.app.desktoplauncher"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "com.samsung.android.game.gametools"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 34
    iput-object v0, p0, Lcom/android/settings/search/SecLinkedMenu;->EXTERNAL_PKG:[Ljava/lang/String;

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SecLinkedMenu;->EMPTY_LIST:Ljava/util/List;

    .line 64
    iput-object p6, p0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    .line 62
    return-void
.end method

.method private addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/List;)Z
    .locals 14
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 309
    .local p5, "nonKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 310
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 312
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 317
    .end local v10    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-nez v10, :cond_0

    .line 318
    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Cannot add index data for Uri: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v2, 0x0

    return v2

    .line 313
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 314
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unknown URI: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 324
    .local v9, "count":I
    if-lez v9, :cond_4

    .line 325
    :cond_1
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 326
    const/16 v2, 0xb

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 327
    .local v12, "targetClass":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "title":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, "summary":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "keywords":Ljava/lang/String;
    const/16 v2, 0xc

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, "key":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 332
    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 333
    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/search/SecMenu;

    iput-object v4, v2, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 350
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "summary":Ljava/lang/String;
    .end local v6    # "keywords":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v12    # "targetClass":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 351
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 350
    throw v2

    .line 336
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "summary":Ljava/lang/String;
    .restart local v6    # "keywords":Ljava/lang/String;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v9    # "count":I
    .restart local v12    # "targetClass":Ljava/lang/String;
    :cond_2
    if-eqz p5, :cond_1

    :try_start_2
    move-object/from16 v0, p5

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 337
    new-instance v2, Lcom/android/settings/search/SecMenu;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/search/SecLinkedMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto :goto_1

    .line 341
    :cond_3
    if-eqz p5, :cond_1

    move-object/from16 v0, p5

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->parent:Lcom/android/settings/search/SecMenu;

    invoke-virtual {v2, v7}, Lcom/android/settings/search/SecMenu;->hasSubMenu(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 343
    .local v8, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    invoke-direct {v2, v3, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 344
    new-instance v2, Lcom/android/settings/search/SecLinkedMenu;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/search/SecLinkedMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/search/SecLinkedMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 351
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "summary":Ljava/lang/String;
    .end local v6    # "keywords":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v12    # "targetClass":Ljava/lang/String;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 353
    const/4 v2, 0x1

    return v2
.end method

.method private addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/List;)Z
    .locals 12
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 273
    .local p5, "nonKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 274
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 276
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 281
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-nez v8, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot add index data for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v2, 0x0

    return v2

    .line 277
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 278
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 288
    .local v7, "count":I
    if-lez v7, :cond_2

    .line 289
    :cond_1
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    const/4 v2, 0x6

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 291
    .local v10, "targetClass":Ljava/lang/String;
    if-eqz v10, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 294
    .local v11, "xmlResId":I
    if-lez v11, :cond_1

    .line 295
    move-object/from16 v0, p5

    invoke-virtual {p0, p1, v0, v11}, Lcom/android/settings/search/SecLinkedMenu;->parsingXmlResource(Landroid/content/Context;Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 300
    .end local v7    # "count":I
    .end local v10    # "targetClass":Ljava/lang/String;
    .end local v11    # "xmlResId":I
    :catchall_0
    move-exception v2

    .line 301
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 300
    throw v2

    .line 301
    .restart local v7    # "count":I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 303
    const/4 v2, 0x1

    return v2
.end method

.method private addIndexablesFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 16
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 186
    .local p3, "nonKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/search/SecLinkedMenu;->index:I

    .line 187
    .local v13, "baseRank":I
    const-string/jumbo v2, "com.android.phone"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v12, p2

    .line 189
    .local v12, "authority":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 191
    .local v3, "context":Landroid/content/Context;
    invoke-static {v12}, Lcom/android/settings/search/SecLinkedMenu;->buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 193
    .local v5, "uriForResources":Landroid/net/Uri;
    sget-object v6, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    .line 192
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/search/SecLinkedMenu;->addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/List;)Z

    move-result v15

    .line 195
    .local v15, "result":Z
    invoke-static {v12}, Lcom/android/settings/search/SecLinkedMenu;->buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 197
    .local v9, "uriForRawData":Landroid/net/Uri;
    sget-object v10, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    move-object/from16 v6, p0

    move-object v7, v3

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    .line 196
    invoke-direct/range {v6 .. v11}, Lcom/android/settings/search/SecLinkedMenu;->addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/List;)Z

    move-result v15

    .line 199
    const/4 v2, 0x1

    return v2

    .line 187
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "uriForResources":Landroid/net/Uri;
    .end local v9    # "uriForRawData":Landroid/net/Uri;
    .end local v12    # "authority":Ljava/lang/String;
    .end local v15    # "result":Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ".search"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .restart local v12    # "authority":Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v12    # "authority":Ljava/lang/String;
    .end local v13    # "baseRank":I
    :catch_0
    move-exception v14

    .line 201
    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecLinkedMenu;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not create context for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 202
    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 201
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v2, 0x0

    return v2
.end method

.method private static buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    const-string/jumbo v1, "settings/non_indexables_key"

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    const-string/jumbo v1, "settings/indexables_raw"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    const-string/jumbo v1, "settings/indexables_xml_res"

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 226
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 228
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 235
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-nez v7, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/settings/search/SecLinkedMenu;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot add index data for Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/android/settings/search/SecLinkedMenu;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    .line 231
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 232
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/settings/search/SecLinkedMenu;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    .line 230
    .local v9, "e":Ljava/lang/NullPointerException;
    iget-object v1, p0, Lcom/android/settings/search/SecLinkedMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Cannot add index data by null value"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 243
    .local v6, "count":I
    if-lez v6, :cond_1

    .line 244
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 246
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 250
    .end local v6    # "count":I
    .end local v10    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 251
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 250
    throw v1

    .line 251
    .restart local v6    # "count":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 249
    return-object v11
.end method

.method private getNonIndexablesKeysFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 210
    .local v3, "packageContext":Landroid/content/Context;
    const-string/jumbo v5, "com.android.phone"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, p2

    .line 212
    .local v0, "authority":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/android/settings/search/SecLinkedMenu;->buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 214
    .local v4, "uriForNonIndexableKeys":Landroid/net/Uri;
    sget-object v5, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    .line 213
    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/search/SecLinkedMenu;->getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 215
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v2

    .line 210
    .end local v0    # "authority":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "uriForNonIndexableKeys":Landroid/net/Uri;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".search"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "authority":Ljava/lang/String;
    goto :goto_0

    .line 216
    .end local v0    # "authority":Ljava/lang/String;
    .end local v3    # "packageContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p0, Lcom/android/settings/search/SecLinkedMenu;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not create context for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 218
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 217
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v5, p0, Lcom/android/settings/search/SecLinkedMenu;->EMPTY_LIST:Ljava/util/List;

    return-object v5
.end method

.method private initInnerSubMenu(Landroid/content/Context;Ljava/lang/String;)V
    .locals 28
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static/range {p2 .. p2}, Lcom/android/settings/search/SearchUtils;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 101
    .local v18, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v18, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecLinkedMenu;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SearchIndexableResource \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' should implement the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 103
    const-class v6, Lcom/android/settings/search/Indexable;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 103
    const-string/jumbo v6, " interface!"

    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 109
    :cond_0
    invoke-static/range {v18 .. v18}, Lcom/android/settings/search/SearchUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v23

    .line 110
    .local v23, "provider":Lcom/android/settings/search/Indexable$SearchIndexProvider;
    if-nez v23, :cond_1

    .line 111
    return-void

    .line 113
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v4}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v20

    .line 114
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v22

    .line 115
    .local v22, "nonKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v20, :cond_3

    .line 116
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_3

    .line 117
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/provider/SearchIndexableResource;

    .line 118
    .local v26, "res":Landroid/provider/SearchIndexableResource;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    move/from16 v27, v0

    .line 119
    .local v27, "xmlResId":I
    if-lez v27, :cond_2

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/search/SecLinkedMenu;->parsingXmlResource(Landroid/content/Context;Ljava/util/List;I)V

    .line 116
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 122
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecLinkedMenu;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "There is no xmlResId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    .end local v19    # "i":I
    .end local v26    # "res":Landroid/provider/SearchIndexableResource;
    .end local v27    # "xmlResId":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v4}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v25

    .line 128
    .local v25, "rawList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    if-eqz v25, :cond_12

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 129
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_12

    .line 130
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/settings/search/SearchIndexableRaw;

    .line 131
    .local v24, "raw":Lcom/android/settings/search/SearchIndexableRaw;
    if-eqz v22, :cond_5

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 129
    :cond_4
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 134
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_d

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings/search/SecMenu;

    .line 137
    .local v21, "menu":Lcom/android/settings/search/SecMenu;
    if-eqz v21, :cond_c

    .line 138
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 139
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    .line 141
    :cond_6
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 142
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/settings/search/SecMenu;->summary:Ljava/lang/String;

    .line 144
    :cond_7
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_4

    .line 145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 147
    new-instance v4, Lcom/android/settings/search/SecInnerMenu;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/settings/search/SecMenu;->summary:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/settings/search/SecMenu;->keywords:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/SecInnerMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecLinkedMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    .line 148
    :cond_8
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 149
    const/4 v10, 0x0

    .line 150
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 151
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v10, "intent":Landroid/content/Intent;
    :goto_4
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v4, :cond_9

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 156
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 158
    :cond_9
    new-instance v4, Lcom/android/settings/search/SecLinkedMenu;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/settings/search/SecMenu;->summary:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/settings/search/SecMenu;->keywords:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/SecLinkedMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecLinkedMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    .line 153
    .local v10, "intent":Landroid/content/Intent;
    :cond_a
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .local v10, "intent":Landroid/content/Intent;
    goto :goto_4

    .line 159
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 160
    new-instance v4, Lcom/android/settings/search/SecMenu;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/settings/search/SecMenu;->summary:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/settings/search/SecMenu;->keywords:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecLinkedMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    .line 164
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecLinkedMenu;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "menu is null : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 167
    .end local v21    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_d
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 168
    new-instance v11, Lcom/android/settings/search/SecInnerMenu;

    move-object/from16 v0, v24

    iget-object v13, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v14, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/settings/search/SecInnerMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/search/SecLinkedMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    .line 169
    :cond_e
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v4, :cond_11

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 171
    :cond_f
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v4, :cond_10

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 173
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    :cond_10
    new-instance v4, Lcom/android/settings/search/SecLinkedMenu;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/SecLinkedMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecLinkedMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    .line 170
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_11
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    if-nez v4, :cond_f

    .line 177
    new-instance v4, Lcom/android/settings/search/SecMenu;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecLinkedMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    .line 99
    .end local v19    # "i":I
    .end local v24    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_12
    return-void
.end method

.method private isSupportedExternalPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/settings/search/SecLinkedMenu;->EXTERNAL_PKG:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 70
    .local v0, "isSupported":Z
    iget-object v1, p0, Lcom/android/settings/search/SecLinkedMenu;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSupportedExternalPackage/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v0
.end method


# virtual methods
.method public getTargetAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/search/SecLinkedMenu;->targetAction:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    return-object v0
.end method

.method public initSubMenu(Landroid/content/Context;)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 76
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    if-nez v3, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetAction:Ljava/lang/String;

    .line 79
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->getTargetPkgByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    .line 80
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->getTargetClassByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    .line 82
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 83
    :cond_1
    return-void

    .line 82
    :cond_2
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/search/SecLinkedMenu;->isSupportedExternalPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 86
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/settings/search/SecLinkedMenu;->initInnerSubMenu(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_4

    return-void

    .line 88
    :cond_3
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/settings/search/SecLinkedMenu;->getNonIndexablesKeysFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, "nonKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/settings/search/SecLinkedMenu;->addIndexablesFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_0

    .line 94
    .end local v2    # "nonKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "menu$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SecMenu;

    .line 95
    .local v0, "menu":Lcom/android/settings/search/SecMenu;
    invoke-virtual {v0, p1}, Lcom/android/settings/search/SecMenu;->initSubMenu(Landroid/content/Context;)V

    goto :goto_1

    .line 75
    .end local v0    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_5
    return-void
.end method

.method public saveLinkedMenu(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 24
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "locale"    # Ljava/lang/String;

    .prologue
    .line 357
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/search/SecLinkedMenu;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/search/SecLinkedMenu;->summary:Ljava/lang/String;

    .line 358
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/search/SecLinkedMenu;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/search/SecLinkedMenu;->iconResId:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/search/SecLinkedMenu;->index:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SecLinkedMenu;->targetAction:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecLinkedMenu;->key:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 359
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/search/SecLinkedMenu;->menuType:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecLinkedMenu;->path:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecLinkedMenu;->categoryId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    .line 357
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 358
    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x1

    .line 359
    const/16 v19, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 357
    invoke-virtual/range {v1 .. v23}, Lcom/android/settings/search/SecLinkedMenu;->updateOneRowWithFilteredData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 356
    return-void
.end method
