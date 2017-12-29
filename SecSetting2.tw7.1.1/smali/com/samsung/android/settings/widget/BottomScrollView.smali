.class public Lcom/samsung/android/settings/widget/BottomScrollView;
.super Landroid/widget/ScrollView;
.source "BottomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/BottomScrollView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/BottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/BottomScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/BottomScrollView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 42
    .local v0, "diff":I
    if-gtz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/widget/BottomScrollView;->mListener:Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/samsung/android/settings/widget/BottomScrollView;->mListener:Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;

    invoke-interface {v2}, Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;->onBottomReached()V

    .line 37
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/BottomScrollView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/BottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 27
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/BottomScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/BottomScrollView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 29
    .local v0, "diff":I
    if-gtz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/widget/BottomScrollView;->mListener:Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;

    if-eqz v2, :cond_0

    .line 30
    iget-object v2, p0, Lcom/samsung/android/settings/widget/BottomScrollView;->mListener:Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;

    invoke-interface {v2}, Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;->onBottomReached()V

    .line 33
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 25
    return-void
.end method

.method public setOnBottomReachedListener(Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;)V
    .locals 0
    .param p1, "onBottomReachedListener"    # Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/android/settings/widget/BottomScrollView;->mListener:Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;

    .line 51
    return-void
.end method
