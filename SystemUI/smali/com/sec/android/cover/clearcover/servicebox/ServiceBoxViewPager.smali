.class public Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "ServiceBoxViewPager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private sSetCurrentItemInternal:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->loadMethods()V

    .line 26
    return-void
.end method

.method private loadMethods()V
    .locals 4

    .prologue
    .line 118
    const/4 v2, 0x3

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 119
    .local v1, "paramTypes":[Ljava/lang/Class;
    const-class v2, Lcom/android/internal/widget/ViewPager;

    const-string/jumbo v3, "setCurrentItemInternal"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->sSetCurrentItemInternal:Ljava/lang/reflect/Method;

    .line 120
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->sSetCurrentItemInternal:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "paramTypes":[Ljava/lang/Class;
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while loading methods"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, -0x80000000

    const/4 v7, 0x0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    .line 38
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    if-ne v8, v9, :cond_0

    const/4 v7, 0x1

    .line 40
    .local v7, "wrapHeight":Z
    :cond_0
    if-eqz v7, :cond_4

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getMeasuredWidth()I

    move-result v6

    .local v6, "width":I
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getMeasuredHeight()I

    move-result v3

    .line 51
    .local v3, "height":I
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getChildCount()I

    move-result v1

    .line 58
    .local v1, "childCount":I
    if-lez v1, :cond_3

    .line 59
    const/4 v5, 0x0

    .line 61
    .local v5, "maxHeight":I
    const/4 v4, 0x0

    .local v4, "iIdx":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 66
    invoke-virtual {p0, v4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "child":Landroid/view/View;
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, p1, v8}, Landroid/view/View;->measure(II)V

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 70
    .local v2, "childHeight":I
    if-ge v5, v2, :cond_1

    .line 71
    move v5, v2

    .line 61
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childHeight":I
    :cond_2
    if-eqz v5, :cond_3

    .line 76
    move v3, v5

    .line 80
    .end local v4    # "iIdx":I
    .end local v5    # "maxHeight":I
    :cond_3
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 82
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    .line 35
    .end local v1    # "childCount":I
    .end local v3    # "height":I
    .end local v6    # "width":I
    :cond_4
    return-void
.end method

.method public setItemByForce(IZ)Z
    .locals 5
    .param p1, "id"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v4, 0x0

    .line 102
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->sSetCurrentItemInternal:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 103
    sget-object v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sSetCurrentItemInternal is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v4

    .line 107
    :cond_0
    const/4 v2, 0x3

    :try_start_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 108
    .local v1, "params":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->sSetCurrentItemInternal:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 109
    .end local v1    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while invoking setCurrentItemInternal()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    return v4
.end method
