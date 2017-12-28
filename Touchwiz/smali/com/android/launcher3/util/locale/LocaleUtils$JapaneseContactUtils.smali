.class Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;
.super Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/locale/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JapaneseContactUtils"
.end annotation


# static fields
.field private static final INFLOW_LABEL:Ljava/lang/String; = "inflow_label"

.field private static final JAPANESE_MISC_LABEL:Ljava/lang/String; = "\u4ed6"

.field private static final USE_JAPANESE_MISC_LABEL:Z = true


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/util/locale/LocaleUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/util/locale/LocaleUtils$1;

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public getConsistKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 337
    move-object v2, p1

    .line 338
    .local v2, "result":Ljava/lang/String;
    const/16 v4, 0xa0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "trimmedName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 340
    sget-object v4, Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v4, v3}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v0

    .line 341
    .local v0, "bucketIndex":I
    if-ltz v0, :cond_4

    .line 342
    sget-object v4, Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v4, v0}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;->mUnderflowLabel:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;->mOverflowLabel:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 344
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .end local v0    # "bucketIndex":I
    .end local v1    # "label":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v4, v2

    .line 358
    :goto_1
    return-object v4

    .line 345
    .restart local v0    # "bucketIndex":I
    .restart local v1    # "label":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/util/locale/LocaleUtils$JapaneseContactUtils;->mInflowLabel:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 346
    const-string v2, "\u4ed6"

    goto :goto_0

    .line 348
    :cond_3
    move-object v2, v1

    goto :goto_0

    .line 351
    .end local v1    # "label":Ljava/lang/String;
    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$LocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initAlphabeticIndex()Landroid/icu/text/AlphabeticIndex;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Landroid/icu/text/AlphabeticIndex;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    .line 325
    .local v0, "ai":Landroid/icu/text/AlphabeticIndex;
    const-string v1, "inflow_label"

    invoke-virtual {v0, v1}, Landroid/icu/text/AlphabeticIndex;->setInflowLabel(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex;

    .line 326
    return-object v0
.end method
