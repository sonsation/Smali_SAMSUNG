.class public final Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;
.super Ljava/lang/Object;
.source "PostpositionRemover.java"


# static fields
.field private static final DELETE_EXCEPTION_WORDS:[Ljava/lang/String;

.field private static final LAST_WORDS_TO_BE_DELETED:[Ljava/lang/String;

.field private static final MID_WORDS_TO_BE_DELETED:[Ljava/lang/String;

.field private static final SPECIAL_CHARACTER_TO_BE_DELETED:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    const-class v0, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->TAG:Ljava/lang/String;

    .line 11
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "("

    aput-object v1, v0, v3

    const-string v1, ")"

    aput-object v1, v0, v4

    const-string v1, "["

    aput-object v1, v0, v5

    const-string v1, "]"

    aput-object v1, v0, v6

    const-string v1, "<"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ">"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "`"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "-"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->SPECIAL_CHARACTER_TO_BE_DELETED:[Ljava/lang/String;

    .line 18
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\uc774\ub77c\ub294"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\ub77c\ub294"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\uc774\ub77c\uace0"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\ub77c\uace0"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\uc73c\ub85c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\ub85c"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\uc774\ub77c"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\ub77c"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\uc744"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\ub97c"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\uac00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\uc774"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\uc778"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->LAST_WORDS_TO_BE_DELETED:[Ljava/lang/String;

    .line 21
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "\uc758"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\uc5d0"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\uac00"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\uc774"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->MID_WORDS_TO_BE_DELETED:[Ljava/lang/String;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\uac00\uc744"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\ub9c8\uc744"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\uc5b4\uba39\uc744"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\ub178\uc744"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\uc774\uc744"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\uace0\uc744"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\ub9de\uc744"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\ub9ac\uc744"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\uac11\uc744"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->DELETE_EXCEPTION_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteIfNecessary(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "target"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "words"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 86
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1

    .line 87
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 91
    .end local v0    # "s":Ljava/lang/String;
    .end local p0    # "target":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 86
    .restart local v0    # "s":Ljava/lang/String;
    .restart local p0    # "target":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static isIncludeExceptionWords(Ljava/lang/String;)Z
    .locals 6
    .param p0, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 76
    sget-object v3, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->DELETE_EXCEPTION_WORDS:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 77
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    const/4 v1, 0x1

    .line 81
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return v1

    .line 76
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 28
    sget-object v8, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "remove() - keyword: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v9, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->SPECIAL_CHARACTER_TO_BE_DELETED:[Ljava/lang/String;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_1

    aget-object v6, v9, v8

    .line 32
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 33
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\\"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 37
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    const-string v5, ""

    .line 38
    .local v5, "result":Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "keywords":[Ljava/lang/String;
    array-length v2, v1

    .line 40
    .local v2, "keywordsLength":I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 42
    invoke-static {p0}, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->isIncludeExceptionWords(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 43
    move-object v5, p0

    .line 71
    :goto_1
    sget-object v8, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "remove() - result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v5

    .line 45
    :cond_2
    sget-object v8, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->LAST_WORDS_TO_BE_DELETED:[Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->deleteIfNecessary(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 49
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    add-int/lit8 v8, v2, -0x1

    if-ge v0, v8, :cond_5

    .line 53
    aget-object v4, v1, v0

    .line 54
    .local v4, "midWord":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->isIncludeExceptionWords(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 55
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :goto_3
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 57
    :cond_4
    sget-object v8, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->MID_WORDS_TO_BE_DELETED:[Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->deleteIfNecessary(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 63
    .end local v4    # "midWord":Ljava/lang/String;
    :cond_5
    add-int/lit8 v8, v2, -0x1

    aget-object v3, v1, v8

    .line 64
    .local v3, "lastWord":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->isIncludeExceptionWords(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 65
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :goto_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 67
    :cond_6
    sget-object v8, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->LAST_WORDS_TO_BE_DELETED:[Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/samsung/android/app/music/bixby/search/PostpositionRemover;->deleteIfNecessary(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method
