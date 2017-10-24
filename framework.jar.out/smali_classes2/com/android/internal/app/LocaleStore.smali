.class public Lcom/android/internal/app/LocaleStore;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo;
    }
.end annotation


# static fields
.field private static final LANGUAGE_XML:Ljava/lang/String; = "/system/csc/language.xml"

.field private static final LANGUAGE_XML_OMC_V1_DIR:Ljava/lang/String; = "/data/omc/etc"

.field private static final TAG:Ljava/lang/String; = "LocaleStore"

.field private static final TAG_DISPLAY:Ljava/lang/String; = "Display"

.field private static final TAG_LANGUAGE:Ljava/lang/String; = "LanguageSet"

.field private static final TAG_NOT_DISPLAY:Ljava/lang/String; = "NonDisplay"

.field private static final TAG_SUGGESTED:Ljava/lang/String; = "Suggested"

.field private static sCountryMode:Z

.field private static sFullyInitialized:Z

.field private static final sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sPrevDefaultLocaleList:Landroid/os/LocaleList;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    sput-boolean v1, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    .line 60
    sput-boolean v1, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSuggestedLocalesForRegion(Ljava/util/Locale;)V
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 328
    if-nez p0, :cond_0

    .line 329
    return-void

    .line 331
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    return-void

    .line 336
    :cond_1
    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "li$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 337
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 339
    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    goto :goto_0

    .line 327
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_3
    return-void
.end method

.method public static fillCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore;->fillCacheManaged(Landroid/content/Context;Z)V

    .line 351
    return-void
.end method

.method public static fillCacheManaged(Landroid/content/Context;Z)V
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInternalCalled"    # Z

    .prologue
    .line 359
    sget-object v19, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    .line 360
    .local v19, "prevLocaleList":Landroid/os/LocaleList;
    if-eqz v19, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 361
    return-void

    .line 364
    :cond_0
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v11, v0, [Ljava/lang/String;

    .line 365
    .local v11, "localelists":[Ljava/lang/String;
    const-string/jumbo v7, "/system/csc/language.xml"

    .line 368
    .local v7, "languageXmlPath":Ljava/lang/String;
    const-string/jumbo v14, "/data/omc/etc/language.xml"

    .line 369
    .local v14, "omcV1Path":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "persist.sys.omc_path"

    const-string/jumbo v26, "/data/omc/etc"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/language.xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 372
    .local v15, "omcV2Path":Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 373
    move-object v7, v15

    .line 378
    :cond_1
    :goto_0
    invoke-static {v7}, Lcom/android/internal/app/LocaleStore;->getLocaleListFromXML(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 379
    const/16 v22, 0x0

    .line 380
    .local v22, "supportedLocales":Ljava/lang/String;
    const/16 v23, 0x0

    .line 381
    .local v23, "unsupportedLocales":Ljava/lang/String;
    const/16 v21, 0x0

    .line 383
    .local v21, "suggestedLocales":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 384
    const/16 v24, 0x0

    aget-object v22, v11, v24

    .line 385
    .local v22, "supportedLocales":Ljava/lang/String;
    const/16 v24, 0x1

    aget-object v23, v11, v24

    .line 386
    .local v23, "unsupportedLocales":Ljava/lang/String;
    const/16 v24, 0x2

    aget-object v21, v11, v24

    .line 387
    .local v21, "suggestedLocales":Ljava/lang/String;
    if-eqz v22, :cond_2

    .line 389
    const-string/jumbo v24, "\\s"

    const-string/jumbo v25, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 390
    const-string/jumbo v24, "_"

    const-string/jumbo v25, "-"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 393
    :cond_2
    if-eqz v23, :cond_3

    .line 394
    const-string/jumbo v24, "\\s"

    const-string/jumbo v25, ""

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 395
    const-string/jumbo v24, "_"

    const-string/jumbo v25, "-"

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 398
    :cond_3
    if-eqz v21, :cond_4

    .line 399
    const-string/jumbo v24, "\\s"

    const-string/jumbo v25, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 400
    const-string/jumbo v24, "_"

    const-string/jumbo v25, "-"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 404
    .end local v21    # "suggestedLocales":Ljava/lang/String;
    .end local v22    # "supportedLocales":Ljava/lang/String;
    .end local v23    # "unsupportedLocales":Ljava/lang/String;
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v20

    .line 406
    .local v20, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v25

    const/16 v24, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    aget-object v10, v25, v24

    .line 407
    .local v10, "localeId":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 408
    new-instance v24, Ljava/util/IllformedLocaleException;

    const-string/jumbo v25, "Bad locale entry in locale_config.xml"

    invoke-direct/range {v24 .. v25}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 374
    .end local v10    # "localeId":Ljava/lang/String;
    .end local v20    # "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    new-instance v24, Ljava/io/File;

    const-string/jumbo v25, "/data/omc/etc/language.xml"

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 375
    const-string/jumbo v7, "/data/omc/etc/language.xml"

    goto/16 :goto_0

    .line 410
    .restart local v10    # "localeId":Ljava/lang/String;
    .restart local v20    # "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    new-instance v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-direct {v8, v10, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 420
    .local v8, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v21, :cond_7

    .line 421
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 422
    invoke-static {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v27

    or-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    invoke-static {v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    .line 423
    invoke-static {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v27

    or-int/lit8 v27, v27, 0x8

    move/from16 v0, v27

    invoke-static {v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    .line 427
    :cond_7
    if-eqz v23, :cond_9

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 406
    :cond_8
    :goto_2
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 429
    :cond_9
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 430
    invoke-static {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v27

    or-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    invoke-static {v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    .line 433
    :cond_a
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, "id":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 435
    sget-object v27, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :goto_3
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v16

    .line 441
    .local v16, "parent":Ljava/util/Locale;
    if-eqz v16, :cond_8

    .line 442
    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v17

    .line 443
    .local v17, "parentId":Ljava/lang/String;
    if-eqz v17, :cond_c

    .line 444
    sget-object v27, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 445
    sget-object v27, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v28, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 437
    .end local v16    # "parent":Ljava/util/Locale;
    .end local v17    # "parentId":Ljava/lang/String;
    :cond_b
    const-string/jumbo v27, "LocaleStore"

    const-string/jumbo v28, "put null key to sLocaleCache #1"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 448
    .restart local v16    # "parent":Ljava/util/Locale;
    .restart local v17    # "parentId":Ljava/lang/String;
    :cond_c
    const-string/jumbo v27, "LocaleStore"

    const-string/jumbo v28, "put null key to sLocaleCache #2"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 454
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v10    # "localeId":Ljava/lang/String;
    .end local v16    # "parent":Ljava/util/Locale;
    .end local v17    # "parentId":Ljava/lang/String;
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSpecificCustomerSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v25

    const/16 v24, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    aget-object v10, v25, v24

    .line 455
    .restart local v10    # "localeId":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 456
    new-instance v24, Ljava/util/IllformedLocaleException;

    const-string/jumbo v25, "Bad locale entry in locale_config.xml"

    invoke-direct/range {v24 .. v25}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 458
    :cond_e
    new-instance v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-direct {v8, v10, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 460
    .restart local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v22, :cond_11

    .line 461
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_f

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 463
    :cond_f
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 464
    invoke-static {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v27

    or-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    invoke-static {v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    .line 467
    :cond_10
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 468
    .restart local v5    # "id":Ljava/lang/String;
    if-eqz v5, :cond_12

    .line 469
    sget-object v27, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :goto_5
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v16

    .line 475
    .restart local v16    # "parent":Ljava/util/Locale;
    if-eqz v16, :cond_11

    .line 476
    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v17

    .line 477
    .restart local v17    # "parentId":Ljava/lang/String;
    if-eqz v17, :cond_13

    .line 478
    sget-object v27, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 479
    sget-object v27, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v28, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .end local v5    # "id":Ljava/lang/String;
    .end local v16    # "parent":Ljava/util/Locale;
    .end local v17    # "parentId":Ljava/lang/String;
    :cond_11
    :goto_6
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 471
    .restart local v5    # "id":Ljava/lang/String;
    :cond_12
    const-string/jumbo v27, "LocaleStore"

    const-string/jumbo v28, "put null key to sLocaleCache #4"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 482
    .restart local v16    # "parent":Ljava/util/Locale;
    .restart local v17    # "parentId":Ljava/lang/String;
    :cond_13
    const-string/jumbo v27, "LocaleStore"

    const-string/jumbo v28, "put null key to sLocaleCache #5"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 503
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v10    # "localeId":Ljava/lang/String;
    .end local v16    # "parent":Ljava/util/Locale;
    .end local v17    # "parentId":Ljava/lang/String;
    :cond_14
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 504
    .local v13, "localizedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v12

    .line 505
    .local v12, "locales":[Ljava/lang/String;
    const/16 v24, 0x0

    array-length v0, v12

    move/from16 v25, v0

    :goto_7
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_19

    aget-object v10, v12, v24

    .line 506
    .restart local v10    # "localeId":Ljava/lang/String;
    new-instance v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-direct {v8, v10, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 507
    .restart local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, "country":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_16

    .line 510
    const/4 v3, 0x0

    .line 511
    .local v3, "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    sget-object v26, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 512
    sget-object v26, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 519
    :cond_15
    :goto_8
    if-eqz v3, :cond_16

    .line 520
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v26

    or-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    invoke-static {v3, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    .line 522
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v26

    or-int/lit8 v26, v26, 0x4

    move/from16 v0, v26

    invoke-static {v3, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    .line 525
    :cond_16
    if-eqz p1, :cond_17

    .line 526
    invoke-static {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_17
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 514
    .restart local v3    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_18
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "-"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, "langScriptCtry":Ljava/lang/String;
    sget-object v26, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 516
    sget-object v26, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .local v3, "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_8

    .line 529
    .end local v3    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v4    # "country":Ljava/lang/String;
    .end local v6    # "langScriptCtry":Ljava/lang/String;
    .end local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v10    # "localeId":Ljava/lang/String;
    :cond_19
    if-eqz p1, :cond_1c

    .line 530
    sget-object v24, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "li$iterator":Ljava/util/Iterator;
    :cond_1a
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 531
    .restart local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    .line 540
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v24

    if-eqz v24, :cond_1a

    .line 541
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v18

    .line 542
    .local v18, "parentLi":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v18, :cond_1a

    .line 543
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setParentSecSuggested(Z)V

    goto :goto_9

    .line 549
    .end local v8    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v18    # "parentLi":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/internal/app/LocaleStore;->addSuggestedLocalesForRegion(Ljava/util/Locale;)V

    .line 550
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v24

    sput-object v24, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    .line 356
    .end local v9    # "li$iterator":Ljava/util/Iterator;
    :cond_1c
    return-void
.end method

.method public static getAllLocaleInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "cnt":I
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/internal/app/LocaleStore;->fillCacheManaged(Landroid/content/Context;Z)V

    .line 623
    sget-object v5, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 624
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-ne v5, v7, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 629
    .local v4, "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    sget-object v5, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 630
    .restart local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-ne v5, v7, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 631
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 632
    .local v1, "l":Ljava/util/Locale;
    if-eqz v1, :cond_2

    .line 633
    new-instance v5, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/LocaleStore;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 637
    .end local v1    # "l":Ljava/util/Locale;
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 638
    return-object v4
.end method

.method private static getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I
    .locals 3
    .param p1, "li"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)I"
        }
    .end annotation

    .prologue
    .local p0, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 556
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 557
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get0(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 558
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_4

    return v2

    .line 558
    :cond_3
    return v1

    .line 560
    :cond_4
    return v1
.end method

.method public static getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p3, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 572
    if-eqz p2, :cond_1

    move v6, v7

    :goto_0
    sput-boolean v6, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    .line 573
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 574
    if-nez p2, :cond_2

    const/4 v3, 0x0

    .line 576
    :goto_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 577
    .local v5, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    sget-object v6, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 578
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {p1, v1, p3}, Lcom/android/internal/app/LocaleStore;->getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I

    move-result v0

    .line 579
    .local v0, "level":I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    .line 580
    if-eqz p2, :cond_3

    .line 581
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 582
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 572
    .end local v0    # "level":I
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v2    # "li$iterator":Ljava/util/Iterator;
    .end local v5    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 574
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .local v3, "parentId":Ljava/lang/String;
    goto :goto_1

    .line 585
    .end local v3    # "parentId":Ljava/lang/String;
    .restart local v0    # "level":I
    .restart local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .restart local v2    # "li$iterator":Ljava/util/Iterator;
    .restart local v5    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_3
    invoke-static {v1, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 586
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 588
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    .line 589
    .local v4, "parentLi":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    const/4 v6, 0x4

    invoke-static {v1, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 590
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParentSecSuggested()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 594
    :cond_5
    :goto_3
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 591
    :cond_6
    invoke-virtual {v4, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setParentSecSuggested(Z)V

    goto :goto_3

    .line 599
    .end local v0    # "level":I
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v4    # "parentLi":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_7
    return-object v5
.end method

.method public static getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v3, 0x0

    .line 603
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x0

    .line 605
    .local v1, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v0, :cond_1

    .line 606
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 607
    new-instance v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .end local v1    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-direct {v1, p0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 608
    .local v1, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .end local v1    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :goto_0
    return-object v1

    .line 610
    .local v1, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_0
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .local v1, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_0

    .line 613
    .local v1, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    const-string/jumbo v2, "LocaleStore"

    const-string/jumbo v3, "put null key to sLocaleCache #3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getLocaleListFromXML(Ljava/lang/String;)[Ljava/lang/String;
    .locals 27
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 650
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 652
    .local v18, "result":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 654
    .local v19, "rootNode":Lorg/w3c/dom/Node;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 655
    .local v9, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 656
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 657
    .local v5, "doc":Lorg/w3c/dom/Document;
    if-eqz v5, :cond_0

    .line 658
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 667
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "rootNode":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    if-nez v19, :cond_1

    .line 668
    const/16 v24, 0x0

    return-object v24

    .line 664
    .restart local v19    # "rootNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v6

    .line 665
    .local v6, "ex":Ljava/io/IOException;
    const-string/jumbo v24, "LocaleStore"

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 662
    .end local v6    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 663
    .local v8, "ex":Lorg/xml/sax/SAXException;
    const-string/jumbo v24, "LocaleStore"

    invoke-virtual {v8}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 660
    .end local v8    # "ex":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v7

    .line 661
    .local v7, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    const-string/jumbo v24, "LocaleStore"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    .end local v7    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v19    # "rootNode":Lorg/w3c/dom/Node;
    :cond_1
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v24, "LanguageSet"

    const/16 v25, 0x0

    aput-object v24, v20, v25

    const-string/jumbo v24, "Display"

    const/16 v25, 0x1

    aput-object v24, v20, v25

    .line 673
    .local v20, "tagList":[Ljava/lang/String;
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v24, "LanguageSet"

    const/16 v25, 0x0

    aput-object v24, v21, v25

    const-string/jumbo v24, "NonDisplay"

    const/16 v25, 0x1

    aput-object v24, v21, v25

    .line 674
    .local v21, "tagList_1":[Ljava/lang/String;
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v24, "LanguageSet"

    const/16 v25, 0x0

    aput-object v24, v22, v25

    const-string/jumbo v24, "Suggested"

    const/16 v25, 0x1

    aput-object v24, v22, v25

    .line 675
    .local v22, "tagList_2":[Ljava/lang/String;
    move-object/from16 v15, v19

    .line 676
    .local v15, "node":Lorg/w3c/dom/Node;
    move-object/from16 v16, v19

    .line 677
    .local v16, "node_1":Lorg/w3c/dom/Node;
    move-object/from16 v17, v19

    .line 680
    .local v17, "node_2":Lorg/w3c/dom/Node;
    const/16 v24, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    aget-object v23, v20, v24

    .line 681
    .local v23, "tagName":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 682
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 683
    .local v4, "children":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_3

    .line 684
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    .line 685
    .local v14, "n":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v14, :cond_3

    .line 686
    invoke-interface {v4, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 687
    .local v3, "child":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 688
    move-object v15, v3

    .line 685
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 680
    .end local v3    # "child":Lorg/w3c/dom/Node;
    .end local v4    # "children":Lorg/w3c/dom/NodeList;
    .end local v13    # "i":I
    .end local v14    # "n":I
    :cond_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 696
    .end local v23    # "tagName":Ljava/lang/String;
    :cond_4
    if-eqz v15, :cond_6

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget-object v24, v20, v24

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 701
    :goto_3
    const/16 v24, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    aget-object v23, v21, v24

    .line 702
    .restart local v23    # "tagName":Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 703
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 704
    .restart local v4    # "children":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_7

    .line 705
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    .line 706
    .restart local v14    # "n":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5
    if-ge v13, v14, :cond_7

    .line 707
    invoke-interface {v4, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 708
    .restart local v3    # "child":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 709
    move-object/from16 v16, v3

    .line 706
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 697
    .end local v3    # "child":Lorg/w3c/dom/Node;
    .end local v4    # "children":Lorg/w3c/dom/NodeList;
    .end local v13    # "i":I
    .end local v14    # "n":I
    .end local v23    # "tagName":Ljava/lang/String;
    :cond_6
    const/16 v24, 0x0

    const/16 v25, 0x0

    aput-object v24, v18, v25

    goto :goto_3

    .line 701
    .restart local v23    # "tagName":Ljava/lang/String;
    :cond_7
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 717
    .end local v23    # "tagName":Ljava/lang/String;
    :cond_8
    if-eqz v16, :cond_a

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget-object v24, v20, v24

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 722
    :goto_6
    const/16 v24, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    :goto_7
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    aget-object v23, v22, v24

    .line 723
    .restart local v23    # "tagName":Ljava/lang/String;
    if-eqz v17, :cond_b

    .line 724
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 725
    .restart local v4    # "children":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_b

    .line 726
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    .line 727
    .restart local v14    # "n":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_8
    if-ge v13, v14, :cond_b

    .line 728
    invoke-interface {v4, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 729
    .restart local v3    # "child":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_9

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 730
    move-object/from16 v17, v3

    .line 727
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 718
    .end local v3    # "child":Lorg/w3c/dom/Node;
    .end local v4    # "children":Lorg/w3c/dom/NodeList;
    .end local v13    # "i":I
    .end local v14    # "n":I
    .end local v23    # "tagName":Ljava/lang/String;
    :cond_a
    const/16 v24, 0x0

    const/16 v25, 0x1

    aput-object v24, v18, v25

    goto :goto_6

    .line 722
    .restart local v23    # "tagName":Ljava/lang/String;
    :cond_b
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 738
    .end local v23    # "tagName":Ljava/lang/String;
    :cond_c
    if-eqz v17, :cond_11

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget-object v24, v20, v24

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 743
    :goto_9
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    .line 744
    .local v10, "firstChild":Lorg/w3c/dom/Node;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 745
    .local v11, "firstChild_1":Lorg/w3c/dom/Node;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    .line 747
    .local v12, "firstChild_2":Lorg/w3c/dom/Node;
    if-nez v10, :cond_d

    if-eqz v11, :cond_12

    .line 748
    :cond_d
    if-eqz v10, :cond_e

    .line 749
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v18, v25

    .line 752
    :cond_e
    if-eqz v11, :cond_f

    .line 753
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v18, v25

    .line 756
    :cond_f
    if-eqz v12, :cond_10

    .line 757
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2

    aput-object v24, v18, v25

    .line 759
    :cond_10
    return-object v18

    .line 739
    .end local v10    # "firstChild":Lorg/w3c/dom/Node;
    .end local v11    # "firstChild_1":Lorg/w3c/dom/Node;
    .end local v12    # "firstChild_2":Lorg/w3c/dom/Node;
    :cond_11
    const/16 v24, 0x0

    const/16 v25, 0x2

    aput-object v24, v18, v25

    goto :goto_9

    .line 762
    .restart local v10    # "firstChild":Lorg/w3c/dom/Node;
    .restart local v11    # "firstChild_1":Lorg/w3c/dom/Node;
    .restart local v12    # "firstChild_2":Lorg/w3c/dom/Node;
    :cond_12
    const/16 v24, 0x0

    return-object v24
.end method

.method private static getSimCountries(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 278
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 280
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    .line 281
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "iso":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 288
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v0    # "iso":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 642
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 643
    return-object p0

    .line 646
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateSimCountries(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 312
    .local v2, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 317
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    invoke-static {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    goto :goto_0

    .line 309
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    return-void
.end method
