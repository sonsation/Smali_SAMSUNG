.class public Lcom/android/launcher3/common/view/PageIndicator;
.super Landroid/widget/LinearLayout;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x64

.field private static final ANIM_SCALE:F = 0.5f

.field private static final PANEL_ANIMATION_TIME:I = 0x258

.field private static final TAG:Ljava/lang/String; = "PageIndicator"


# instance fields
.field private mActiveMarkerIndex:I

.field private mEnableGroupingSize:I

.field private mExistPlusPage:Z

.field private mExistZeroPage:Z

.field private mIndicatorMargin:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMarkerGap:I

.field private mMarkerMargin:I

.field private mMarkerStartOffset:I

.field private mMarkerWidth:I

.field private mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/view/PageIndicatorMarker;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxVisibleSize:I

.field private mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

.field private mWindowRange:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/view/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 72
    iput v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    .line 161
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->PageIndicator:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 163
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xf

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMaxVisibleSize:I

    .line 164
    iget v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMaxVisibleSize:I

    iput v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 167
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a00c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerGap:I

    .line 168
    const v2, 0x7f0a00c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerMargin:I

    .line 169
    const v2, 0x7f0a004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerWidth:I

    .line 170
    const v2, 0x7f0a0182

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mIndicatorMargin:I

    .line 172
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    aput v4, v2, v4

    .line 173
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/4 v3, 0x1

    aput v4, v2, v3

    .line 174
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 175
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/PageIndicator;->setImportantForAccessibility(I)V

    .line 176
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/PageIndicator;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/view/PageIndicator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/PageIndicator;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/view/PageIndicator;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/PageIndicator;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/view/PageIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/PageIndicator;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/view/PageIndicator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/view/PageIndicator;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->showPageNumber(I)V

    return-void
.end method

.method private addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZI)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "marker"    # Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .param p3, "allowAnimations"    # Z
    .param p4, "lastIndex"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 363
    if-ne p1, v2, :cond_1

    move p1, v2

    .line 366
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    add-int/2addr v4, p1

    if-ge v3, v4, :cond_2

    .line 396
    :cond_0
    :goto_1
    return-void

    .line 363
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 364
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->isGrouping()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eq p1, v2, :cond_3

    iget-object v2, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/common/view/PageIndicator;->canNotEditMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    :cond_3
    iget v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    if-ge p1, v2, :cond_4

    .line 375
    iget v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    .line 378
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04004a

    .line 379
    invoke-virtual {v2, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 381
    .local v1, "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    iget-object v2, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    iget-object v3, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    iget-object v4, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setMarkerDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 383
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->supportWhiteBg()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 384
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->changeColorForBg(Z)V

    .line 387
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorMarkerClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 388
    .local v0, "listener":Landroid/view/View$OnClickListener;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setClickable(Z)V

    .line 389
    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setSoundEffectsEnabled(Z)V

    .line 390
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    add-int/2addr v3, p1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 393
    if-eqz p4, :cond_6

    if-ne p1, p4, :cond_0

    .line 394
    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/launcher3/common/view/PageIndicator;->offsetWindowCenterTo(Z)V

    goto :goto_1
.end method

.method private canNotEditMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "type"    # Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    .prologue
    .line 440
    sget-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->ZEROPAGE:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-eq p2, v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->HOME:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-eq p2, v0, :cond_1

    .line 443
    :cond_0
    const/4 v0, 0x1

    .line 445
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdjustedPageIndex(I)I
    .locals 6
    .param p1, "pageIndex"    # I

    .prologue
    .line 326
    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    if-nez v4, :cond_1

    .line 327
    const/4 v0, 0x0

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 330
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v4

    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getCustomPageCount()I

    move-result v5

    sub-int v3, v4, v5

    .line 331
    .local v3, "normalPages":I
    move v0, p1

    .line 332
    .local v0, "adjustedPageIndex":I
    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    div-int v1, v3, v4

    .line 334
    .local v1, "defaultGroup":I
    if-eqz v0, :cond_0

    if-lez v1, :cond_0

    .line 335
    iget-boolean v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-nez v4, :cond_2

    .line 336
    add-int/lit8 v0, v0, 0x1

    .line 338
    :cond_2
    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    iget v5, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    rem-int v5, v3, v5

    sub-int v2, v4, v5

    .line 339
    .local v2, "defaultGroupNum":I
    mul-int v4, v1, v2

    if-gt v0, v4, :cond_3

    .line 340
    add-int/lit8 v4, v0, -0x1

    div-int/2addr v4, v1

    add-int/lit8 v0, v4, 0x1

    .line 345
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-nez v4, :cond_0

    .line 346
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 342
    :cond_3
    mul-int v4, v1, v2

    sub-int v4, v0, v4

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v1, 0x1

    div-int/2addr v4, v5

    add-int/2addr v4, v2

    add-int/lit8 v0, v4, 0x1

    goto :goto_1
.end method

.method private getCustomPageCount()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getCustomPageCount()I

    move-result v0

    return v0
.end method

.method private getIndicatorChild(F)Landroid/view/View;
    .locals 3
    .param p1, "x"    # F

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getChildCount()I

    move-result v0

    .line 635
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "childIndex":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 636
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/common/view/PageIndicator;->isTouchedIndicatorChild(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 640
    :goto_1
    return-object v2

    .line 635
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 640
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getPageIndex(I)I
    .locals 7
    .param p1, "pageIndicatorIndex"    # I

    .prologue
    .line 298
    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    if-nez v4, :cond_1

    .line 299
    const/4 v3, 0x0

    .line 322
    :cond_0
    :goto_0
    return v3

    .line 302
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v4

    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getCustomPageCount()I

    move-result v5

    sub-int v2, v4, v5

    .line 303
    .local v2, "normalPages":I
    move v3, p1

    .line 304
    .local v3, "pageIndex":I
    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    div-int v0, v2, v4

    .line 306
    .local v0, "defaultGroup":I
    if-lez v0, :cond_0

    .line 307
    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    iget v5, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    rem-int v5, v2, v5

    sub-int v1, v4, v5

    .line 308
    .local v1, "defaultGroupNum":I
    iget-boolean v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-nez v4, :cond_2

    .line 309
    add-int/lit8 v3, v3, 0x1

    .line 311
    :cond_2
    if-gt v3, v1, :cond_3

    .line 312
    add-int/lit8 v4, v3, -0x1

    mul-int/2addr v4, v0

    add-int/lit8 v3, v4, 0x1

    .line 317
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-nez v4, :cond_0

    .line 318
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 314
    :cond_3
    mul-int v4, v0, v1

    add-int/lit8 v5, v0, 0x1

    sub-int v6, v3, v1

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, 0x1

    goto :goto_1
.end method

.method private getPageIndicatorMarkerClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 482
    new-instance v0, Lcom/android/launcher3/common/view/PageIndicator$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/view/PageIndicator$1;-><init>(Lcom/android/launcher3/common/view/PageIndicator;)V

    .line 507
    .local v0, "listener":Landroid/view/View$OnClickListener;
    return-object v0
.end method

.method private getPageNumberTopMargin()I
    .locals 6

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 585
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0a00d6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 586
    .local v0, "indicatorPopupGap":I
    const v5, 0x7f0a00d7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 587
    .local v1, "indicatorPopupSize":I
    const v5, 0x7f0a00c2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 588
    .local v4, "statusbarSize":I
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 590
    .local v2, "location":[I
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/PageIndicator;->getLocationInWindow([I)V

    .line 591
    const/4 v5, 0x1

    aget v5, v2, v5

    sub-int/2addr v5, v0

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    return v5
.end method

.method private isTouchedIndicatorChild(Landroid/view/View;F)Z
    .locals 5
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "x"    # F

    .prologue
    const/4 v3, 0x0

    .line 644
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 645
    .local v0, "cordinate":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 646
    aget v4, v0, v3

    int-to-float v1, v4

    .line 647
    .local v1, "left":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v1, v4

    .line 649
    .local v2, "right":F
    cmpl-float v4, p2, v1

    if-ltz v4, :cond_0

    cmpg-float v4, p2, v2

    if-gtz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private setPagedView(Lcom/android/launcher3/common/base/view/PagedView;)V
    .locals 2
    .param p1, "pagedView"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    .line 354
    iget v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMaxVisibleSize:I

    iget-object v1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getSupportCustomPageCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    .line 355
    return-void
.end method

.method private showPageNumber(I)V
    .locals 10
    .param p1, "number"    # I

    .prologue
    const/4 v8, 0x0

    .line 547
    if-ltz p1, :cond_0

    if-nez p1, :cond_1

    iget-boolean v6, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-eqz v6, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-boolean v6, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-nez v6, :cond_2

    .line 552
    add-int/lit8 p1, p1, 0x1

    .line 555
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/common/view/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04004b

    invoke-virtual {v6, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 557
    .local v1, "layout":Landroid/widget/LinearLayout;
    const v6, 0x7f1100ea

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 561
    .local v5, "tx":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string v6, "ar"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "fa"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 563
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, "pageNum":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    new-instance v4, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 570
    .local v4, "toast":Landroid/widget/Toast;
    const/16 v6, 0x31

    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getPageNumberTopMargin()I

    move-result v7

    invoke-virtual {v4, v6, v8, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 571
    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 572
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 574
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 575
    .local v2, "mHandler":Landroid/os/Handler;
    new-instance v6, Lcom/android/launcher3/common/view/PageIndicator$2;

    invoke-direct {v6, p0, v4}, Lcom/android/launcher3/common/view/PageIndicator$2;-><init>(Lcom/android/launcher3/common/view/PageIndicator;Landroid/widget/Toast;)V

    const-wide/16 v8, 0x258

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 565
    .end local v2    # "mHandler":Landroid/os/Handler;
    .end local v3    # "pageNum":Ljava/lang/String;
    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "pageNum":Ljava/lang/String;
    goto :goto_1
.end method

.method private updateActiveMarker()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->disableLayoutTransitions()V

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 202
    .local v1, "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    iget v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    if-ne v0, v2, :cond_0

    .line 203
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->activate(Z)V

    .line 200
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->inactivate(Z)V

    goto :goto_1

    .line 208
    .end local v1    # "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->enableLayoutTransitions()V

    .line 209
    return-void
.end method


# virtual methods
.method public addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZLcom/android/launcher3/common/base/view/PagedView;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "marker"    # Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .param p3, "allowAnimations"    # Z
    .param p4, "pagedView"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 358
    invoke-direct {p0, p4}, Lcom/android/launcher3/common/view/PageIndicator;->setPagedView(Lcom/android/launcher3/common/base/view/PagedView;)V

    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/common/view/PageIndicator;->addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZI)V

    .line 360
    return-void
.end method

.method public addMarkers(Ljava/util/ArrayList;ZLcom/android/launcher3/common/base/view/PagedView;)V
    .locals 4
    .param p2, "allowAnimations"    # Z
    .param p3, "pagedView"    # Lcom/android/launcher3/common/base/view/PagedView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;",
            ">;Z",
            "Lcom/android/launcher3/common/base/view/PagedView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;>;"
    invoke-direct {p0, p3}, Lcom/android/launcher3/common/view/PageIndicator;->setPagedView(Lcom/android/launcher3/common/base/view/PagedView;)V

    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 401
    const v2, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v1, p2, v3}, Lcom/android/launcher3/common/view/PageIndicator;->addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZI)V

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_0
    return-void
.end method

.method public changeColorForBg(Z)V
    .locals 3
    .param p1, "whiteBg"    # Z

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getChildCount()I

    move-result v1

    .line 528
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 529
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 530
    .local v0, "child":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->changeColorForBg(Z)V

    .line 528
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "child":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    :cond_0
    return-void
.end method

.method public clickPageIndicator(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->getIndicatorChild(F)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 626
    .local v0, "childView":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 627
    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->performClick()Z

    .line 629
    :cond_0
    return-void
.end method

.method public disableLayoutTransitions()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 191
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 192
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 195
    return-void
.end method

.method dumpState(Ljava/lang/String;)V
    .locals 6
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 511
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 512
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tmMarkers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 513
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 515
    .local v1, "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    .end local v1    # "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\twindow: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 518
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tchildren: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 519
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 520
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 521
    .restart local v1    # "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 523
    .end local v1    # "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tactive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public enableLayoutTransitions()V
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 182
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 183
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 185
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 187
    .end local v0    # "transition":Landroid/animation/LayoutTransition;
    :cond_0
    return-void
.end method

.method public getMarkerStartOffset()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    return v0
.end method

.method public getMarkers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/view/PageIndicatorMarker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxVisibleSize()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMaxVisibleSize:I

    return v0
.end method

.method public getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 12
    .param p1, "isShowAnim"    # Z

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 595
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 596
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [F

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    aput v4, v8, v9

    if-eqz p1, :cond_1

    move v4, v5

    :goto_1
    aput v4, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 598
    .local v1, "pvhShowAlpha":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [F

    if-eqz p1, :cond_2

    move v4, v6

    :goto_2
    aput v4, v8, v9

    if-eqz p1, :cond_3

    move v4, v5

    :goto_3
    aput v4, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 600
    .local v2, "pvhShowScaleX":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [F

    if-eqz p1, :cond_4

    move v4, v6

    :goto_4
    aput v4, v8, v9

    if-eqz p1, :cond_5

    :goto_5
    aput v5, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 602
    .local v3, "pvhShowScaleY":Landroid/animation/PropertyValuesHolder;
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 603
    const/16 v4, 0xf

    invoke-static {v4}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 604
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v9

    aput-object v2, v4, v10

    aput-object v3, v4, v11

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 607
    new-instance v4, Lcom/android/launcher3/common/view/PageIndicator$3;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/common/view/PageIndicator$3;-><init>(Lcom/android/launcher3/common/view/PageIndicator;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 621
    return-object v0

    .end local v1    # "pvhShowAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhShowScaleX":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "pvhShowScaleY":Landroid/animation/PropertyValuesHolder;
    :cond_0
    move v4, v5

    .line 596
    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .restart local v1    # "pvhShowAlpha":Landroid/animation/PropertyValuesHolder;
    :cond_2
    move v4, v5

    .line 598
    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_3

    .restart local v2    # "pvhShowScaleX":Landroid/animation/PropertyValuesHolder;
    :cond_4
    move v4, v5

    .line 600
    goto :goto_4

    :cond_5
    move v5, v6

    goto :goto_5
.end method

.method public isGrouping()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 539
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    if-eqz v2, :cond_0

    .line 540
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getCustomPageCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 541
    .local v0, "normalPages":I
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    .line 543
    .end local v0    # "normalPages":I
    :cond_0
    return v1
.end method

.method public offsetWindowCenterTo(Z)V
    .locals 18
    .param p1, "allowAnimations"    # Z

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    if-gez v15, :cond_0

    .line 213
    const-string v15, "PageIndicator"

    const-string v16, "ActiveMarkerIndex is invalid"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    const/4 v14, 0x0

    .line 217
    .local v14, "windowStart":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMaxVisibleSize:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 218
    .local v12, "windowEnd":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    if-ne v15, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    if-eq v15, v12, :cond_4

    :cond_1
    const/4 v13, 0x1

    .line 221
    .local v13, "windowMoved":Z
    :goto_0
    if-nez p1, :cond_2

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/PageIndicator;->disableLayoutTransitions()V

    .line 226
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/PageIndicator;->getChildCount()I

    move-result v15

    add-int/lit8 v2, v15, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_5

    .line 227
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/view/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 228
    .local v5, "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 229
    .local v7, "markerIndex":I
    if-ge v7, v14, :cond_3

    .line 230
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/view/PageIndicator;->removeView(Landroid/view/View;)V

    .line 226
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 218
    .end local v2    # "i":I
    .end local v5    # "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    .end local v7    # "markerIndex":I
    .end local v13    # "windowMoved":Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 234
    .restart local v2    # "i":I
    .restart local v13    # "windowMoved":Z
    :cond_5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerGap:I

    .line 235
    .local v6, "markerGap":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerMargin:I

    .line 236
    .local v8, "markerMargin":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerGap:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    mul-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerMargin:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 237
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    mul-int v16, v16, v17

    add-int v3, v15, v16

    .line 238
    .local v3, "indicatorWidth":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 239
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v1}, Lcom/android/launcher3/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/PageIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/PageIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 241
    .local v10, "parentWidth":I
    :goto_2
    if-lez v10, :cond_6

    iget v15, v1, Landroid/graphics/Point;->x:I

    if-le v10, v15, :cond_7

    .line 242
    :cond_6
    iget v10, v1, Landroid/graphics/Point;->x:I

    .line 245
    :cond_7
    iget v15, v1, Landroid/graphics/Point;->x:I

    if-ge v10, v15, :cond_c

    move v9, v10

    .line 246
    .local v9, "maxWidth":I
    :goto_3
    if-le v3, v9, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eqz v15, :cond_8

    .line 247
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    div-int v11, v9, v15

    .line 248
    .local v11, "resizeWidth":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerWidth:I

    sub-int v6, v11, v15

    .line 249
    const/4 v8, 0x0

    .line 253
    .end local v11    # "resizeWidth":I
    :cond_8
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v2, v15, :cond_f

    .line 254
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 256
    .restart local v5    # "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    invoke-virtual {v5}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 257
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerWidth:I

    add-int/2addr v15, v6

    iput v15, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 258
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v2, v15, :cond_d

    .line 259
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 263
    :goto_5
    invoke-virtual {v5, v4}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    if-gt v14, v2, :cond_a

    if-ge v2, v12, :cond_a

    .line 266
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/view/PageIndicator;->indexOfChild(Landroid/view/View;)I

    move-result v15

    if-gez v15, :cond_9

    .line 267
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/android/launcher3/common/view/PageIndicator;->addView(Landroid/view/View;I)V

    .line 269
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    if-ne v2, v15, :cond_e

    invoke-virtual {v5}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getMarkerType()Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    move-result-object v15

    sget-object v16, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_e

    .line 270
    invoke-virtual {v5, v13}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->activate(Z)V

    .line 253
    :cond_a
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 240
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    .end local v9    # "maxWidth":I
    .end local v10    # "parentWidth":I
    :cond_b
    const/4 v10, -0x1

    goto/16 :goto_2

    .line 245
    .restart local v10    # "parentWidth":I
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mIndicatorMargin:I

    mul-int/lit8 v15, v15, 0x2

    sub-int v9, v10, v15

    goto/16 :goto_3

    .line 261
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5    # "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    .restart local v9    # "maxWidth":I
    :cond_d
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_5

    .line 272
    :cond_e
    invoke-virtual {v5, v13}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->inactivate(Z)V

    goto :goto_6

    .line 277
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    :cond_f
    if-nez p1, :cond_10

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/PageIndicator;->enableLayoutTransitions()V

    .line 281
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/16 v16, 0x0

    aput v14, v15, v16

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/16 v16, 0x1

    aput v12, v15, v16

    .line 283
    return-void
.end method

.method public removeAllMarkers()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 464
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->removeAllViews()V

    .line 465
    return-void
.end method

.method public removeMarker(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "allowAnimations"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 449
    iget-object v1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-boolean v1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistPlusPage:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    sub-int v1, v4, v1

    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    add-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 452
    iget-object v1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getMarkerType()Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    move-result-object v0

    .line 453
    .local v0, "markerType":Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->isGrouping()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/view/PageIndicator;->canNotEditMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    .end local v0    # "markerType":Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 450
    goto :goto_0

    .line 457
    .restart local v0    # "markerType":Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 458
    if-eqz p2, :cond_3

    sget-object v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->ZEROPAGE:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-eq v0, v1, :cond_3

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/PageIndicator;->offsetWindowCenterTo(Z)V

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public setActiveMarker(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 468
    iget v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/view/PageIndicator;->getAdjustedPageIndex(I)I

    move-result p1

    .line 469
    iput p1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    .line 470
    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->updateActiveMarker()V

    .line 471
    return-void
.end method

.method public setMarkerStartOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 474
    iput p1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    .line 475
    return-void
.end method

.method public setPlusPage(Z)V
    .locals 0
    .param p1, "page"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistPlusPage:Z

    .line 291
    return-void
.end method

.method public setZeroPageMarker(Z)V
    .locals 0
    .param p1, "existZeroPage"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    .line 437
    return-void
.end method

.method public updateHomeMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "marker"    # Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    .prologue
    .line 413
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 414
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    add-int/2addr v6, p1

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/view/PageIndicator;->getAdjustedPageIndex(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 413
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 416
    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 417
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 418
    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 419
    .local v1, "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    if-ne v0, p1, :cond_1

    .line 420
    iget-object v4, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    iget-object v5, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    iget-object v6, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setMarkerDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 417
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 423
    new-instance v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->ZEROPAGE:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v2, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 425
    .local v2, "markerRes":Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    iget-object v4, v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    iget-object v5, v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    iget-object v6, v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setMarkerDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    goto :goto_1

    .line 426
    .end local v2    # "markerRes":Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getMarkerType()Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->HOME:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-ne v4, v5, :cond_0

    .line 427
    new-instance v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->DEFAULT:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v2, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 429
    .restart local v2    # "markerRes":Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    iget-object v4, v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    iget-object v5, v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    iget-object v6, v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setMarkerDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    goto :goto_1

    .line 433
    .end local v1    # "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    .end local v2    # "markerRes":Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    :cond_3
    return-void
.end method

.method public updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "marker"    # Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    .prologue
    .line 406
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->getAdjustedPageIndex(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 408
    iget-object v1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 409
    .local v0, "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    iget-object v1, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    iget-object v2, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    iget-object v3, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setMarkerDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 410
    return-void
.end method
