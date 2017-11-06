.class public abstract Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;
.super Landroid/database/DataSetObserver;
.source "TwAbstractIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;,
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    }
.end annotation


# static fields
.field private static final DIGIT_CHAR:C = '#'

.field public static final FAVORITE_CHAR:C = '\u2606'

.field private static final SYMBOL_BASE_CHAR:C = '!'

.field private static SYMBOL_CHAR:C = '\u0000'

.field private static final UX_2016B:Z = true


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field protected mAlphabetArray:[Ljava/lang/String;

.field protected mAlphabetLength:I

.field protected mCollator:Ljava/text/Collator;

.field private mCurrentLang:I

.field private mCurrentLangEndIndex:I

.field private mCurrentLangStartIndex:I

.field private mCurrentLangStartPosition:I

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mDigitItemCount:I

.field private mEnableFavoriteIndex:Z

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x26

    sput-char v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->SYMBOL_CHAR:C

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "indexCharacters"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 61
    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->TAG:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->debug:Z

    .line 65
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    .line 73
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDigitItemCount:I

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 337
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    .line 339
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    .line 341
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    .line 343
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    .line 168
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    .line 169
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mProfileItemCount:I

    .line 170
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mFavoriteItemCount:I

    .line 171
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p1, "indexCharacters"    # Ljava/lang/CharSequence;
    .param p2, "profileCount"    # I
    .param p3, "favoriteCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 209
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 61
    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->TAG:Ljava/lang/String;

    .line 63
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->debug:Z

    .line 65
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 67
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    .line 73
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDigitItemCount:I

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 337
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    .line 339
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    .line 341
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    .line 343
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    .line 214
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mProfileItemCount:I

    .line 215
    iput p3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mFavoriteItemCount:I

    .line 216
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 3
    .param p1, "indexCharacters"    # [Ljava/lang/String;
    .param p2, "aLangIndex"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 61
    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->TAG:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->debug:Z

    .line 65
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    .line 73
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDigitItemCount:I

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 337
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    .line 339
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    .line 341
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    .line 343
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    .line 188
    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    .line 189
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mProfileItemCount:I

    .line 190
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mFavoriteItemCount:I

    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    .line 192
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 193
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;III)V
    .locals 3
    .param p1, "indexCharacters"    # [Ljava/lang/String;
    .param p2, "aLangIndex"    # I
    .param p3, "profileCount"    # I
    .param p4, "favoriteCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 235
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 61
    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->TAG:Ljava/lang/String;

    .line 63
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->debug:Z

    .line 65
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 67
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    .line 73
    iput v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDigitItemCount:I

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 337
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    .line 339
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    .line 341
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    .line 343
    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    .line 240
    iput p3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mProfileItemCount:I

    .line 241
    iput p4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mFavoriteItemCount:I

    .line 242
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    .line 243
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 244
    return-void
.end method

.method private isJapaneseIndex(C)Z
    .locals 1
    .param p1, "index"    # C

    .prologue
    .line 598
    const/16 v0, 0x3041

    if-le p1, v0, :cond_0

    const/16 v0, 0x30fa

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKoreanLocaleLaguage()Z
    .locals 2

    .prologue
    .line 625
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x1

    .line 628
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTaiwanLocale()Z
    .locals 2

    .prologue
    .line 618
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    const/4 v0, 0x1

    .line 621
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "indexString"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLang()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    return v0
.end method

.method public getCurrentLangEndIndex()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    return v0
.end method

.method public getCurrentLangStartIndex()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    return v0
.end method

.method public getCurrentLangStartPosition()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    return v0
.end method

.method protected getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 927
    const v0, 0xac00

    .line 928
    .local v0, "BASE_CODE":I
    const/16 v1, 0x24c

    .line 930
    .local v1, "CHOSUNG":I
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xac00

    sub-int/2addr v4, v5

    div-int/lit16 v3, v4, 0x24c

    .line 933
    .local v3, "keyValue":I
    packed-switch v3, :pswitch_data_0

    .line 992
    const/16 v2, 0x3131

    .line 995
    .local v2, "keyCode":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 935
    .end local v2    # "keyCode":I
    :pswitch_0
    const/16 v2, 0x3131

    .line 936
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 938
    .end local v2    # "keyCode":I
    :pswitch_1
    const/16 v2, 0x3131

    .line 939
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 941
    .end local v2    # "keyCode":I
    :pswitch_2
    const/16 v2, 0x3134

    .line 942
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 944
    .end local v2    # "keyCode":I
    :pswitch_3
    const/16 v2, 0x3137

    .line 945
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 947
    .end local v2    # "keyCode":I
    :pswitch_4
    const/16 v2, 0x3137

    .line 948
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 950
    .end local v2    # "keyCode":I
    :pswitch_5
    const/16 v2, 0x3139

    .line 951
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 953
    .end local v2    # "keyCode":I
    :pswitch_6
    const/16 v2, 0x3141

    .line 954
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 956
    .end local v2    # "keyCode":I
    :pswitch_7
    const/16 v2, 0x3142

    .line 957
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 959
    .end local v2    # "keyCode":I
    :pswitch_8
    const/16 v2, 0x3142

    .line 960
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 962
    .end local v2    # "keyCode":I
    :pswitch_9
    const/16 v2, 0x3145

    .line 963
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 965
    .end local v2    # "keyCode":I
    :pswitch_a
    const/16 v2, 0x3145

    .line 966
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 968
    .end local v2    # "keyCode":I
    :pswitch_b
    const/16 v2, 0x3147

    .line 969
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 971
    .end local v2    # "keyCode":I
    :pswitch_c
    const/16 v2, 0x3148

    .line 972
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 974
    .end local v2    # "keyCode":I
    :pswitch_d
    const/16 v2, 0x3148

    .line 975
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 977
    .end local v2    # "keyCode":I
    :pswitch_e
    const/16 v2, 0x314a

    .line 978
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 980
    .end local v2    # "keyCode":I
    :pswitch_f
    const/16 v2, 0x314b

    .line 981
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 983
    .end local v2    # "keyCode":I
    :pswitch_10
    const/16 v2, 0x314c

    .line 984
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 986
    .end local v2    # "keyCode":I
    :pswitch_11
    const/16 v2, 0x314d

    .line 987
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 989
    .end local v2    # "keyCode":I
    :pswitch_12
    const/16 v2, 0x314e

    .line 990
    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 933
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method getIndexInfo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "base"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 20
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "foundOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    const/4 v7, 0x0

    .line 479
    .local v7, "isJapanese":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v18

    if-nez v18, :cond_0

    .line 480
    const/4 v14, 0x0

    .line 594
    :goto_0
    return-object v14

    .line 483
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v8

    .line 485
    .local v8, "itemCount":I
    if-nez v8, :cond_1

    .line 489
    const/4 v14, 0x0

    goto :goto_0

    .line 492
    :cond_1
    if-nez p1, :cond_a

    const-string v2, ""

    .line 493
    .local v2, "baseString":Ljava/lang/String;
    :goto_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v14, "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->onBeginTransaction()V

    .line 498
    const/4 v3, 0x0

    .line 499
    .local v3, "charExistedOfCurrentLang":Z
    const/4 v12, -0x1

    .line 501
    .local v12, "posOfPreviousExisted":I
    const/16 v17, 0x0

    .local v17, "sectionIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 502
    const/16 v16, 0x0

    .line 503
    .local v16, "sectionFound":Z
    const/4 v11, -0x1

    .line 504
    .local v11, "posFound":I
    const/4 v10, -0x1

    .line 505
    .local v10, "lastposFound":I
    const/4 v9, 0x0

    .line 514
    .local v9, "lastSectionFound":Z
    const/4 v13, 0x0

    .line 516
    .local v13, "pr":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->isCurrentLanguagePosition(I)Z

    move-result v18

    if-nez v18, :cond_2

    .line 546
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 547
    .local v15, "searchString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v13

    .line 548
    iget v11, v13, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 549
    iget-boolean v0, v13, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    move/from16 v16, v0

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->isJapaneseIndex(C)Z

    move-result v7

    .line 553
    if-gez v11, :cond_3

    .line 554
    neg-int v11, v11

    .line 558
    :cond_3
    if-eqz p2, :cond_4

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_9

    .line 560
    :cond_4
    new-instance v6, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    invoke-direct {v6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;-><init>()V

    .line 561
    .local v6, "indexInfo":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    .line 562
    iput v11, v6, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 564
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->isCurrentLanguagePosition(I)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->isTaiwanLocale()Z

    move-result v18

    if-nez v18, :cond_6

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->isKoreanLocaleLaguage()Z

    move-result v18

    if-nez v18, :cond_6

    .line 566
    if-eqz v16, :cond_5

    .line 567
    const/4 v3, 0x1

    .line 568
    move v12, v11

    .line 570
    :cond_5
    if-nez v7, :cond_6

    if-nez v16, :cond_6

    if-eqz v3, :cond_6

    .line 571
    iput v12, v6, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 575
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v4

    .line 576
    .local v4, "currentLang":I
    if-eqz v9, :cond_7

    if-nez v4, :cond_7

    .line 578
    iput v10, v6, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 579
    iput v11, v6, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mLastPosition:I

    .line 581
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v17

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    .line 583
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 584
    iget v0, v6, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    .line 587
    :cond_8
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .end local v4    # "currentLang":I
    .end local v6    # "indexInfo":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .end local v2    # "baseString":Ljava/lang/String;
    .end local v3    # "charExistedOfCurrentLang":Z
    .end local v9    # "lastSectionFound":Z
    .end local v10    # "lastposFound":I
    .end local v11    # "posFound":I
    .end local v12    # "posOfPreviousExisted":I
    .end local v13    # "pr":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .end local v14    # "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .end local v15    # "searchString":Ljava/lang/String;
    .end local v16    # "sectionFound":Z
    .end local v17    # "sectionIndex":I
    :cond_a
    move-object/from16 v2, p1

    .line 492
    goto/16 :goto_1

    .line 590
    .restart local v2    # "baseString":Ljava/lang/String;
    .restart local v3    # "charExistedOfCurrentLang":Z
    .restart local v12    # "posOfPreviousExisted":I
    .restart local v14    # "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .restart local v17    # "sectionIndex":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->onEndTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 591
    .end local v3    # "charExistedOfCurrentLang":Z
    .end local v12    # "posOfPreviousExisted":I
    .end local v17    # "sectionIndex":I
    :catch_0
    move-exception v5

    .line 592
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getIndexInfo(Ljava/lang/String;ZII)Ljava/util/ArrayList;
    .locals 15
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "foundOnly"    # Z
    .param p3, "aDepth"    # I
    .param p4, "aIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v13

    if-nez v13, :cond_0

    .line 645
    const/4 v10, 0x0

    .line 695
    :goto_0
    return-object v10

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v5

    .line 650
    .local v5, "itemCount":I
    if-nez v5, :cond_1

    .line 654
    const/4 v10, 0x0

    goto :goto_0

    .line 658
    :cond_1
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ge v0, v13, :cond_2

    .line 659
    const/4 v10, 0x0

    goto :goto_0

    .line 662
    :cond_2
    if-nez p1, :cond_6

    const-string v1, ""

    .line 663
    .local v1, "baseString":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v10, "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->onBeginTransaction()V

    .line 667
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v6

    .line 668
    .local v6, "lLangInd":I
    iget-object v13, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v7, v13, v6

    .line 669
    .local v7, "lOtherLangString":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v3, v13, :cond_7

    .line 670
    const/4 v12, 0x0

    .line 671
    .local v12, "sectionFound":Z
    const/4 v8, -0x1

    .line 673
    .local v8, "posFound":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 674
    .local v11, "searchString":Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v9

    .line 675
    .local v9, "pr":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;
    iget v8, v9, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 676
    iget-boolean v12, v9, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    .line 678
    if-gez v8, :cond_3

    .line 679
    neg-int v8, v8

    .line 682
    :cond_3
    if-eqz p2, :cond_4

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 683
    :cond_4
    new-instance v4, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    invoke-direct {v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;-><init>()V

    .line 684
    .local v4, "indexInfo":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    iput-boolean v12, v4, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    .line 685
    iput v8, v4, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 686
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    .line 687
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    .end local v4    # "indexInfo":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1    # "baseString":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "lLangInd":I
    .end local v7    # "lOtherLangString":Ljava/lang/String;
    .end local v8    # "posFound":I
    .end local v9    # "pr":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .end local v10    # "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .end local v11    # "searchString":Ljava/lang/String;
    .end local v12    # "sectionFound":Z
    :cond_6
    move-object/from16 v1, p1

    .line 662
    goto :goto_1

    .line 691
    .restart local v1    # "baseString":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v6    # "lLangInd":I
    .restart local v7    # "lOtherLangString":Ljava/lang/String;
    .restart local v10    # "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->onEndTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 692
    .end local v3    # "i":I
    .end local v6    # "lLangInd":I
    .end local v7    # "lOtherLangString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 693
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected abstract getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract getItemCount()I
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getLangbyIndex(I)I
    .locals 2
    .param p1, "aIndex"    # I

    .prologue
    .line 394
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 395
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 396
    .local v0, "lIndexVal":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 406
    .end local v0    # "lIndexVal":Ljava/lang/Integer;
    :goto_0
    return v1

    .line 400
    :catch_0
    move-exception v1

    .line 406
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getPositionForString(Ljava/lang/String;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .locals 24
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 726
    .local v2, "alphaMap":Landroid/util/SparseIntArray;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v3

    .line 728
    .local v3, "count":I
    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 729
    :cond_0
    new-instance v22, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(I)V

    .line 893
    :goto_0
    return-object v22

    .line 731
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_3

    .line 732
    :cond_2
    new-instance v22, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(I)V

    goto :goto_0

    .line 735
    :cond_3
    const/16 v19, 0x0

    .line 736
    .local v19, "start":I
    move v6, v3

    .line 738
    .local v6, "end":I
    const/4 v9, 0x0

    .line 739
    .local v9, "matchFound":Z
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 740
    .local v8, "letter":C
    move-object/from16 v21, p1

    .line 741
    .local v21, "targetLetter":Ljava/lang/String;
    move v7, v8

    .line 743
    .local v7, "key":I
    const/high16 v22, -0x80000000

    const/high16 v23, -0x80000000

    move/from16 v0, v23

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .local v15, "pos":I
    move/from16 v0, v22

    if-eq v0, v15, :cond_d

    .line 752
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 776
    :cond_4
    :goto_1
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .line 779
    .local v20, "targetChar":C
    const/4 v10, 0x0

    .line 780
    .local v10, "mflag":Z
    const/16 v22, 0x2

    move/from16 v0, v22

    if-lt v3, v0, :cond_5

    const/16 v22, 0x2606

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 781
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v11

    .line 782
    .local v11, "name_0":Ljava/lang/String;
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v12

    .line 785
    .local v12, "name_1":Ljava/lang/String;
    if-eqz v11, :cond_f

    if-eqz v12, :cond_f

    .line 786
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 787
    .local v5, "diff":I
    if-lez v5, :cond_5

    .line 788
    const/4 v10, 0x1

    .line 798
    .end local v5    # "diff":I
    .end local v11    # "name_0":Ljava/lang/String;
    .end local v12    # "name_1":Ljava/lang/String;
    :cond_5
    :goto_2
    sget-char v22, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->SYMBOL_CHAR:C

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 799
    const-string v21, "!"

    .line 802
    :cond_6
    const/16 v22, 0x2606

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 803
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mProfileItemCount:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 804
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mProfileItemCount:I

    move/from16 v19, v0

    .line 813
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDigitItemCount:I

    move/from16 v22, v0

    sub-int v6, v6, v22

    .line 814
    const/16 v22, 0x23

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 815
    move/from16 v19, v6

    .line 819
    :cond_8
    add-int v22, v6, v19

    div-int/lit8 v15, v22, 0x2

    .line 820
    :goto_4
    move/from16 v0, v19

    if-lt v15, v0, :cond_a

    if-ge v15, v6, :cond_a

    .line 822
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    .line 823
    .local v4, "curName":Ljava/lang/String;
    if-eqz v4, :cond_9

    const-string v22, ""

    move-object/from16 v0, v22

    if-ne v4, v0, :cond_12

    .line 824
    :cond_9
    move/from16 v0, v19

    if-gt v15, v0, :cond_11

    .line 883
    .end local v4    # "curName":Ljava/lang/String;
    :cond_a
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 884
    invoke-virtual {v2, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 886
    :cond_b
    if-ge v15, v3, :cond_c

    .line 887
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    .line 889
    .restart local v4    # "curName":Ljava/lang/String;
    if-eqz v4, :cond_c

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 890
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 893
    .end local v4    # "curName":Ljava/lang/String;
    :cond_c
    new-instance v22, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v22

    invoke-direct {v0, v15, v9}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(IZ)V

    goto/16 :goto_0

    .line 756
    .end local v10    # "mflag":Z
    .end local v20    # "targetChar":C
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 758
    .local v18, "sectionIndex":I
    if-lez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    move/from16 v0, v22

    if-le v7, v0, :cond_e

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    .line 760
    .local v16, "prevLetter":I
    const/high16 v22, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v17

    .line 761
    .local v17, "prevLetterPos":I
    const/high16 v22, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 762
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 768
    .end local v16    # "prevLetter":I
    .end local v17    # "prevLetterPos":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_4

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 770
    .local v13, "nextLetter":I
    const/high16 v22, -0x80000000

    move/from16 v0, v22

    invoke-virtual {v2, v13, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    .line 771
    .local v14, "nextLetterPos":I
    const/high16 v22, -0x80000000

    move/from16 v0, v22

    if-eq v14, v0, :cond_4

    .line 772
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto/16 :goto_1

    .line 790
    .end local v13    # "nextLetter":I
    .end local v14    # "nextLetterPos":I
    .end local v18    # "sectionIndex":I
    .restart local v10    # "mflag":Z
    .restart local v11    # "name_0":Ljava/lang/String;
    .restart local v12    # "name_1":Ljava/lang/String;
    .restart local v20    # "targetChar":C
    :cond_f
    if-eqz v11, :cond_5

    if-nez v12, :cond_5

    .line 792
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 807
    .end local v11    # "name_0":Ljava/lang/String;
    .end local v12    # "name_1":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mProfileItemCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mFavoriteItemCount:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 808
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mProfileItemCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mFavoriteItemCount:I

    move/from16 v23, v0

    add-int v19, v22, v23

    goto/16 :goto_3

    .line 827
    .restart local v4    # "curName":Ljava/lang/String;
    :cond_11
    add-int/lit8 v15, v15, -0x1

    .line 828
    goto/16 :goto_4

    .line 832
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 834
    .restart local v5    # "diff":I
    const/16 v22, 0x2606

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    sget-char v22, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->SYMBOL_CHAR:C

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    const/16 v22, 0x23

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 836
    :cond_13
    const/4 v5, 0x1

    .line 839
    :cond_14
    if-eqz v5, :cond_19

    .line 851
    if-gez v5, :cond_16

    .line 852
    add-int/lit8 v19, v15, 0x1

    .line 854
    if-eqz v10, :cond_15

    if-eqz v15, :cond_a

    .line 858
    :cond_15
    move/from16 v0, v19

    if-lt v0, v3, :cond_18

    .line 859
    move v15, v3

    .line 860
    goto/16 :goto_5

    .line 864
    :cond_16
    if-eqz v10, :cond_17

    if-nez v15, :cond_17

    .line 865
    const/4 v15, 0x1

    .line 866
    goto/16 :goto_5

    .line 869
    :cond_17
    move v6, v15

    .line 881
    :cond_18
    :goto_6
    add-int v22, v19, v6

    div-int/lit8 v15, v22, 0x2

    .line 882
    goto/16 :goto_4

    .line 873
    :cond_19
    move/from16 v0, v19

    if-eq v0, v15, :cond_a

    .line 878
    move v6, v15

    goto :goto_6
.end method

.method protected initIndexer(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "alphabet"    # Ljava/lang/CharSequence;

    .prologue
    .line 413
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 414
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

    .line 416
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 417
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    .line 419
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_2

    .line 421
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_2
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 426
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    .line 427
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 428
    return-void
.end method

.method public isCurrentLanguagePosition(I)Z
    .locals 4
    .param p1, "sectionIndex"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 605
    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    if-le p1, v2, :cond_4

    .line 607
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    if-eqz v2, :cond_3

    .line 608
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    .line 613
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 608
    goto :goto_0

    .line 610
    :cond_3
    if-nez p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 613
    goto :goto_0
.end method

.method protected abstract isDataToBeIndexedAvailable()Z
.end method

.method protected onBeginTransaction()V
    .locals 0

    .prologue
    .line 1058
    return-void
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 1006
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 1007
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 1010
    return-void
.end method

.method protected onEndTransaction()V
    .locals 0

    .prologue
    .line 1067
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1020
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1021
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1022
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 1023
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 1039
    return-void
.end method

.method protected seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 907
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 908
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 912
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xac00

    if-lt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7a3

    if-gt v1, v2, :cond_1

    .line 913
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 916
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 917
    const/4 v0, 0x1

    .line 919
    :cond_2
    return v0
.end method

.method public setDigitItem(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDigitItemCount:I

    .line 332
    return-void
.end method

.method public setMultiLangIndexer(I)Ljava/lang/String;
    .locals 7
    .param p1, "aLangIndex"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->isTaiwanLocale()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 271
    .local v1, "isTaiwan":Ljava/lang/Boolean;
    iget-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mEnableFavoriteIndex:Z

    if-eqz v4, :cond_1

    .line 272
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "\u2606"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "indexerString":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->SYMBOL_CHAR:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    :goto_0
    const/4 v3, 0x0

    .local v3, "langIndex":I
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 280
    if-eq v3, p1, :cond_0

    .line 303
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    .line 305
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 306
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 275
    .end local v0    # "indexerString":Ljava/lang/StringBuffer;
    .end local v2    # "j":I
    .end local v3    # "langIndex":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->SYMBOL_CHAR:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v0    # "indexerString":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 310
    .restart local v2    # "j":I
    .restart local v3    # "langIndex":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 320
    .end local v2    # "j":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 1049
    return-void
.end method
