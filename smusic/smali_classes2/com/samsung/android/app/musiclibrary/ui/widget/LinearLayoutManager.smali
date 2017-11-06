.class public Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;
.super Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;
.source "LinearLayoutManager.java"


# instance fields
.field private mScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;->mScrollEnabled:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;->mScrollEnabled:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;->mScrollEnabled:Z

    .line 24
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 29
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;->mScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;->mScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;->mScrollEnabled:Z

    .line 49
    return-void
.end method
