.class public Lcom/android/launcher3/widget/view/WidgetFolderPagedView;
.super Lcom/android/launcher3/widget/view/WidgetPagedView;
.source "WidgetFolderPagedView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/view/WidgetPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getDesiredHeight()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPageAt(I)Lcom/android/launcher3/widget/view/WidgetPageLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getDesiredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getDesiredWidth()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPageAt(I)Lcom/android/launcher3/widget/view/WidgetPageLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getDesiredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public bridge synthetic getPageAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPageAt(I)Lcom/android/launcher3/widget/view/WidgetPageLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPageAt(I)Lcom/android/launcher3/widget/view/WidgetPageLayout;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    return-object v0
.end method

.method public getRowCount()I
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getWidgetItemFolderViewId()I
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f04005d

    return v0
.end method

.method public getWidgetItemSingleViewId()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f04005e

    return v0
.end method

.method public getWidgetPageLayoutId()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f04005c

    return v0
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->onConfigurationChangedIfNeeded()V

    .line 63
    return-void
.end method
