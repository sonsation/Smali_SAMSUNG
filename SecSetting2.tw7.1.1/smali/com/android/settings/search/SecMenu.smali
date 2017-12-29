.class public Lcom/android/settings/search/SecMenu;
.super Ljava/lang/Object;
.source "SecMenu.java"


# instance fields
.field private final EMPTY:Ljava/lang/String;

.field private final HYPHEN:Ljava/lang/String;

.field private final NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String;

.field private final NON_BREAKING_HYPHEN:Ljava/lang/String;

.field private final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field private SETTINGS_FOR_KNOX:[Ljava/lang/String;

.field protected TAG:Ljava/lang/String;

.field protected categoryId:Ljava/lang/String;

.field protected iconResId:I

.field protected index:I

.field protected key:Ljava/lang/String;

.field protected keywords:Ljava/lang/String;

.field protected menuType:I

.field protected parent:Lcom/android/settings/search/SecMenu;

.field protected path:Ljava/lang/String;

.field protected subMenues:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/search/SecMenu;",
            ">;"
        }
    .end annotation
.end field

.field protected summary:Ljava/lang/String;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Lcom/android/settings/search/SecMenu;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "keywords"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string/jumbo v0, "SecMenutree"

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->TAG:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "PreferenceScreen"

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->EMPTY:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "\u2011"

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->NON_BREAKING_HYPHEN:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->HYPHEN:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 204
    iput-object v1, p0, Lcom/android/settings/search/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/android/settings/search/SecMenu;->key:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/settings/search/SecMenu;->parent:Lcom/android/settings/search/SecMenu;

    .line 66
    iput-object p2, p0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/android/settings/search/SecMenu;->summary:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/android/settings/search/SecMenu;->keywords:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/settings/search/SecMenu;->categoryId:Ljava/lang/String;

    .line 70
    iput v2, p0, Lcom/android/settings/search/SecMenu;->index:I

    .line 71
    iput v2, p0, Lcom/android/settings/search/SecMenu;->menuType:I

    .line 72
    if-eqz p1, :cond_0

    .line 74
    const-string/jumbo v0, ""

    iget-object v1, p1, Lcom/android/settings/search/SecMenu;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const-string/jumbo v0, "Settings"

    iget-object v1, p1, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->path:Ljava/lang/String;

    .line 63
    :cond_0
    :goto_1
    return-void

    .line 75
    :cond_1
    iget-object v0, p1, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/settings/search/SecMenu;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->path:Ljava/lang/String;

    goto :goto_1
.end method

.method private hexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 553
    invoke-static {p1}, Lcom/android/settings/sfinderconnect/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sfinderconnect/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isRemovedFromCOM(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 208
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 209
    invoke-static {}, Landroid/os/PersonaPolicyManager;->getComSettings()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/search/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    .line 212
    :cond_0
    const/4 v1, 0x1

    .line 213
    .local v1, "removed":Z
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 214
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 215
    :cond_1
    const/4 v1, 0x0

    .line 220
    :cond_2
    return v1

    .line 213
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "j":I
    .end local v1    # "removed":Z
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 557
    if-eqz p1, :cond_0

    const-string/jumbo v0, "\u2011"

    const-string/jumbo v1, "-"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 561
    if-eqz p1, :cond_0

    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "nohyphen":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "normalized":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 561
    .end local v0    # "nohyphen":Ljava/lang/String;
    .end local v1    # "normalized":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    .restart local v0    # "nohyphen":Ljava/lang/String;
    goto :goto_0
.end method

.method private save(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/SecMenu;)V
    .locals 24
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "parent"    # Lcom/android/settings/search/SecMenu;

    .prologue
    .line 412
    const/4 v9, 0x0

    .local v9, "className":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "intentAction":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "intentTargetPackage":Ljava/lang/String;
    const/16 v16, 0x0

    .line 413
    .local v16, "intentTargetClass":Ljava/lang/String;
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/android/settings/search/SecInnerMenu;

    if-eqz v1, :cond_1

    move-object/from16 v1, p4

    .line 414
    check-cast v1, Lcom/android/settings/search/SecInnerMenu;

    invoke-virtual {v1}, Lcom/android/settings/search/SecInnerMenu;->getFragment()Ljava/lang/String;

    move-result-object v9

    .line 420
    .end local v9    # "className":Ljava/lang/String;
    .end local v14    # "intentAction":Ljava/lang/String;
    .end local v15    # "intentTargetPackage":Ljava/lang/String;
    .end local v16    # "intentTargetClass":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/search/SecMenu;->summary:Ljava/lang/String;

    .line 421
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/search/SecMenu;->iconResId:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/search/SecMenu;->index:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/search/SecMenu;->keywords:Ljava/lang/String;

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecMenu;->key:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/search/SecMenu;->menuType:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecMenu;->path:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecMenu;->categoryId:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 420
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 422
    const/16 v17, 0x1

    const/16 v19, -0x1

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 420
    invoke-virtual/range {v1 .. v23}, Lcom/android/settings/search/SecMenu;->updateOneRowWithFilteredData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 411
    return-void

    .line 415
    .restart local v9    # "className":Ljava/lang/String;
    .restart local v14    # "intentAction":Ljava/lang/String;
    .restart local v15    # "intentTargetPackage":Ljava/lang/String;
    .restart local v16    # "intentTargetClass":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/android/settings/search/SecLinkedMenu;

    if-eqz v1, :cond_0

    move-object/from16 v1, p4

    .line 416
    check-cast v1, Lcom/android/settings/search/SecLinkedMenu;

    invoke-virtual {v1}, Lcom/android/settings/search/SecLinkedMenu;->getTargetAction()Ljava/lang/String;

    move-result-object v14

    .local v14, "intentAction":Ljava/lang/String;
    move-object/from16 v1, p4

    .line 417
    check-cast v1, Lcom/android/settings/search/SecLinkedMenu;

    invoke-virtual {v1}, Lcom/android/settings/search/SecLinkedMenu;->getTargetPkg()Ljava/lang/String;

    move-result-object v15

    .local v15, "intentTargetPackage":Ljava/lang/String;
    move-object/from16 v1, p4

    .line 418
    check-cast v1, Lcom/android/settings/search/SecLinkedMenu;

    invoke-virtual {v1}, Lcom/android/settings/search/SecLinkedMenu;->getTargetClass()Ljava/lang/String;

    move-result-object v16

    .local v16, "intentTargetClass":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public addSubMenu(Lcom/android/settings/search/SecMenu;)V
    .locals 2
    .param p1, "subMenu"    # Lcom/android/settings/search/SecMenu;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    .line 372
    :cond_0
    iget-object v0, p1, Lcom/android/settings/search/SecMenu;->parent:Lcom/android/settings/search/SecMenu;

    iget v0, v0, Lcom/android/settings/search/SecMenu;->index:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/settings/search/SecMenu;->setIndex(I)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/android/settings/search/SecMenu;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "menu$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SecMenu;

    .line 85
    .local v0, "menu":Lcom/android/settings/search/SecMenu;
    invoke-virtual {v0}, Lcom/android/settings/search/SecMenu;->clear()V

    goto :goto_0

    .line 87
    .end local v0    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 88
    iput-object v3, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    .line 82
    .end local v1    # "menu$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public find(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "menu$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SecMenu;

    .line 196
    .local v0, "menu":Lcom/android/settings/search/SecMenu;
    iget-object v2, v0, Lcom/android/settings/search/SecMenu;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/settings/search/SecMenu;->find(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 201
    .end local v0    # "menu":Lcom/android/settings/search/SecMenu;
    .end local v1    # "menu$iterator":Ljava/util/Iterator;
    :cond_2
    return v3
.end method

.method public hasSubMenu(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 190
    :cond_0
    return v0
.end method

.method protected initInnerSubMenu(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-static/range {p2 .. p2}, Lcom/android/settings/search/SearchUtils;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 102
    .local v18, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v18, :cond_0

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SearchIndexableResource \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' should implement the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 104
    const-class v5, Lcom/android/settings/search/Indexable;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 104
    const-string/jumbo v5, " interface!"

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    .line 105
    return-void

    .line 110
    :cond_0
    invoke-static/range {v18 .. v18}, Lcom/android/settings/search/SearchUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v23

    .line 111
    .local v23, "provider":Lcom/android/settings/search/Indexable$SearchIndexProvider;
    if-nez v23, :cond_1

    .line 112
    return-void

    .line 114
    :cond_1
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v20

    .line 115
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v22

    .line 116
    .local v22, "nonKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v20, :cond_3

    .line 117
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_3

    .line 118
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/provider/SearchIndexableResource;

    .line 119
    .local v26, "res":Landroid/provider/SearchIndexableResource;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    move/from16 v27, v0

    .line 120
    .local v27, "xmlResId":I
    if-lez v27, :cond_2

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/search/SecMenu;->parsingXmlResource(Landroid/content/Context;Ljava/util/List;I)V

    .line 117
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 123
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "There is no xmlResId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v5, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v19    # "i":I
    .end local v26    # "res":Landroid/provider/SearchIndexableResource;
    .end local v27    # "xmlResId":I
    :cond_3
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v25

    .line 129
    .local v25, "rawList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    if-eqz v25, :cond_12

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 130
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_12

    .line 131
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/settings/search/SearchIndexableRaw;

    .line 132
    .local v24, "raw":Lcom/android/settings/search/SearchIndexableRaw;
    if-eqz v22, :cond_5

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 130
    :cond_4
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 135
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_d

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings/search/SecMenu;

    .line 138
    .local v21, "menu":Lcom/android/settings/search/SecMenu;
    if-eqz v21, :cond_c

    .line 139
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 140
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    .line 142
    :cond_6
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 143
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/settings/search/SecMenu;->summary:Ljava/lang/String;

    .line 145
    :cond_7
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_4

    .line 146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 148
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

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    .line 149
    :cond_8
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 150
    const/4 v10, 0x0

    .line 151
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 152
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v10, "intent":Landroid/content/Intent;
    :goto_4
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v4, :cond_9

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 157
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 159
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

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    .line 154
    .local v10, "intent":Landroid/content/Intent;
    :cond_a
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .local v10, "intent":Landroid/content/Intent;
    goto :goto_4

    .line 160
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 161
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

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    .line 165
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "menu is null : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 168
    .end local v21    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_d
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 169
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

    invoke-virtual {v0, v11}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    .line 170
    :cond_e
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v4, :cond_11

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 172
    :cond_f
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v4, :cond_10

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 174
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 176
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

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    .line 171
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_11
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    if-nez v4, :cond_f

    .line 178
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

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    .line 100
    .end local v19    # "i":I
    .end local v24    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_12
    return-void
.end method

.method public initSubMenu(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 96
    return-void
.end method

.method protected parsingXmlResource(Landroid/content/Context;Ljava/util/List;I)V
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "xmlResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p2, "nonKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v30, 0x0

    .line 229
    .local v30, "parser":Landroid/content/res/XmlResourceParser;
    const/16 v26, 0x1

    .line 230
    .local v26, "isEnabledRoot":Z
    const/16 v27, 0x1

    .line 232
    .local v27, "isEnabledSub":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v30

    .line 233
    .local v30, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v30, :cond_1

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parser is null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    if-eqz v30, :cond_0

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    .line 235
    :cond_0
    return-void

    .line 239
    :cond_1
    :try_start_1
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v31

    .local v31, "type":I
    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_2

    .line 240
    const/4 v2, 0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_1

    .line 244
    :cond_2
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 245
    .local v28, "nodeName":Ljava/lang/String;
    const-string/jumbo v2, "PreferenceScreen"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 246
    new-instance v2, Ljava/lang/RuntimeException;

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    const-string/jumbo v10, " at "

    .line 247
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    .line 247
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    .end local v28    # "nodeName":Ljava/lang/String;
    .end local v30    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "type":I
    :catch_0
    move-exception v18

    .line 356
    .local v18, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    if-eqz v30, :cond_3

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    .line 226
    .end local v18    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :goto_0
    return-void

    .line 251
    .restart local v28    # "nodeName":Ljava/lang/String;
    .restart local v30    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v31    # "type":I
    :cond_4
    :try_start_3
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v29

    .line 252
    .local v29, "outerDepth":I
    invoke-static/range {v30 .. v30}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v17

    .line 254
    .local v17, "attrs":Landroid/util/AttributeSet;
    const/16 v25, 0x1

    .line 256
    .local v25, "isContains":Z
    :cond_5
    :goto_1
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v31

    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_1d

    .line 257
    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_6

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    move/from16 v0, v29

    if-le v2, v0, :cond_1d

    .line 258
    :cond_6
    const/4 v2, 0x3

    move/from16 v0, v31

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    move/from16 v0, v31

    if-eq v0, v2, :cond_5

    .line 262
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 264
    const/4 v2, 0x3

    move/from16 v0, v31

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    move/from16 v0, v31

    if-ne v0, v2, :cond_8

    .line 265
    :cond_7
    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_5

    const-string/jumbo v2, "PreferenceCategory"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 266
    const/16 v25, 0x1

    goto :goto_1

    .line 271
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 273
    .local v7, "key":Ljava/lang/String;
    const-string/jumbo v2, "PreferenceCategory"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 274
    const/16 v25, 0x1

    .line 275
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/settings/search/SecMenu;->isRemovedFromCOM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 276
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nonIndexableKeys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    .line 277
    const/16 v25, 0x0

    .line 281
    :cond_b
    const/16 v27, 0x1

    .line 282
    if-eqz p2, :cond_c

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/settings/search/SecMenu;->isRemovedFromCOM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 283
    :cond_d
    const/16 v27, 0x0

    .line 286
    :cond_e
    const-string/jumbo v2, "PreferenceCategory"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 291
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "title":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 296
    if-eqz v26, :cond_f

    if-eqz v27, :cond_f

    move/from16 v22, v25

    .line 297
    .local v22, "enable":Z
    :goto_2
    if-nez v22, :cond_10

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") is disabled so not indexed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 357
    .end local v4    # "title":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v17    # "attrs":Landroid/util/AttributeSet;
    .end local v22    # "enable":Z
    .end local v25    # "isContains":Z
    .end local v28    # "nodeName":Ljava/lang/String;
    .end local v29    # "outerDepth":I
    .end local v30    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "type":I
    :catch_1
    move-exception v21

    .line 358
    .local v21, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    if-eqz v30, :cond_3

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 296
    .end local v21    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v17    # "attrs":Landroid/util/AttributeSet;
    .restart local v25    # "isContains":Z
    .restart local v28    # "nodeName":Ljava/lang/String;
    .restart local v29    # "outerDepth":I
    .restart local v30    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v31    # "type":I
    :cond_f
    const/16 v22, 0x0

    goto :goto_2

    .line 301
    .restart local v22    # "enable":Z
    :cond_10
    :try_start_5
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "summary":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getDataEng(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, "keywords":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getFragment(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    .line 305
    .local v8, "className":Ljava/lang/String;
    if-eqz v8, :cond_16

    .line 306
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v23

    .line 307
    .local v23, "innerDepth":I
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v9, "curBundle":Landroid/os/Bundle;
    :cond_11
    :goto_3
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v31

    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_13

    .line 309
    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_12

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    move/from16 v0, v23

    if-le v2, v0, :cond_13

    .line 310
    :cond_12
    const/4 v2, 0x3

    move/from16 v0, v31

    if-eq v0, v2, :cond_11

    const/4 v2, 0x4

    move/from16 v0, v31

    if-eq v0, v2, :cond_11

    .line 313
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 314
    .local v24, "innerNodeName":Ljava/lang/String;
    const-string/jumbo v2, "extra"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "extra"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v9}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 359
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "summary":Ljava/lang/String;
    .end local v6    # "keywords":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "curBundle":Landroid/os/Bundle;
    .end local v17    # "attrs":Landroid/util/AttributeSet;
    .end local v22    # "enable":Z
    .end local v23    # "innerDepth":I
    .end local v24    # "innerNodeName":Ljava/lang/String;
    .end local v25    # "isContains":Z
    .end local v28    # "nodeName":Ljava/lang/String;
    .end local v29    # "outerDepth":I
    .end local v30    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "type":I
    :catch_2
    move-exception v19

    .line 360
    .local v19, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 364
    if-eqz v30, :cond_3

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 318
    .end local v19    # "e":Ljava/io/IOException;
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "summary":Ljava/lang/String;
    .restart local v6    # "keywords":Ljava/lang/String;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "curBundle":Landroid/os/Bundle;
    .restart local v17    # "attrs":Landroid/util/AttributeSet;
    .restart local v22    # "enable":Z
    .restart local v23    # "innerDepth":I
    .restart local v25    # "isContains":Z
    .restart local v28    # "nodeName":Ljava/lang/String;
    .restart local v29    # "outerDepth":I
    .restart local v30    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v31    # "type":I
    :cond_13
    :try_start_7
    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 319
    new-instance v2, Lcom/android/settings/search/SecInnerMenu;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/search/SecInnerMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 361
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "summary":Ljava/lang/String;
    .end local v6    # "keywords":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "curBundle":Landroid/os/Bundle;
    .end local v17    # "attrs":Landroid/util/AttributeSet;
    .end local v22    # "enable":Z
    .end local v23    # "innerDepth":I
    .end local v25    # "isContains":Z
    .end local v28    # "nodeName":Ljava/lang/String;
    .end local v29    # "outerDepth":I
    .end local v30    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "type":I
    :catch_3
    move-exception v20

    .line 362
    .local v20, "e":Ljava/lang/NullPointerException;
    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 364
    if-eqz v30, :cond_3

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 321
    .end local v20    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "summary":Ljava/lang/String;
    .restart local v6    # "keywords":Ljava/lang/String;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "curBundle":Landroid/os/Bundle;
    .restart local v17    # "attrs":Landroid/util/AttributeSet;
    .restart local v22    # "enable":Z
    .restart local v23    # "innerDepth":I
    .restart local v25    # "isContains":Z
    .restart local v28    # "nodeName":Ljava/lang/String;
    .restart local v29    # "outerDepth":I
    .restart local v30    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v31    # "type":I
    :cond_14
    :try_start_9
    new-instance v2, Lcom/android/settings/search/SecInnerMenu;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/search/SecInnerMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 363
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "summary":Ljava/lang/String;
    .end local v6    # "keywords":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "curBundle":Landroid/os/Bundle;
    .end local v17    # "attrs":Landroid/util/AttributeSet;
    .end local v22    # "enable":Z
    .end local v23    # "innerDepth":I
    .end local v25    # "isContains":Z
    .end local v28    # "nodeName":Ljava/lang/String;
    .end local v29    # "outerDepth":I
    .end local v30    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "type":I
    :catchall_0
    move-exception v2

    .line 364
    if-eqz v30, :cond_15

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    .line 363
    :cond_15
    throw v2

    .line 324
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "summary":Ljava/lang/String;
    .restart local v6    # "keywords":Ljava/lang/String;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v17    # "attrs":Landroid/util/AttributeSet;
    .restart local v22    # "enable":Z
    .restart local v25    # "isContains":Z
    .restart local v28    # "nodeName":Ljava/lang/String;
    .restart local v29    # "outerDepth":I
    .restart local v30    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v31    # "type":I
    :cond_16
    :try_start_a
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v23

    .line 325
    .restart local v23    # "innerDepth":I
    const/16 v16, 0x0

    .line 326
    .local v16, "intent":Landroid/content/Intent;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 327
    .end local v16    # "intent":Landroid/content/Intent;
    .restart local v9    # "curBundle":Landroid/os/Bundle;
    :cond_17
    :goto_4
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v31

    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_1a

    .line 328
    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_18

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    move/from16 v0, v23

    if-le v2, v0, :cond_1a

    .line 329
    :cond_18
    const/4 v2, 0x3

    move/from16 v0, v31

    if-eq v0, v2, :cond_17

    const/4 v2, 0x4

    move/from16 v0, v31

    if-eq v0, v2, :cond_17

    .line 332
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 333
    .restart local v24    # "innerNodeName":Ljava/lang/String;
    const-string/jumbo v2, "extra"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "extra"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v9}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 335
    invoke-static/range {v30 .. v30}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 336
    :cond_19
    const-string/jumbo v2, "intent"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v16

    .local v16, "intent":Landroid/content/Intent;
    goto :goto_4

    .line 340
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v24    # "innerNodeName":Ljava/lang/String;
    :cond_1a
    if-nez v16, :cond_1b

    .line 341
    new-instance v2, Lcom/android/settings/search/SecMenu;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_1

    .line 343
    :cond_1b
    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_1c

    .line 344
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 345
    const/4 v9, 0x0

    .line 347
    .end local v9    # "curBundle":Landroid/os/Bundle;
    :cond_1c
    new-instance v10, Lcom/android/settings/search/SecLinkedMenu;

    move-object/from16 v11, p0

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/settings/search/SecLinkedMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 364
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "summary":Ljava/lang/String;
    .end local v6    # "keywords":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v22    # "enable":Z
    .end local v23    # "innerDepth":I
    :cond_1d
    if-eqz v30, :cond_3

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0
.end method

.method public save(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "locale"    # Ljava/lang/String;

    .prologue
    .line 389
    instance-of v2, p0, Lcom/android/settings/search/SecInnerMenu;

    if-eqz v2, :cond_2

    move-object v2, p0

    .line 391
    check-cast v2, Lcom/android/settings/search/SecInnerMenu;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/settings/search/SecInnerMenu;->saveInnerMenu(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 402
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 404
    :cond_1
    return-void

    .line 392
    :cond_2
    instance-of v2, p0, Lcom/android/settings/search/SecLinkedMenu;

    if-eqz v2, :cond_3

    move-object v2, p0

    .line 394
    check-cast v2, Lcom/android/settings/search/SecLinkedMenu;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/settings/search/SecLinkedMenu;->saveLinkedMenu(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_3
    const-string/jumbo v2, "Settings"

    iget-object v3, p0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->parent:Lcom/android/settings/search/SecMenu;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/settings/search/SecMenu;->save(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/SecMenu;)V

    goto :goto_0

    .line 406
    :cond_4
    iget-object v2, p0, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "menu$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SecMenu;

    .line 407
    .local v0, "menu":Lcom/android/settings/search/SecMenu;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/search/SecMenu;->save(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_1

    .line 388
    .end local v0    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_5
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/settings/search/SecMenu;->index:I

    .line 92
    return-void
.end method

.method public updateOneRow(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "updatedTitle"    # Ljava/lang/String;
    .param p5, "normalizedTitle"    # Ljava/lang/String;
    .param p6, "updatedSummaryOn"    # Ljava/lang/String;
    .param p7, "normalizedSummaryOn"    # Ljava/lang/String;
    .param p8, "updatedSummaryOff"    # Ljava/lang/String;
    .param p9, "normalizedSummaryOff"    # Ljava/lang/String;
    .param p10, "entries"    # Ljava/lang/String;
    .param p11, "className"    # Ljava/lang/String;
    .param p12, "screenTitle"    # Ljava/lang/String;
    .param p13, "iconResId"    # I
    .param p14, "rank"    # I
    .param p15, "keywords"    # Ljava/lang/String;
    .param p16, "intentAction"    # Ljava/lang/String;
    .param p17, "intentTargetPackage"    # Ljava/lang/String;
    .param p18, "intentTargetClass"    # Ljava/lang/String;
    .param p19, "enabled"    # Z
    .param p20, "key"    # Ljava/lang/String;
    .param p21, "userId"    # I
    .param p22, "menuType"    # I
    .param p23, "menuPath"    # Ljava/lang/String;
    .param p24, "categoryId"    # Ljava/lang/String;
    .param p25, "args"    # Landroid/os/Bundle;

    .prologue
    .line 480
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 481
    if-nez p23, :cond_1

    const/4 v11, 0x4

    move/from16 v0, p22

    if-eq v0, v11, :cond_1

    .line 482
    :cond_0
    return-void

    .line 487
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    .local v8, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p12

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    move-object/from16 v0, p20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 492
    .local v2, "docId":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b1d08

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "onText":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b1d09

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, "offText":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "%"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 496
    :cond_2
    const-string/jumbo p6, ""

    .line 498
    :cond_3
    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "%"

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 499
    :cond_4
    const-string/jumbo p7, ""

    .line 505
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 506
    .local v7, "pk":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/sfinderconnect/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 508
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 509
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v11, "docid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 510
    const-string/jumbo v11, "_id"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string/jumbo v11, "locale"

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string/jumbo v11, "data_rank"

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 513
    const-string/jumbo v11, "data_title"

    move-object/from16 v0, p4

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string/jumbo v11, "data_title_normalized"

    move-object/from16 v0, p5

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string/jumbo v11, "data_title_hex"

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/settings/search/SecMenu;->hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string/jumbo v11, "data_summary_on"

    move-object/from16 v0, p6

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string/jumbo v11, "data_summary_on_normalized"

    move-object/from16 v0, p7

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string/jumbo v11, "data_summary_on_hex"

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/settings/search/SecMenu;->hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string/jumbo v11, "data_summary_off"

    move-object/from16 v0, p8

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string/jumbo v11, "data_summary_off_normalized"

    move-object/from16 v0, p9

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string/jumbo v11, "data_entries"

    move-object/from16 v0, p10

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string/jumbo v11, "data_keywords"

    move-object/from16 v0, p15

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string/jumbo v11, "class_name"

    move-object/from16 v0, p11

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string/jumbo v11, "screen_title"

    move-object/from16 v0, p12

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string/jumbo v11, "intent_action"

    move-object/from16 v0, p16

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string/jumbo v11, "intent_target_package"

    move-object/from16 v0, p17

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string/jumbo v11, "intent_target_class"

    move-object/from16 v0, p18

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string/jumbo v11, "icon"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    const-string/jumbo v11, "enabled"

    invoke-static/range {p19 .. p19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 530
    const-string/jumbo v11, "data_key_reference"

    move-object/from16 v0, p20

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string/jumbo v11, "user_id"

    invoke-static/range {p21 .. p21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    const-string/jumbo v11, "menu_type"

    invoke-static/range {p22 .. p22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    const-string/jumbo v11, "menu_path"

    move-object/from16 v0, p23

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string/jumbo v11, "category_id"

    move-object/from16 v0, p24

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const/4 v1, 0x0

    .line 536
    .local v1, "bundleBytes":[B
    if-eqz p25, :cond_6

    .line 537
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 538
    .local v9, "valueStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 539
    .local v6, "parcel":Landroid/os/Parcel;
    const/4 v11, 0x0

    move-object/from16 v0, p25

    invoke-virtual {v0, v6, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 540
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 541
    .local v1, "bundleBytes":[B
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 543
    .end local v1    # "bundleBytes":[B
    .end local v6    # "parcel":Landroid/os/Parcel;
    .end local v9    # "valueStream":Ljava/io/ByteArrayOutputStream;
    :cond_6
    const-string/jumbo v11, "extras"

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 546
    :try_start_0
    const-string/jumbo v11, "prefs_index"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v3

    .line 548
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateOneRowWithFilteredData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 28
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "summaryOn"    # Ljava/lang/String;
    .param p6, "summaryOff"    # Ljava/lang/String;
    .param p7, "entries"    # Ljava/lang/String;
    .param p8, "className"    # Ljava/lang/String;
    .param p9, "screenTitle"    # Ljava/lang/String;
    .param p10, "iconResId"    # I
    .param p11, "rank"    # I
    .param p12, "keywords"    # Ljava/lang/String;
    .param p13, "intentAction"    # Ljava/lang/String;
    .param p14, "intentTargetPackage"    # Ljava/lang/String;
    .param p15, "intentTargetClass"    # Ljava/lang/String;
    .param p16, "enabled"    # Z
    .param p17, "key"    # Ljava/lang/String;
    .param p18, "userId"    # I
    .param p19, "menuType"    # I
    .param p20, "menuPath"    # Ljava/lang/String;
    .param p21, "categoryId"    # Ljava/lang/String;
    .param p22, "args"    # Landroid/os/Bundle;

    .prologue
    .line 437
    if-nez p16, :cond_0

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip indexing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    .line 439
    return-void

    .line 441
    :cond_0
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    .line 450
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/settings/search/SecMenu;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, "updatedTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/settings/search/SecMenu;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 452
    .local v8, "updatedSummaryOn":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/settings/search/SecMenu;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 454
    .local v10, "updatedSummaryOff":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/search/SecMenu;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 455
    .local v7, "normalizedTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings/search/SecMenu;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 456
    .local v9, "normalizedSummaryOn":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/search/SecMenu;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "normalizedSummaryOff":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    move-object/from16 v20, p15

    move/from16 v21, p16

    move-object/from16 v22, p17

    move/from16 v23, p18

    move/from16 v24, p19

    move-object/from16 v25, p20

    move-object/from16 v26, p21

    move-object/from16 v27, p22

    .line 463
    invoke-virtual/range {v2 .. v27}, Lcom/android/settings/search/SecMenu;->updateOneRow(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 431
    return-void

    .line 443
    .end local v6    # "updatedTitle":Ljava/lang/String;
    .end local v7    # "normalizedTitle":Ljava/lang/String;
    .end local v8    # "updatedSummaryOn":Ljava/lang/String;
    .end local v9    # "normalizedSummaryOn":Ljava/lang/String;
    .end local v10    # "updatedSummaryOff":Ljava/lang/String;
    .end local v11    # "normalizedSummaryOff":Ljava/lang/String;
    :cond_1
    invoke-static/range {p15 .. p15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / intentTargetClass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 446
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
