.class public Lcom/android/launcher3/widget/view/WidgetItemSingleView;
.super Lcom/android/launcher3/widget/view/WidgetItemView;
.source "WidgetItemSingleView.java"


# static fields
.field private static final sPreviewFadeInDuration:J = 0x50L

.field private static final sPreviewFadeInStaggerDuration:J = 0x14L


# instance fields
.field private mDims:Landroid/widget/TextView;

.field private mImage:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/view/WidgetItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method private applyPreview(Lcom/android/launcher3/common/drawable/FastBitmapDrawable;IZZ)V
    .locals 8
    .param p1, "preview"    # Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .param p2, "index"    # I
    .param p3, "scale"    # Z
    .param p4, "animate"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    if-eqz p4, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x50

    int-to-long v4, p2

    const-wide/16 v6, 0x14

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 114
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyCellSpan()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 78
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mWidgets:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 79
    .local v1, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getSpan()[I

    move-result-object v0

    .line 80
    .local v0, "cellSpan":[I
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mDims:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mDimensionsFormatString:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    aget v5, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mDims:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mTalkbackDimen:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    aget v5, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method protected applyTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    .line 74
    return-void
.end method

.method public changeColorForBg(Z)V
    .locals 4
    .param p1, "whiteBg"    # Z

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mTitle:Landroid/widget/TextView;

    invoke-static {v2, v3, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mDims:Landroid/widget/TextView;

    invoke-static {v2, v3, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 132
    if-eqz p1, :cond_0

    const v0, 0x7f0200bb

    .line 134
    .local v0, "bgDrawable":I
    :goto_0
    const v2, 0x7f11010f

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "container":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 136
    return-void

    .line 132
    .end local v0    # "bgDrawable":I
    .end local v1    # "container":Landroid/view/View;
    :cond_0
    const v0, 0x7f0200ba

    goto :goto_0
.end method

.method protected getPreviewImageHeight()I
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getPreviewImageWidth()I
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected loadPreview(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;Ljava/util/List;II)Ljava/lang/Object;
    .locals 3
    .param p1, "jc"    # Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x0

    .line 97
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getProviderInfo()Ljava/lang/Object;

    move-result-object v0

    .line 96
    invoke-virtual {v1, v2, v0, p3, p4}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->generatePreview(Lcom/android/launcher3/Launcher;Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->onFinishInflate()V

    .line 59
    const v0, 0x7f110100

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mTitle:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f110101

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mDims:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f110102

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mImage:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f11010e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mUninstallIcon:Landroid/widget/ImageView;

    .line 63
    return-void
.end method

.method protected postToSetPreview(Ljava/lang/Object;II)V
    .locals 3
    .param p1, "previews"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 101
    if-nez p1, :cond_0

    .line 104
    .end local p1    # "previews":Ljava/lang/Object;
    :goto_0
    return-void

    .line 103
    .restart local p1    # "previews":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "previews":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->applyPreview(Lcom/android/launcher3/common/drawable/FastBitmapDrawable;IZZ)V

    goto :goto_0
.end method

.method protected resetToRecycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-super {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->resetToRecycle()V

    .line 123
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    const v1, 0x7f110100

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    .local v0, "name":Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method
