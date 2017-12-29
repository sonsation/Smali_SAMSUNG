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
    .line 65
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "com.android.phone"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "com.samsung.networkui"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "com.android.settings"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "com.samsung.android.app.cocktailbarservice"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "com.sec.android.app.desktoplauncher"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "com.samsung.android.game.gametools"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "com.samsung.android.uds"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 33
    iput-object v0, p0, Lcom/android/settings/search/SecLinkedMenu;->EXTERNAL_PKG:[Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SecLinkedMenu;->EMPTY_LIST:Ljava/util/List;

    .line 66
    iput-object p6, p0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    .line 64
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
    .line 228
    .local p5, "nonKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 229
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 231
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

    .line 236
    .end local v10    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-nez v10, :cond_0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot add index data for Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    .line 238
    const/4 v2, 0x0

    return v2

    .line 232
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 233
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 243
    .local v9, "count":I
    if-lez v9, :cond_5

    .line 244
    :cond_1
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 245
    const/16 v2, 0xb

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 246
    .local v12, "targetClass":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "title":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "summary":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "keywords":Ljava/lang/String;
    const/16 v2, 0xc

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, "key":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 251
    .local v13, "targetPkg":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/search/SecMenu;

    iput-object v4, v2, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 274
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "summary":Ljava/lang/String;
    .end local v6    # "keywords":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v12    # "targetClass":Ljava/lang/String;
    .end local v13    # "targetPkg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 275
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 274
    throw v2

    .line 256
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "summary":Ljava/lang/String;
    .restart local v6    # "keywords":Ljava/lang/String;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v9    # "count":I
    .restart local v12    # "targetClass":Ljava/lang/String;
    .restart local v13    # "targetPkg":Ljava/lang/String;
    :cond_2
    if-eqz p5, :cond_1

    :try_start_2
    move-object/from16 v0, p5

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    new-instance v2, Lcom/android/settings/search/SecMenu;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/search/SecLinkedMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto :goto_1

    .line 261
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

    .line 262
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v13, :cond_4

    .line 264
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v13, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 268
    :goto_2
    new-instance v2, Lcom/android/settings/search/SecLinkedMenu;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/search/SecLinkedMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/search/SecLinkedMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_1

    .line 266
    :cond_4
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    invoke-direct {v2, v3, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 275
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "summary":Ljava/lang/String;
    .end local v6    # "keywords":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v12    # "targetClass":Ljava/lang/String;
    .end local v13    # "targetPkg":Ljava/lang/String;
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 277
    const/4 v2, 0x1

    return v2
.end method

.method private addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/List;)Z
    .locals 13
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
    .line 190
    .local p5, "nonKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 191
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 193
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 200
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-nez v8, :cond_0

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot add index data for Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    .line 202
    const/4 v2, 0x0

    return v2

    .line 196
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 197
    .local v10, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 194
    .end local v10    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    .line 195
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 207
    .local v7, "count":I
    if-lez v7, :cond_2

    .line 208
    :cond_1
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    const/4 v2, 0x6

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 210
    .local v11, "targetClass":Ljava/lang/String;
    if-eqz v11, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 213
    .local v12, "xmlResId":I
    if-lez v12, :cond_1

    .line 214
    move-object/from16 v0, p5

    invoke-virtual {p0, p1, v0, v12}, Lcom/android/settings/search/SecLinkedMenu;->parsingXmlResource(Landroid/content/Context;Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 219
    .end local v7    # "count":I
    .end local v11    # "targetClass":Ljava/lang/String;
    .end local v12    # "xmlResId":I
    :catchall_0
    move-exception v2

    .line 220
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 219
    throw v2

    .line 220
    .restart local v7    # "count":I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 222
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
    .line 103
    .local p3, "nonKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/search/SecLinkedMenu;->index:I

    .line 104
    .local v13, "baseRank":I
    const-string/jumbo v2, "com.android.phone"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v12, p2

    .line 106
    .local v12, "authority":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 108
    .local v3, "context":Landroid/content/Context;
    invoke-static {v12}, Lcom/android/settings/search/SecLinkedMenu;->buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 110
    .local v5, "uriForResources":Landroid/net/Uri;
    sget-object v6, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    .line 109
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/search/SecLinkedMenu;->addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/List;)Z

    move-result v15

    .line 112
    .local v15, "result":Z
    invoke-static {v12}, Lcom/android/settings/search/SecLinkedMenu;->buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 114
    .local v9, "uriForRawData":Landroid/net/Uri;
    sget-object v10, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    move-object/from16 v6, p0

    move-object v7, v3

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    .line 113
    invoke-direct/range {v6 .. v11}, Lcom/android/settings/search/SecLinkedMenu;->addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/List;)Z

    move-result v15

    .line 116
    const/4 v2, 0x1

    return v2

    .line 104
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

    .line 117
    .end local v12    # "authority":Ljava/lang/String;
    .end local v13    # "baseRank":I
    :catch_0
    move-exception v14

    .line 118
    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not create context for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    .line 120
    const/4 v2, 0x0

    return v2
.end method

.method private static buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 183
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

    .line 184
    const-string/jumbo v1, "settings/non_indexables_key"

    .line 183
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
    .line 178
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

    .line 179
    const-string/jumbo v1, "settings/indexables_raw"

    .line 178
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
    .line 173
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

    .line 174
    const-string/jumbo v1, "settings/indexables_xml_res"

    .line 173
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
    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 145
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

    .line 152
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-nez v7, :cond_0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot add index data for Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/search/SecLinkedMenu;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    .line 148
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 149
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    .line 147
    .local v9, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "Cannot add index data by null value"

    invoke-static {v1}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 160
    .local v6, "count":I
    if-lez v6, :cond_1

    .line 161
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 163
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 167
    .end local v6    # "count":I
    .end local v10    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 168
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 167
    throw v1

    .line 168
    .restart local v6    # "count":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 166
    return-object v11
.end method

.method private getNonIndexablesKeysFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
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
    .line 126
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 127
    .local v3, "packageContext":Landroid/content/Context;
    const-string/jumbo v5, "com.android.phone"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, p2

    .line 129
    .local v0, "authority":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/android/settings/search/SecLinkedMenu;->buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 131
    .local v4, "uriForNonIndexableKeys":Landroid/net/Uri;
    sget-object v5, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    .line 130
    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/search/SecLinkedMenu;->getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v2

    .line 127
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

    .line 133
    .end local v0    # "authority":Ljava/lang/String;
    .end local v3    # "packageContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not create context for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 135
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    .line 136
    iget-object v5, p0, Lcom/android/settings/search/SecLinkedMenu;->EMPTY_LIST:Ljava/util/List;

    return-object v5
.end method

.method private isSupportedExternalPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/settings/search/SecLinkedMenu;->EXTERNAL_PKG:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 72
    .local v0, "isSupported":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSupportedExternalPackage/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    .line 73
    return v0
.end method


# virtual methods
.method public getTargetAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/search/SecLinkedMenu;->targetAction:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    return-object v0
.end method

.method public initSubMenu(Landroid/content/Context;)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 78
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    if-nez v3, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetAction:Ljava/lang/String;

    .line 81
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->getTargetPkgByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    .line 82
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->getTargetClassByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    .line 84
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 85
    :cond_1
    return-void

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/search/SecLinkedMenu;->isSupportedExternalPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetClass:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/search/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/settings/search/SecLinkedMenu;->initInnerSubMenu(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 94
    :goto_0
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_4

    return-void

    .line 90
    :cond_3
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/settings/search/SecLinkedMenu;->getNonIndexablesKeysFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, "nonKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/settings/search/SecLinkedMenu;->targetPkg:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/settings/search/SecLinkedMenu;->addIndexablesFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_0

    .line 96
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

    .line 97
    .local v0, "menu":Lcom/android/settings/search/SecMenu;
    invoke-virtual {v0, p1}, Lcom/android/settings/search/SecMenu;->initSubMenu(Landroid/content/Context;)V

    goto :goto_1

    .line 77
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
    .line 281
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/search/SecLinkedMenu;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/search/SecLinkedMenu;->summary:Ljava/lang/String;

    .line 282
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/search/SecLinkedMenu;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/search/SecLinkedMenu;->iconResId:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/search/SecLinkedMenu;->index:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/search/SecLinkedMenu;->keywords:Ljava/lang/String;

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

    .line 283
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

    .line 281
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 282
    const/4 v9, 0x0

    const/16 v17, 0x1

    .line 283
    const/16 v19, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 281
    invoke-virtual/range {v1 .. v23}, Lcom/android/settings/search/SecLinkedMenu;->updateOneRowWithFilteredData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 280
    return-void
.end method
