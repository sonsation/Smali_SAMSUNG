.class public Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;
.super Ljava/lang/Object;
.source "SearchSeedBox.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SearchSeedBox"


# instance fields
.field private hasReachedMax:Z

.field private mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

.field private mContext:Landroid/content/Context;

.field private mHintStatement:Ljava/lang/String;

.field private mHomeKeyLayout:Landroid/widget/RelativeLayout;

.field private mIsTempBlockAutoComplete:Z

.field private mSearchBoxLayout:Landroid/widget/RelativeLayout;

.field private mSearchSeedText:Ljava/lang/String;

.field private mSeedSearchAction:Landroid/widget/ImageView;

.field private mSeedSearchCancel:Landroid/widget/ImageView;

.field private mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;
    .param p4, "blocktmpAutocomplte"    # Z

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSearchSeedText:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mContext:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->getHintStatement()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mHintStatement:Ljava/lang/String;

    .line 67
    :cond_0
    iput-boolean p4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mIsTempBlockAutoComplete:Z

    .line 69
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->initSearchSeedText(Landroid/view/View;)V

    .line 70
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->initSearchCancelBtn(Landroid/view/View;)V

    .line 71
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->initSearchActionBtn(Landroid/view/View;)V

    .line 72
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->initSearchHomeKeyLayout(Landroid/view/View;)V

    .line 73
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->setSearchBtn(ZZ)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->executeSearchSeed()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mHomeKeyLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mHintStatement:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->expandSearchBox(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSearchBoxLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mIsTempBlockAutoComplete:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mIsTempBlockAutoComplete:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->getVerifiedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->setSearchBtn(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->isSameSearchWord(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->hasReachedMax:Z

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->hasReachedMax:Z

    return p1
.end method

.method private executeSearchSeed()V
    .locals 4

    .prologue
    .line 414
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->forceHideKeypad(Landroid/view/View;)V

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    if-eqz v1, :cond_2

    .line 426
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->reqSeedSearch(Ljava/lang/String;Z)V

    .line 429
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "909"

    const-string v3, "9182"

    .line 430
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "910"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private expandSearchBox(Z)V
    .locals 6
    .param p1, "expand"    # Z

    .prologue
    .line 167
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mHomeKeyLayout:Landroid/widget/RelativeLayout;

    if-nez v4, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d05b9

    .line 171
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 172
    .local v3, "seedboxTopmargin":F
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0611

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 174
    .local v1, "homeLayoutwidth":F
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0612

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 176
    .local v2, "searchBoxLeftmargin":F
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 177
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    .line 177
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 179
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mHomeKeyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v4, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$2;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$2;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;FFF)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 205
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 208
    :cond_2
    if-eqz p1, :cond_0

    .line 209
    new-instance v4, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$3;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;FFF)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 236
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 176
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getVerifiedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 466
    const-string v1, ""

    .line 467
    .local v1, "target":Ljava/lang/String;
    const/4 v0, 0x0

    .line 469
    .local v0, "index":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 490
    .end local p1    # "source":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 473
    .restart local p1    # "source":Ljava/lang/String;
    :cond_1
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "words":[Ljava/lang/String;
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 475
    aget-object v2, v3, v0

    .line 476
    .local v2, "word":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 477
    add-int/lit8 v0, v0, 0x1

    .line 478
    goto :goto_1

    .line 481
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_3

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 486
    goto :goto_1

    .line 488
    .end local v2    # "word":Ljava/lang/String;
    :cond_4
    const-string v4, "SearchFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVerifiedString : Search words => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    .line 490
    goto :goto_0
.end method

.method private initSearchActionBtn(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 150
    const v0, 0x7f12034d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchAction:Landroid/widget/ImageView;

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->supportSearchIconOutOfSearchBox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchAction:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchAction:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchAction:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchAction:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initSearchCancelBtn(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 242
    const v0, 0x7f120351

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchCancel:Landroid/widget/ImageView;

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchCancel:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$4;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchCancel:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    return-void
.end method

.method private initSearchHomeKeyLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 144
    const v0, 0x7f12034e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mHomeKeyLayout:Landroid/widget/RelativeLayout;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mHomeKeyLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mHomeKeyLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method private initSearchSeedText(Landroid/view/View;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 255
    const v1, 0x7f120350

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSearchBoxLayout:Landroid/widget/RelativeLayout;

    .line 256
    const v1, 0x7f120352

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    .line 257
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mHintStatement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    const-string v2, "disableEmoticonInput=true;inputType=filename"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x65

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->getEditTextFilterEmoji()Landroid/text/InputFilter;

    move-result-object v3

    aput-object v3, v2, v6

    .line 259
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 262
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v1, v6}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setLongClickable(Z)V

    .line 263
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$5;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 270
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d060f

    .line 271
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 270
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setCompoundDrawablePadding(I)V

    .line 272
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    const v2, 0x7f020227

    .line 273
    invoke-virtual {v1, v2, v5, v5, v5}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 274
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$6;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 355
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 379
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$8;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)V

    .line 380
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setOnSoftKeyboardListener(Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText$OnSoftKeyboardListener;)V

    .line 396
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$9;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 407
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSearchBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 408
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0612

    .line 409
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 410
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSearchBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    return-void
.end method

.method private isSameSearchWord(Ljava/lang/String;)Z
    .locals 2
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 452
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSearchSeedText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSearchSeedText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSearchSeedText:Ljava/lang/String;

    .line 462
    :goto_0
    return v0

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSearchSeedText:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 458
    const/4 v0, 0x1

    goto :goto_0

    .line 461
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSearchSeedText:Ljava/lang/String;

    goto :goto_0
.end method

.method private setSearchBtn(ZZ)V
    .locals 4
    .param p1, "visiblityOfCancel"    # Z
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 124
    const-string v0, "SearchSeedBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSearchBtn : Cancel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Search("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-eqz p1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->supportSearchIconOutOfSearchBox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchAction:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchAction:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchAction:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 135
    if-eqz p2, :cond_2

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchAction:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 141
    :cond_0
    :goto_1
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchCancel:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchAction:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1
.end method

.method private supportSearchIconOutOfSearchBox()Z
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clearSearchBox()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->clearFocus()V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->forceHideKeypad(Landroid/view/View;)V

    .line 90
    :cond_0
    return-void
.end method

.method protected getEditTextFilterEmoji()Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 436
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$10;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)V

    return-object v0
.end method

.method public getSearchBoxKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasSearchKeyword()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reStore()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0, v2, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->setSearchBtn(ZZ)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->setSearchBtn(ZZ)V

    goto :goto_0
.end method

.method public showPaddingSearchBoxZone(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 121
    :cond_0
    return-void
.end method

.method public updateDescription()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->getHintStatement()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mHintStatement:Ljava/lang/String;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mSeedSearchText:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->mHintStatement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method
