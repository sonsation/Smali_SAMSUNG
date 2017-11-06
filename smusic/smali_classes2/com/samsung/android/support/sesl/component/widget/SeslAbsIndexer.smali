.class public abstract Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;
.super Landroid/database/DataSetObserver;
.source "SeslAbsIndexer.java"


# static fields
.field private static final DIGIT_CHAR:C = '#'

.field private static final FAVORITE_CHAR:C = '\u2606'

.field protected static final INDEXSCROLL_INDEX_COUNTS:Ljava/lang/String; = "indexscroll_index_counts"

.field protected static final INDEXSCROLL_INDEX_TITLES:Ljava/lang/String; = "indexscroll_index_titles"

.field private static final SYMBOL_BASE_CHAR:C = '!'

.field private static final SYMBOL_CHAR:C = '&'


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field protected mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field protected mAlphabetArray:[Ljava/lang/String;

.field protected mAlphabetLength:I

.field private mBundle:Landroid/os/Bundle;

.field private mCachingValue:[I

.field protected mCollator:Ljava/text/Collator;

.field private mCurrentLang:I

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mDigitItemCount:I

.field private mFavoriteItemCount:I

.field protected mLangAlphabetArray:[Ljava/lang/String;

.field private mLangIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileItemCount:I

.field private mUseDigitIndex:Z

.field private mUseFavoriteIndex:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "indexCharacters"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 55
    const-string v0, "SeslAbsIndexer"

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->DEBUG:Z

    .line 63
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 67
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDigitItemCount:I

    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 69
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseDigitIndex:Z

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCurrentLang:I

    .line 144
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 145
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mProfileItemCount:I

    .line 146
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    .line 147
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "indexCharacters"    # Ljava/lang/CharSequence;
    .param p2, "profileCount"    # I
    .param p3, "favoriteCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 55
    const-string v0, "SeslAbsIndexer"

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->DEBUG:Z

    .line 63
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 67
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDigitItemCount:I

    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 69
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseDigitIndex:Z

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCurrentLang:I

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 181
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mProfileItemCount:I

    .line 182
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    .line 183
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 2
    .param p1, "indexCharacters"    # [Ljava/lang/String;
    .param p2, "aLangIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 55
    const-string v0, "SeslAbsIndexer"

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->DEBUG:Z

    .line 63
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 67
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDigitItemCount:I

    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 69
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseDigitIndex:Z

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCurrentLang:I

    .line 160
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 161
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mProfileItemCount:I

    .line 162
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    .line 163
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    .line 164
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->setMultiLangIndexer(I)V

    .line 165
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;III)V
    .locals 2
    .param p1, "indexCharacters"    # [Ljava/lang/String;
    .param p2, "aLangIndex"    # I
    .param p3, "profileCount"    # I
    .param p4, "favoriteCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 55
    const-string v0, "SeslAbsIndexer"

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->DEBUG:Z

    .line 63
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 67
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDigitItemCount:I

    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 69
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseDigitIndex:Z

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCurrentLang:I

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 201
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mProfileItemCount:I

    .line 202
    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    .line 203
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    .line 204
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->setMultiLangIndexer(I)V

    .line 205
    return-void
.end method

.method private getBundleInfo()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 531
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mBundle:Landroid/os/Bundle;

    const-string v8, "indexscroll_index_titles"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 532
    .local v5, "sections":[Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mBundle:Landroid/os/Bundle;

    const-string v8, "indexscroll_index_counts"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 533
    .local v2, "counts":[I
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mProfileItemCount:I

    .line 534
    .local v0, "basePosition":I
    const/4 v1, 0x0

    .line 536
    .local v1, "baseSectionIndex":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabetLength:I

    if-ge v3, v7, :cond_4

    .line 537
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 540
    .local v6, "targetChar":C
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCachingValue:[I

    aput v0, v7, v3

    .line 543
    const/16 v7, 0x2606

    if-ne v6, v7, :cond_0

    .line 544
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    add-int/2addr v0, v7

    .line 547
    :cond_0
    move v4, v1

    .local v4, "sectionIndex":I
    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_1

    .line 548
    aget-object v7, v5, v4

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_3

    .line 549
    aget v7, v2, v4

    add-int/2addr v0, v7

    .line 550
    move v1, v4

    .line 555
    :cond_1
    const-string v7, "#"

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_2

    .line 556
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCachingValue:[I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getItemCount()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDigitItemCount:I

    sub-int/2addr v8, v9

    aput v8, v7, v3

    .line 536
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 547
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 559
    .end local v4    # "sectionIndex":I
    .end local v6    # "targetChar":C
    :cond_4
    return-void
.end method

.method private getPositionForString(Ljava/lang/String;)I
    .locals 20
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 417
    .local v2, "alphaMap":Landroid/util/SparseIntArray;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getItemCount()I

    move-result v3

    .line 419
    .local v3, "count":I
    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 420
    :cond_0
    const/4 v11, 0x0

    .line 524
    :cond_1
    :goto_0
    return v11

    .line 423
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_4

    :cond_3
    move v11, v3

    .line 424
    goto :goto_0

    .line 427
    :cond_4
    const/4 v15, 0x0

    .line 428
    .local v15, "start":I
    move v6, v3

    .line 430
    .local v6, "end":I
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 431
    .local v8, "letter":C
    move-object/from16 v17, p1

    .line 432
    .local v17, "targetLetter":Ljava/lang/String;
    move v7, v8

    .line 434
    .local v7, "key":I
    const/high16 v18, -0x80000000

    const/high16 v19, -0x80000000

    move/from16 v0, v19

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .local v11, "pos":I
    move/from16 v0, v18

    if-eq v0, v11, :cond_b

    .line 438
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 462
    :cond_5
    :goto_1
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 465
    .local v16, "targetChar":C
    const/16 v18, 0x26

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 466
    const-string v17, "!"

    .line 468
    :cond_6
    const/16 v18, 0x2606

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 469
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mProfileItemCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    .line 470
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mProfileItemCount:I

    .line 478
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDigitItemCount:I

    move/from16 v18, v0

    sub-int v6, v6, v18

    .line 479
    const/16 v18, 0x23

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 480
    move v15, v6

    .line 483
    :cond_8
    add-int v18, v6, v15

    div-int/lit8 v11, v18, 0x2

    .line 484
    :goto_3
    if-lt v11, v15, :cond_a

    if-ge v11, v6, :cond_a

    .line 486
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "curName":Ljava/lang/String;
    if-eqz v4, :cond_9

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 488
    :cond_9
    if-gt v11, v15, :cond_e

    .line 521
    .end local v4    # "curName":Ljava/lang/String;
    :cond_a
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 522
    invoke-virtual {v2, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 442
    .end local v16    # "targetChar":C
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 444
    .local v14, "sectionIndex":I
    if-lez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    if-le v7, v0, :cond_c

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 446
    .local v12, "prevLetter":I
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    invoke-virtual {v2, v12, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 447
    .local v13, "prevLetterPos":I
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    if-eq v13, v0, :cond_c

    .line 448
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 454
    .end local v12    # "prevLetter":I
    .end local v13    # "prevLetterPos":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v14, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 456
    .local v9, "nextLetter":I
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    invoke-virtual {v2, v9, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 457
    .local v10, "nextLetterPos":I
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    if-eq v10, v0, :cond_5

    .line 458
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto/16 :goto_1

    .line 473
    .end local v9    # "nextLetter":I
    .end local v10    # "nextLetterPos":I
    .end local v14    # "sectionIndex":I
    .restart local v16    # "targetChar":C
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mProfileItemCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    .line 474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mProfileItemCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    move/from16 v19, v0

    add-int v15, v18, v19

    goto/16 :goto_2

    .line 491
    .restart local v4    # "curName":Ljava/lang/String;
    :cond_e
    add-int/lit8 v11, v11, -0x1

    .line 492
    goto/16 :goto_3

    .line 495
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 496
    .local v5, "diff":I
    const/16 v18, 0x2606

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    const/16 v18, 0x26

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    const/16 v18, 0x23

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 497
    :cond_10
    const/4 v5, 0x1

    .line 499
    :cond_11
    if-eqz v5, :cond_14

    .line 500
    if-gez v5, :cond_12

    .line 501
    add-int/lit8 v15, v11, 0x1

    .line 502
    if-lt v15, v3, :cond_13

    .line 503
    move v11, v3

    .line 504
    goto/16 :goto_4

    .line 507
    :cond_12
    move v6, v11

    .line 519
    :cond_13
    :goto_5
    add-int v18, v15, v6

    div-int/lit8 v11, v18, 0x2

    .line 520
    goto/16 :goto_3

    .line 511
    :cond_14
    if-eq v15, v11, :cond_a

    .line 516
    move v6, v11

    goto :goto_5
.end method

.method private initIndexer(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "alphabet"    # Ljava/lang/CharSequence;

    .prologue
    .line 346
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 347
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid indexString :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 350
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabetLength:I

    .line 351
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabetLength:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCachingValue:[I

    .line 353
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_2
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 359
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCollator:Ljava/text/Collator;

    .line 360
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 361
    return-void
.end method


# virtual methods
.method public cacheIndexInfo()V
    .locals 5

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->isDataToBeIndexedAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getItemCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mBundle:Landroid/os/Bundle;

    .line 390
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mBundle:Landroid/os/Bundle;

    const-string v4, "indexscroll_index_titles"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mBundle:Landroid/os/Bundle;

    const-string v4, "indexscroll_index_counts"

    .line 391
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getBundleInfo()V

    goto :goto_0

    .line 396
    :cond_2
    const-string v0, ""

    .line 397
    .local v0, "baseString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->onBeginTransaction()V

    .line 398
    const/4 v2, 0x0

    .local v2, "sectionIndex":I
    :goto_1
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabetLength:I

    if-ge v2, v3, :cond_3

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "searchString":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCachingValue:[I

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->getPositionForString(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 402
    .end local v1    # "searchString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->onEndTransaction()V

    goto :goto_0
.end method

.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "indexString"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getBundle()Landroid/os/Bundle;
.end method

.method public getCachingValue(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 225
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphabetLength:I

    if-lt p1, v0, :cond_1

    .line 226
    :cond_0
    const/4 v0, -0x1

    .line 228
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCachingValue:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getCurrentLang()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCurrentLang:I

    return v0
.end method

.method protected abstract getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract getItemCount()I
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getLangbyIndex(I)I
    .locals 2
    .param p1, "aIndex"    # I

    .prologue
    .line 333
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 334
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 335
    .local v0, "lIndexVal":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 339
    .end local v0    # "lIndexVal":Ljava/lang/Integer;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected abstract isDataToBeIndexedAvailable()Z
.end method

.method public isUseDigitIndex()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseDigitIndex:Z

    return v0
.end method

.method protected onBeginTransaction()V
    .locals 0

    .prologue
    .line 615
    return-void
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 568
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 569
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 570
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 571
    return-void
.end method

.method protected onEndTransaction()V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 580
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 581
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 582
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 583
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 596
    return-void
.end method

.method public setDigitItem(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 299
    if-ltz p1, :cond_0

    .line 300
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDigitItemCount:I

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseDigitIndex:Z

    .line 302
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->setMultiLangIndexer(I)V

    .line 304
    :cond_0
    return-void
.end method

.method public setFavoriteItem(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 285
    if-ltz p1, :cond_0

    .line 286
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 288
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->setMultiLangIndexer(I)V

    .line 290
    :cond_0
    return-void
.end method

.method public setMultiLangIndexer(I)V
    .locals 6
    .param p1, "aLangIndex"    # I

    .prologue
    const/16 v5, 0x26

    .line 240
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mCurrentLang:I

    .line 243
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    if-eqz v3, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2606

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "indexerString":Ljava/lang/StringBuilder;
    :goto_0
    const/4 v2, 0x0

    .local v2, "langIndex":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 252
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 246
    .end local v0    # "indexerString":Ljava/lang/StringBuilder;
    .end local v1    # "j":I
    .end local v2    # "langIndex":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v0    # "indexerString":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 250
    .restart local v1    # "j":I
    .restart local v2    # "langIndex":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    .end local v1    # "j":I
    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mUseDigitIndex:Z

    if-eqz v3, :cond_3

    .line 259
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 264
    return-void
.end method

.method public setProfileItem(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 273
    if-ltz p1, :cond_0

    .line 274
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mProfileItemCount:I

    .line 276
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 606
    return-void
.end method
