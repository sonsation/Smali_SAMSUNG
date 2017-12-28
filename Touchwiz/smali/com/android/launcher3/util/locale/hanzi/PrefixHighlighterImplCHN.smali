.class public Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;
.super Ljava/lang/Object;
.source "PrefixHighlighterImplCHN.java"


# instance fields
.field private mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mPrefixStyleSpan:Landroid/text/style/StyleSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doApply(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "prefixHighlightColor"    # I

    .prologue
    const/4 v8, 0x0

    .line 40
    if-nez p2, :cond_1

    .line 83
    .end local p1    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 44
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {p1, p2}, Lcom/android/launcher3/util/locale/hanzi/FormatUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v2

    .line 45
    .local v2, "index":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_7

    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    new-array v3, v6, [I

    .line 47
    .local v3, "indexInitial":[I
    invoke-static {p1, p2, v3}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->findPosToPinyin(Ljava/lang/CharSequence;Ljava/lang/String;[I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    iget-object v6, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v6, :cond_2

    .line 49
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 51
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;->mPrefixStyleSpan:Landroid/text/style/StyleSpan;

    if-nez v6, :cond_3

    .line 52
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v6, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;->mPrefixStyleSpan:Landroid/text/style/StyleSpan;

    .line 55
    :cond_3
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 56
    .local v4, "result":Landroid/text/SpannableString;
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_6

    .line 57
    if-eqz v0, :cond_4

    aget v6, v3, v0

    if-eqz v6, :cond_5

    .line 61
    :cond_4
    aget v5, v3, v8

    .line 62
    .local v5, "start":I
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget v6, v3, v6

    add-int/lit8 v1, v6, 0x1

    .line 63
    .local v1, "end":I
    if-lt v1, v5, :cond_5

    .line 64
    iget-object v6, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v4, v6, v5, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 65
    iget-object v6, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;->mPrefixStyleSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {v4, v6, v5, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 56
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move-object p1, v4

    .line 69
    goto :goto_0

    .line 74
    .end local v0    # "count":I
    .end local v3    # "indexInitial":[I
    .end local v4    # "result":Landroid/text/SpannableString;
    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v6, :cond_8

    .line 75
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 77
    :cond_8
    iget-object v6, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;->mPrefixStyleSpan:Landroid/text/style/StyleSpan;

    if-nez v6, :cond_9

    .line 78
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v6, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;->mPrefixStyleSpan:Landroid/text/style/StyleSpan;

    .line 80
    :cond_9
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    .restart local v4    # "result":Landroid/text/SpannableString;
    iget-object v6, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v4, v6, v2, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 82
    iget-object v6, p0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighterImplCHN;->mPrefixStyleSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v4, v6, v2, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v4

    .line 83
    goto/16 :goto_0
.end method
