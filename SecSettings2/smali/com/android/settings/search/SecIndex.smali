.class public Lcom/android/settings/search/SecIndex;
.super Ljava/lang/Object;
.source "SecIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SecIndex$SaveSearchQueryTask;,
        Lcom/android/settings/search/SecIndex$UpdateIndexTask;
    }
.end annotation


# static fields
.field private static final MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

.field private static final MATCH_COLUMNS_SAMSUMNG_PRIMARY:[Ljava/lang/String;

.field private static final MATCH_COLUMNS_SAMSUNG_SECONDARY:[Ljava/lang/String;

.field private static final MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

.field private static MAX_SAVED_SEARCH_QUERY:J

.field private static final SELECT_COLUMNS:[Ljava/lang/String;

.field private static sInstance:Lcom/android/settings/search/SecIndex;


# instance fields
.field private DUMMY_STR:Ljava/lang/String;

.field private SETTINGS_FOR_KNOX:[Ljava/lang/String;

.field private final mBaseAuthority:Ljava/lang/String;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private tree:Lcom/android/settings/search/SecMenutree;


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/android/settings/search/SecIndex;->MAX_SAVED_SEARCH_QUERY:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/settings/search/SecIndex;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/SecIndex;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/search/SecIndex;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/SecIndex;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/search/SecIndex;)Lcom/android/settings/search/SecMenutree;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/SecIndex;->tree:Lcom/android/settings/search/SecMenutree;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/search/SecIndex;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/search/SecIndex;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/search/SecIndex;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/SecIndex;->updateInternal()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 76
    const-string/jumbo v1, "data_rank"

    aput-object v1, v0, v3

    .line 77
    const-string/jumbo v1, "data_title"

    aput-object v1, v0, v4

    .line 78
    const-string/jumbo v1, "data_summary_on"

    aput-object v1, v0, v5

    .line 79
    const-string/jumbo v1, "data_summary_off"

    aput-object v1, v0, v6

    .line 80
    const-string/jumbo v1, "data_entries"

    aput-object v1, v0, v7

    .line 81
    const-string/jumbo v1, "data_keywords"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "class_name"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "screen_title"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "icon"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "intent_action"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "intent_target_package"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "intent_target_class"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "enabled"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "data_key_reference"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "menu_type"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "menu_path"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "category_id"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "extras"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "_id"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 75
    sput-object v0, Lcom/android/settings/search/SecIndex;->SELECT_COLUMNS:[Ljava/lang/String;

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 98
    const-string/jumbo v1, "data_title"

    aput-object v1, v0, v3

    .line 99
    const-string/jumbo v1, "data_title_normalized"

    aput-object v1, v0, v4

    .line 100
    const-string/jumbo v1, "data_title_hex"

    aput-object v1, v0, v5

    .line 101
    const-string/jumbo v1, "data_summary_on"

    aput-object v1, v0, v6

    .line 102
    const-string/jumbo v1, "data_summary_on_normalized"

    aput-object v1, v0, v7

    .line 103
    const-string/jumbo v1, "data_summary_on_hex"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 97
    sput-object v0, Lcom/android/settings/search/SecIndex;->MATCH_COLUMNS_SAMSUMNG_PRIMARY:[Ljava/lang/String;

    .line 106
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "data_title"

    aput-object v1, v0, v3

    .line 108
    const-string/jumbo v1, "data_title_normalized"

    aput-object v1, v0, v4

    .line 109
    const-string/jumbo v1, "data_title_hex"

    aput-object v1, v0, v5

    .line 110
    const-string/jumbo v1, "data_summary_on"

    aput-object v1, v0, v6

    .line 111
    const-string/jumbo v1, "data_summary_on_normalized"

    aput-object v1, v0, v7

    .line 112
    const-string/jumbo v1, "data_summary_on_hex"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "data_keywords"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 106
    sput-object v0, Lcom/android/settings/search/SecIndex;->MATCH_COLUMNS_SAMSUNG_SECONDARY:[Ljava/lang/String;

    .line 117
    new-array v0, v6, [Ljava/lang/String;

    .line 118
    const-string/jumbo v1, "data_title"

    aput-object v1, v0, v3

    .line 119
    const-string/jumbo v1, "data_title_normalized"

    aput-object v1, v0, v4

    .line 120
    const-string/jumbo v1, "data_keywords"

    aput-object v1, v0, v5

    .line 117
    sput-object v0, Lcom/android/settings/search/SecIndex;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    .line 123
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "data_summary_on"

    aput-object v1, v0, v3

    .line 125
    const-string/jumbo v1, "data_summary_on_normalized"

    aput-object v1, v0, v4

    .line 126
    const-string/jumbo v1, "data_summary_off"

    aput-object v1, v0, v5

    .line 127
    const-string/jumbo v1, "data_summary_off_normalized"

    aput-object v1, v0, v6

    .line 128
    const-string/jumbo v1, "data_entries"

    aput-object v1, v0, v7

    .line 123
    sput-object v0, Lcom/android/settings/search/SecIndex;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    .line 133
    const-wide/16 v0, 0x40

    sput-wide v0, Lcom/android/settings/search/SecIndex;->MAX_SAVED_SEARCH_QUERY:J

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseAuthority"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/search/SecIndex;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    .line 254
    const-string/jumbo v0, "aaaaa"

    iput-object v0, p0, Lcom/android/settings/search/SecIndex;->DUMMY_STR:Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/android/settings/search/SecIndex;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/android/settings/search/SecIndex;->mBaseAuthority:Ljava/lang/String;

    .line 166
    return-void
.end method

.method private buildSearchLikeStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/android/settings/sfinderconnect/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 507
    .local v5, "tmp":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 508
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 509
    iget-object p1, p0, Lcom/android/settings/search/SecIndex;->DUMMY_STR:Ljava/lang/String;

    .line 511
    :cond_1
    iget-object v5, p0, Lcom/android/settings/search/SecIndex;->DUMMY_STR:Ljava/lang/String;

    .line 513
    :cond_2
    invoke-static {v5}, Lcom/android/settings/sfinderconnect/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "hexValue":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/settings/search/SecIndex;->searchword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, "values":[Ljava/lang/String;
    array-length v0, p2

    .line 516
    .local v0, "count":I
    const-string/jumbo v7, " WHERE ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    if-ge v3, v0, :cond_9

    .line 518
    const/4 v7, 0x2

    if-eq v3, v7, :cond_3

    const/4 v7, 0x5

    if-ne v3, v7, :cond_6

    .line 519
    :cond_3
    aget-object v7, p2, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string/jumbo v7, " LIKE "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string/jumbo v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string/jumbo v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string/jumbo v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :goto_2
    add-int/lit8 v7, v0, -0x1

    if-ge v3, v7, :cond_4

    .line 539
    const-string/jumbo v7, " OR "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 507
    .end local v0    # "count":I
    .end local v1    # "hexValue":Ljava/lang/String;
    .end local v3    # "n":I
    .end local v6    # "values":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const-string/jumbo v7, " "

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 525
    .restart local v0    # "count":I
    .restart local v1    # "hexValue":Ljava/lang/String;
    .restart local v3    # "n":I
    .restart local v6    # "values":[Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const/4 v2, 0x0

    .local v2, "m":I
    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_8

    .line 527
    aget-object v7, p2, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string/jumbo v7, " LIKE "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string/jumbo v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    aget-object v7, v6, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string/jumbo v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_7

    .line 533
    const-string/jumbo v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 536
    :cond_8
    const-string/jumbo v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 542
    .end local v2    # "m":I
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private buildSearchLikeStringForColumnsByKeyword(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/android/settings/sfinderconnect/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 548
    .local v5, "tmp":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 549
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 550
    iget-object p1, p0, Lcom/android/settings/search/SecIndex;->DUMMY_STR:Ljava/lang/String;

    .line 552
    :cond_1
    iget-object v5, p0, Lcom/android/settings/search/SecIndex;->DUMMY_STR:Ljava/lang/String;

    .line 554
    :cond_2
    invoke-static {v5}, Lcom/android/settings/sfinderconnect/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "hexValue":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/settings/search/SecIndex;->searchword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 556
    .local v6, "values":[Ljava/lang/String;
    array-length v0, p2

    .line 557
    .local v0, "count":I
    const-string/jumbo v7, " WHERE ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    if-ge v3, v0, :cond_c

    .line 559
    const/4 v7, 0x2

    if-eq v3, v7, :cond_3

    const/4 v7, 0x5

    if-ne v3, v7, :cond_6

    .line 560
    :cond_3
    aget-object v7, p2, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string/jumbo v7, " NOT LIKE "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string/jumbo v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string/jumbo v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string/jumbo v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :goto_2
    add-int/lit8 v7, v0, -0x1

    if-ge v3, v7, :cond_4

    .line 593
    const-string/jumbo v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 548
    .end local v0    # "count":I
    .end local v1    # "hexValue":Ljava/lang/String;
    .end local v3    # "n":I
    .end local v6    # "values":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const-string/jumbo v7, " "

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 565
    .restart local v0    # "count":I
    .restart local v1    # "hexValue":Ljava/lang/String;
    .restart local v3    # "n":I
    .restart local v6    # "values":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v0, -0x1

    if-ne v3, v7, :cond_9

    .line 566
    const-string/jumbo v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const/4 v2, 0x0

    .local v2, "m":I
    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_8

    .line 568
    aget-object v7, p2, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string/jumbo v7, " LIKE "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string/jumbo v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    aget-object v7, v6, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string/jumbo v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_7

    .line 574
    const-string/jumbo v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 577
    :cond_8
    const-string/jumbo v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 579
    .end local v2    # "m":I
    :cond_9
    const-string/jumbo v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const/4 v2, 0x0

    .restart local v2    # "m":I
    :goto_4
    array-length v7, v6

    if-ge v2, v7, :cond_b

    .line 581
    aget-object v7, p2, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string/jumbo v7, " NOT LIKE "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string/jumbo v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    aget-object v7, v6, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string/jumbo v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_a

    .line 587
    const-string/jumbo v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 590
    :cond_b
    const-string/jumbo v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 596
    .end local v2    # "m":I
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    sget-object v2, Lcom/android/settings/search/SecIndex;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 441
    sget-object v2, Lcom/android/settings/search/SecIndex;->SELECT_COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    sget-object v2, Lcom/android/settings/search/SecIndex;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 443
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_1
    const-string/jumbo v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string/jumbo v2, "prefs_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/SecIndex;->buildSearchWhereStringForColumns2(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private buildSearchSQLForColumnByKeyword(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    sget-object v2, Lcom/android/settings/search/SecIndex;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 456
    sget-object v2, Lcom/android/settings/search/SecIndex;->SELECT_COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    sget-object v2, Lcom/android/settings/search/SecIndex;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 458
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_1
    const-string/jumbo v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string/jumbo v2, "prefs_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/SecIndex;->buildSearchWhereStringForColumns2ByKeyword(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private buildSearchSubMenuSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "colums"    # [Ljava/lang/String;

    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/SecIndex;->buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string/jumbo v1, " AND menu_type != 4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSearchSubMenuSQLByKeyword(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "colums"    # [Ljava/lang/String;

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/SecIndex;->buildSearchSQLForColumnByKeyword(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string/jumbo v1, " AND menu_type != 4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSearchTileSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "colums"    # [Ljava/lang/String;

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/SecIndex;->buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string/jumbo v1, " AND menu_type = 4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSearchTileSQLByKeyword(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "colums"    # [Ljava/lang/String;

    .prologue
    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/SecIndex;->buildSearchSQLForColumnByKeyword(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string/jumbo v1, " AND menu_type = 4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSearchWhereStringForColumns2(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 468
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 469
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 470
    const-string/jumbo v2, ""

    return-object v2

    .line 473
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/SecIndex;->buildSearchLikeStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string/jumbo v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string/jumbo v2, "locale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 480
    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string/jumbo v2, "enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string/jumbo v2, " = 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private buildSearchWhereStringForColumns2ByKeyword(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 487
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 488
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 489
    const-string/jumbo v2, ""

    return-object v2

    .line 491
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/SecIndex;->buildSearchLikeStringForColumnsByKeyword(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string/jumbo v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string/jumbo v2, "locale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 498
    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string/jumbo v2, "enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string/jumbo v2, " = 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string/jumbo v1, "saved_queries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const-string/jumbo v1, " ORDER BY rowId DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :goto_0
    const-string/jumbo v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 290
    :cond_0
    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string/jumbo v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    sget-object v0, Lcom/android/settings/search/SecIndex;->sInstance:Lcom/android/settings/search/SecIndex;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/android/settings/search/SecIndex;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/SecIndex;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/search/SecIndex;->sInstance:Lcom/android/settings/search/SecIndex;

    .line 163
    :cond_0
    sget-object v0, Lcom/android/settings/search/SecIndex;->sInstance:Lcom/android/settings/search/SecIndex;

    return-object v0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/settings/search/SecIndex;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/IndexDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/search/SecIndex;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/search/IndexDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "Index"

    const-string/jumbo v2, "Cannot open writable database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    const/4 v1, 0x0

    return-object v1
.end method

.method private static normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 601
    if-eqz p0, :cond_0

    const-string/jumbo v0, "\u2011"

    const-string/jumbo v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private searchword(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 257
    const-string/jumbo v2, "%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "\'"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    :cond_0
    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/search/SecIndex;->DUMMY_STR:Ljava/lang/String;

    aput-object v3, v2, v4

    return-object v2

    .line 261
    :cond_1
    const-string/jumbo v2, "\\&| "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "words":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_2
    array-length v2, v1

    if-nez v2, :cond_3

    .line 267
    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/search/SecIndex;->DUMMY_STR:Ljava/lang/String;

    aput-object v3, v2, v4

    return-object v2

    .line 269
    :cond_3
    return-object v1
.end method

.method private updateInternal()V
    .locals 2

    .prologue
    .line 388
    new-instance v0, Lcom/android/settings/search/SecIndex$UpdateIndexTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/search/SecIndex$UpdateIndexTask;-><init>(Lcom/android/settings/search/SecIndex;Lcom/android/settings/search/SecIndex$UpdateIndexTask;)V

    .line 389
    .local v0, "task":Lcom/android/settings/search/SecIndex$UpdateIndexTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SecIndex$UpdateIndexTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 387
    return-void
.end method


# virtual methods
.method public addSavedQuery(Ljava/lang/String;)J
    .locals 8
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 306
    new-instance v2, Lcom/android/settings/search/SecIndex$SaveSearchQueryTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/search/SecIndex$SaveSearchQueryTask;-><init>(Lcom/android/settings/search/SecIndex;Lcom/android/settings/search/SecIndex$SaveSearchQueryTask;)V

    .line 307
    .local v2, "task":Lcom/android/settings/search/SecIndex$SaveSearchQueryTask;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings/search/SecIndex$SaveSearchQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 309
    :try_start_0
    invoke-virtual {v2}, Lcom/android/settings/search/SecIndex$SaveSearchQueryTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot insert saved query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    return-wide v6

    .line 310
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot insert saved query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    return-wide v6
.end method

.method public getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/settings/search/SecIndex;->buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "sql":Ljava/lang/String;
    const-string/jumbo v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Suggestions query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/android/settings/search/SecIndex;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getTopLevelKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Lcom/android/settings/search/SecIndex;->tree:Lcom/android/settings/search/SecMenutree;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 322
    :cond_0
    return-object v1

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/settings/search/SecIndex;->tree:Lcom/android/settings/search/SecMenutree;

    invoke-virtual {v0, p1}, Lcom/android/settings/search/SecMenutree;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings/search/SecIndex;->tree:Lcom/android/settings/search/SecMenutree;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Lcom/android/settings/search/SecMenutree;

    invoke-direct {v0}, Lcom/android/settings/search/SecMenutree;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SecIndex;->tree:Lcom/android/settings/search/SecMenutree;

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/search/SecIndex;->update()V

    .line 329
    return-void
.end method

.method public searchItem(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/settings/search/SecIndex;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 212
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SELECT data_rank, data_title, data_summary_on, data_summary_off, data_entries, data_keywords, class_name, screen_title, icon, intent_action, intent_target_package, intent_target_class, enabled, data_key_reference, menu_type, menu_path, category_id, extras, _id FROM prefs_index WHERE prefs_index MATCH \'_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 215
    const-string/jumbo v4, "\'"

    .line 212
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "primarySql":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "data_rank"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 217
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public searchSubMenu(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/settings/search/SecIndex;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 240
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Lcom/android/settings/search/SecIndex;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/search/SecIndex;->MATCH_COLUMNS_SAMSUMNG_PRIMARY:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/search/SecIndex;->buildSearchSubMenuSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "primarySql":Ljava/lang/String;
    const-string/jumbo v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "searchSubMenu query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "data_rank"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 243
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public searchSubMenuByKeyword(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/settings/search/SecIndex;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 248
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Lcom/android/settings/search/SecIndex;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/search/SecIndex;->MATCH_COLUMNS_SAMSUNG_SECONDARY:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/search/SecIndex;->buildSearchSubMenuSQLByKeyword(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "primarySql":Ljava/lang/String;
    const-string/jumbo v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "searchSubMenuByKeyword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "data_rank"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 251
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public searchTile(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/settings/search/SecIndex;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 223
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Lcom/android/settings/search/SecIndex;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/search/SecIndex;->MATCH_COLUMNS_SAMSUMNG_PRIMARY:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/search/SecIndex;->buildSearchTileSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "primarySql":Ljava/lang/String;
    const-string/jumbo v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "searchTile query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "data_rank"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 226
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public searchTileByKeyword(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/settings/search/SecIndex;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 231
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Lcom/android/settings/search/SecIndex;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/search/SecIndex;->MATCH_COLUMNS_SAMSUNG_SECONDARY:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/search/SecIndex;->buildSearchTileSQLByKeyword(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "primarySql":Ljava/lang/String;
    const-string/jumbo v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "searchTileByKeyword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "data_rank"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 234
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    iget-object v0, p0, Lcom/android/settings/search/SecIndex;->mCategories:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SecIndex;->mCategories:Ljava/util/ArrayList;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/SecIndex;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/search/SecIndex;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/settings/search/SecIndex;->tree:Lcom/android/settings/search/SecMenutree;

    monitor-enter v1

    .line 339
    :try_start_0
    new-instance v0, Lcom/android/settings/search/SecIndex$1;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SecIndex$1;-><init>(Lcom/android/settings/search/SecIndex;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 337
    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateFromClassNameResource(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "rebuild"    # Z
    .param p3, "includeInSearchResults"    # Z

    .prologue
    .line 368
    return-void
.end method
