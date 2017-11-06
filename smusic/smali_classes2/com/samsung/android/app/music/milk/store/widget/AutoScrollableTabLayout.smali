.class public Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;
.super Landroid/support/design/widget/TabLayout;
.source "AutoScrollableTabLayout.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AutoScrollableTabLayout"


# instance fields
.field private mScrollablePercent:I

.field private mTextViewLayoutId:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->mTextViewLayoutId:I

    .line 21
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->mScrollablePercent:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->mTextViewLayoutId:I

    .line 21
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->mScrollablePercent:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->mTextViewLayoutId:I

    .line 21
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->mScrollablePercent:I

    .line 33
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 46
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/TabLayout;->onLayout(ZIIII)V

    .line 48
    iget v7, p0, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->mTextViewLayoutId:I

    if-nez v7, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->getTabMode()I

    move-result v7

    if-eqz v7, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->getTabCount()I

    move-result v4

    .line 57
    .local v4, "tabCount":I
    if-lez v4, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "ellipsisCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 63
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    .line 64
    .local v3, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-nez v3, :cond_3

    .line 62
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v6

    .line 68
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 69
    iget v7, p0, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->mTextViewLayoutId:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 70
    .local v5, "textView":Landroid/widget/TextView;
    invoke-static {v5}, Lcom/samsung/android/app/music/common/util/UiUtils;->isEllipsis(Landroid/widget/TextView;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 76
    .end local v3    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    :cond_4
    mul-int/lit8 v7, v0, 0x64

    div-int v2, v7, v4

    .line 77
    .local v2, "percent":I
    const-string v7, "AutoScrollableTabLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onLayout. tabCount - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ellipsisCount - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rate - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget v7, p0, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->mScrollablePercent:I

    if-lt v2, v7, :cond_0

    .line 80
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->setTabMode(I)V

    goto :goto_0
.end method

.method public setScrollablePercent(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->mScrollablePercent:I

    .line 42
    return-void
.end method

.method public setTextViewLayoutId(I)V
    .locals 0
    .param p1, "textViewLayoutId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 37
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AutoScrollableTabLayout;->mTextViewLayoutId:I

    .line 38
    return-void
.end method
