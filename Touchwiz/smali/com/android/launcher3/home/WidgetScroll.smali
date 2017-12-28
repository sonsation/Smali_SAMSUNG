.class Lcom/android/launcher3/home/WidgetScroll;
.super Ljava/lang/Object;
.source "WidgetScroll.java"


# instance fields
.field private final TYPE_GRID:I

.field private final TYPE_LIST:I

.field private final TYPE_NONE:I

.field private final TYPE_STACK:I

.field private final TYPE_WEAHTER:I

.field private mScrollType:I

.field private mScrollView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/android/launcher3/home/WidgetScroll;->TYPE_NONE:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/home/WidgetScroll;->TYPE_LIST:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/home/WidgetScroll;->TYPE_STACK:I

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/home/WidgetScroll;->TYPE_GRID:I

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/home/WidgetScroll;->TYPE_WEAHTER:I

    .line 31
    iput v1, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    .line 34
    return-void
.end method


# virtual methods
.method getScrollType(Landroid/view/View;Z)I
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isAllowSwipe"    # Z

    .prologue
    const/4 v3, 0x0

    .line 37
    if-eqz p2, :cond_0

    .line 38
    iget v1, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    .line 63
    :goto_0
    return v1

    .line 41
    :cond_0
    if-eqz p1, :cond_1

    instance-of v4, p1, Landroid/view/ViewGroup;

    if-nez v4, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    .line 43
    :cond_2
    instance-of v4, p1, Landroid/widget/StackView;

    if-eqz v4, :cond_3

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    .line 45
    const/4 v1, 0x2

    goto :goto_0

    .line 46
    :cond_3
    instance-of v4, p1, Landroid/widget/ListView;

    if-eqz v4, :cond_4

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    .line 48
    const/4 v1, 0x1

    goto :goto_0

    .line 49
    :cond_4
    instance-of v4, p1, Landroid/widget/GridView;

    if-eqz v4, :cond_5

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    .line 51
    const/4 v1, 0x3

    goto :goto_0

    :cond_5
    move-object v2, p1

    .line 54
    check-cast v2, Landroid/view/ViewGroup;

    .line 55
    .local v2, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 56
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/launcher3/home/WidgetScroll;->getScrollType(Landroid/view/View;Z)I

    move-result v1

    .line 57
    .local v1, "type":I
    if-lez v1, :cond_6

    .line 58
    iput v1, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    goto :goto_0

    .line 55
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    .end local v1    # "type":I
    :cond_7
    iput v3, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    move v1, v3

    .line 63
    goto :goto_0
.end method

.method isScrollable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 67
    iget v2, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 68
    iget-object v2, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 72
    :cond_1
    :goto_0
    return v0

    .line 69
    :cond_2
    iget v2, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 70
    goto :goto_0
.end method

.method isWeather()Z
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setWeatherScrollablility(Z)V
    .locals 1
    .param p1, "scrollablility"    # Z

    .prologue
    .line 76
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
