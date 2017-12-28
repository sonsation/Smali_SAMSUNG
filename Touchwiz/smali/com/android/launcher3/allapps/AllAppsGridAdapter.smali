.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;,
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;,
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;,
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final APPS_ALL_LIST_HEADER_VIEW_TYPE:I = 0xb

.field private static final DEALYMILLISEC:J = 0x2bcL

.field public static final EMPTY_SEARCH_VIEW_TYPE:I = 0x3

.field public static final GALAXY_APPS_RESULT_ICON_VIEW_TYPE:I = 0xc

.field public static final ICON_VIEW_TYPE:I = 0x1

.field public static final NO_RECENT_HISTORY_VIEW_TYPE:I = 0x6

.field public static final PREDICTION_ICON_VIEW_TYPE:I = 0x2

.field public static final RECENT_HISTORY_VIEW_TYPE:I = 0x7

.field public static final SEARCH_GALAXY_BTN_VIEW_TYPE:I = 0x9

.field public static final SEARCH_MARKET_BTN_VIEW_TYPE:I = 0xa

.field public static final SEARCH_MARKET_DIVIDER_VIEW_TYPE:I = 0x4

.field public static final SEARCH_MARKET_TITLE_VIEW_TYPE:I = 0x8

.field public static final SEARCH_MARKET_VIEW_TYPE:I = 0x5

.field public static final SECTION_BREAK_VIEW_TYPE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AppsGridAdapter"


# instance fields
.field private mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field private mAppsPerRow:I

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private mEmptySearchMessage:Ljava/lang/String;

.field mGalaxyAppsBtnClickListener:Landroid/view/View$OnClickListener;

.field mGalaxyAppsIconClickListener:Landroid/view/View$OnClickListener;

.field private mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

.field private mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconSize:I

.field private mItemDecoration:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMarketAppName:Ljava/lang/String;

.field private mMarketSearchIntent:Landroid/content/Intent;

.field private mMarketSearchMessage:Ljava/lang/String;

.field mPlayStoreBtnClickListener:Landroid/view/View$OnClickListener;

.field private mPredictedAppsDividerPaint:Landroid/graphics/Paint;

.field private mPredictionBarDividerOffset:I

.field mSearchText:Ljava/lang/String;

.field private mSectionHeaderOffset:I

.field private mSectionNamesMargin:I

.field private mSectionTextPaint:Landroid/graphics/Paint;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "apps"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .param p3, "touchListener"    # Landroid/view/View$OnTouchListener;
    .param p4, "iconClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v6, 0x1

    .line 381
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 354
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 692
    new-instance v3, Lcom/android/launcher3/allapps/AllAppsGridAdapter$2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$2;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGalaxyAppsIconClickListener:Landroid/view/View$OnClickListener;

    .line 719
    new-instance v3, Lcom/android/launcher3/allapps/AllAppsGridAdapter$3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$3;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGalaxyAppsBtnClickListener:Landroid/view/View$OnClickListener;

    .line 744
    new-instance v3, Lcom/android/launcher3/allapps/AllAppsGridAdapter$4;

    invoke-direct {v3, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$4;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPlayStoreBtnClickListener:Landroid/view/View$OnClickListener;

    .line 382
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 383
    .local v2, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 384
    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 385
    const v3, 0x7f0900f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mEmptySearchMessage:Ljava/lang/String;

    .line 386
    new-instance v3, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-direct {v3, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    .line 387
    new-instance v3, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

    .line 388
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 389
    new-instance v3, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;

    invoke-direct {v3, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mItemDecoration:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;

    .line 390
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 391
    iput-object p3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 392
    iput-object p4, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 393
    const v3, 0x7f0a00f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionNamesMargin:I

    .line 394
    const v3, 0x7f0a00f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionHeaderOffset:I

    .line 396
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    .line 397
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    const v4, 0x7f0a00f6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 399
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    const v4, 0x7f0e0003

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 402
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    .line 403
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 404
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x1e000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 406
    const v3, 0x7f0a00c8

    .line 407
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v3, v3

    const v4, 0x7f0a00c7

    .line 408
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictionBarDividerOffset:I

    .line 411
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 412
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->createMarketSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 414
    .local v0, "marketInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketAppName:Ljava/lang/String;

    .line 417
    :cond_0
    const-string v3, ""

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSearchText:Ljava/lang/String;

    .line 418
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionNamesMargin:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictionBarDividerOffset:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPredictedAppsDividerPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSectionHeaderOffset:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private createMarketSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 655
    const-string v2, "market://search"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 656
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "q"

    .line 657
    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 658
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 659
    .local v1, "marketSearchUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    .local v0, "marketSearchIntent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 661
    return-object v0
.end method

.method private displayHighlightedName(Lcom/android/launcher3/common/view/IconView;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Lcom/android/launcher3/common/view/IconView;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 669
    const/4 v3, -0x1

    .line 670
    .local v3, "indexOf":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 672
    .local v1, "highlightStrLength":I
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 674
    .local v0, "highLightText":Landroid/text/Spannable;
    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 673
    invoke-static {v5, p2, v6}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v2

    .line 675
    .local v2, "iQueryForIndian":[C
    if-eqz v2, :cond_1

    .line 676
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    .line 677
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 678
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 683
    .end local v4    # "s":Ljava/lang/String;
    :goto_0
    add-int v5, v3, v1

    if-gt v3, v5, :cond_0

    const/4 v5, -0x1

    if-le v3, v5, :cond_0

    .line 684
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0008

    .line 685
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v6, v3, v1

    const/4 v7, 0x0

    .line 684
    invoke-interface {v0, v5, v3, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 687
    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    :cond_0
    return-void

    .line 680
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSearchText:Ljava/lang/String;

    .line 681
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 680
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mItemDecoration:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridItemDecoration;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 647
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 648
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    iget v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    return v1
.end method

.method public getLayoutManager()Landroid/support/v7/widget/GridLayoutManager;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->onBindViewHolder(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;I)V
    .locals 27
    .param p1, "holder"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 546
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->getItemViewType()I

    move-result v23

    packed-switch v23, :pswitch_data_0

    .line 638
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 548
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 549
    .local v9, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    check-cast v8, Lcom/android/launcher3/common/view/IconView;

    .line 550
    .local v8, "icon":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSearchText:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_0

    .line 552
    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v8, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->displayHighlightedName(Lcom/android/launcher3/common/view/IconView;Ljava/lang/String;)V

    goto :goto_0

    .line 556
    .end local v8    # "icon":Lcom/android/launcher3/common/view/IconView;
    .end local v9    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 557
    .restart local v9    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    check-cast v8, Lcom/android/launcher3/common/view/IconView;

    .line 558
    .restart local v8    # "icon":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    .line 562
    .end local v8    # "icon":Lcom/android/launcher3/common/view/IconView;
    .end local v9    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    check-cast v7, Landroid/widget/TextView;

    .line 563
    .local v7, "emptyViewText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mEmptySearchMessage:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v23

    if-eqz v23, :cond_1

    const/16 v23, 0x11

    :goto_1
    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    :cond_1
    const v23, 0x800013

    goto :goto_1

    .line 568
    .end local v7    # "emptyViewText":Landroid/widget/TextView;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    .line 569
    .local v17, "searchView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 570
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v23, 0x11

    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 572
    :cond_2
    const v23, 0x800013

    goto :goto_2

    .line 576
    :cond_3
    const/16 v23, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 580
    .end local v17    # "searchView":Landroid/widget/TextView;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    check-cast v12, Landroid/widget/TextView;

    .line 581
    .local v12, "notiText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->size()I

    move-result v23

    if-lez v23, :cond_0

    .line 582
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 589
    .end local v12    # "notiText":Landroid/widget/TextView;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 590
    .restart local v9    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    check-cast v8, Lcom/android/launcher3/common/view/IconView;

    .line 591
    .restart local v8    # "icon":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto/16 :goto_0

    .line 595
    .end local v8    # "icon":Lcom/android/launcher3/common/view/IconView;
    .end local v9    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    move-object/from16 v18, v0

    .line 596
    .local v18, "searchViewBtn":Landroid/view/View;
    const v23, 0x7f110036

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 597
    .local v20, "textView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0900e5

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 600
    .end local v18    # "searchViewBtn":Landroid/view/View;
    .end local v20    # "textView":Landroid/widget/TextView;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    move-object/from16 v16, v0

    .line 601
    .local v16, "searchMarketViewBtn":Landroid/view/View;
    const v23, 0x7f110036

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 602
    .local v21, "textView_market":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0900e6

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 605
    .end local v16    # "searchMarketViewBtn":Landroid/view/View;
    .end local v21    # "textView_market":Landroid/widget/TextView;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 606
    .local v19, "sectionName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    .line 607
    .local v11, "listHeader":Landroid/view/View;
    const v23, 0x7f110020

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 608
    .local v22, "title":Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 611
    .end local v11    # "listHeader":Landroid/view/View;
    .end local v19    # "sectionName":Ljava/lang/String;
    .end local v22    # "title":Landroid/widget/TextView;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->itemDetails:Lcom/android/launcher3/allapps/ItemDetails;

    .line 612
    .local v10, "itemDetails":Lcom/android/launcher3/allapps/ItemDetails;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->mContent:Landroid/view/View;

    .line 613
    .local v15, "resultView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09019f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 615
    .local v13, "price":Ljava/lang/String;
    const v23, 0x7f1100a8

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 616
    .local v2, "ItemImage":Landroid/widget/ImageView;
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 617
    const v23, 0x7f1100a9

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 618
    .local v3, "ItemName":Landroid/widget/TextView;
    const v23, 0x7f1100aa

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 619
    .local v5, "ItemSeller":Landroid/widget/TextView;
    const v23, 0x7f1100ab

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 620
    .local v4, "ItemPrice":Landroid/widget/TextView;
    const v23, 0x7f1100ac

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 622
    .local v6, "Itemrating":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconSize:I

    move/from16 v23, v0

    if-lez v23, :cond_0

    .line 623
    invoke-virtual {v10}, Lcom/android/launcher3/allapps/ItemDetails;->getIconImage()Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconSize:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconSize:I

    move/from16 v25, v0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 624
    .local v14, "resized":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 625
    invoke-virtual {v10}, Lcom/android/launcher3/allapps/ItemDetails;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    invoke-virtual {v10}, Lcom/android/launcher3/allapps/ItemDetails;->getItemSeller()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    invoke-virtual {v10}, Lcom/android/launcher3/allapps/ItemDetails;->getPrice()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 629
    const-string v23, "Free"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    :goto_3
    invoke-virtual {v10}, Lcom/android/launcher3/allapps/ItemDetails;->getRating()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 631
    :cond_4
    invoke-virtual {v10}, Lcom/android/launcher3/allapps/ItemDetails;->getPrice()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v9, 0x7f04000b

    const v7, 0x7f040004

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 469
    packed-switch p2, :pswitch_data_0

    .line 540
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected view type"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 471
    :pswitch_0
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    new-instance v6, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v6}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 537
    :goto_0
    return-object v5

    .line 473
    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .line 475
    .local v1, "icon":Lcom/android/launcher3/common/view/IconView;
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/view/IconView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 476
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/view/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/view/IconView;->setLongPressTimeout(I)V

    .line 478
    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/view/IconView;->setFocusable(Z)V

    .line 479
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconView;->getIconSize()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconSize:I

    .line 480
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v5, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 483
    .end local v1    # "icon":Lcom/android/launcher3/common/view/IconView;
    :pswitch_2
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .line 485
    .restart local v1    # "icon":Lcom/android/launcher3/common/view/IconView;
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/view/IconView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 486
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/view/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/view/IconView;->setLongPressTimeout(I)V

    .line 488
    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/view/IconView;->setFocusable(Z)V

    .line 489
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v5, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 492
    .end local v1    # "icon":Lcom/android/launcher3/common/view/IconView;
    :pswitch_3
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040003

    invoke-virtual {v6, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 495
    :pswitch_4
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040008

    invoke-virtual {v6, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 498
    :pswitch_5
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040007

    invoke-virtual {v5, v6, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 500
    .local v4, "searchMarketView":Landroid/view/View;
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v5, v4}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 508
    .end local v4    # "searchMarketView":Landroid/view/View;
    :pswitch_6
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040006

    invoke-virtual {v6, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 511
    :pswitch_7
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .line 513
    .restart local v1    # "icon":Lcom/android/launcher3/common/view/IconView;
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/view/IconView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 514
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/view/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/view/IconView;->setLongPressTimeout(I)V

    .line 516
    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/view/IconView;->setFocusable(Z)V

    .line 517
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v5, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 520
    .end local v1    # "icon":Lcom/android/launcher3/common/view/IconView;
    :pswitch_8
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04000c

    invoke-virtual {v6, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 522
    :pswitch_9
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v9, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 523
    .local v0, "MarketBtnView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGalaxyAppsBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v5, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 527
    .end local v0    # "MarketBtnView":Landroid/view/View;
    :pswitch_a
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v9, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 528
    .restart local v0    # "MarketBtnView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mPlayStoreBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v5, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 532
    .end local v0    # "MarketBtnView":Landroid/view/View;
    :pswitch_b
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040005

    invoke-virtual {v6, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 534
    :pswitch_c
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040030

    invoke-virtual {v5, v6, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 535
    .local v3, "resultView":Landroid/view/View;
    const v5, 0x7f1100a8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 536
    .local v2, "img":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGalaxyAppsIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    new-instance v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v5, v3}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 469
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
    .end packed-switch
.end method

.method public setLastSearchQuery(Ljava/lang/String;)V
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 435
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mEmptySearchMessage:Ljava/lang/String;

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setSearchText(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketAppName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 438
    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketAppName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    .line 440
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->createMarketSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    .line 442
    :cond_0
    return-void
.end method

.method public setNumAppsPerRow(I)V
    .locals 1
    .param p1, "appsPerRow"    # I

    .prologue
    .line 424
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    .line 425
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 426
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSearchText:Ljava/lang/String;

    .line 666
    return-void
.end method

.method public updateBackgroundPadding(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 450
    return-void
.end method
