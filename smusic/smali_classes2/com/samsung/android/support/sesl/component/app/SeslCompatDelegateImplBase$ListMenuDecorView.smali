.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ListMenuDecorView;
.super Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;
.source "SeslCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListMenuDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2699
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ListMenuDecorView;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    .line 2700
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2701
    return-void
.end method

.method private isOutOfBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x5

    .line 2729
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ListMenuDecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ListMenuDecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ListMenuDecorView;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2706
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2705
    :goto_0
    return v0

    .line 2706
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2711
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2712
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 2713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 2714
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2715
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ListMenuDecorView;->isOutOfBounds(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2716
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ListMenuDecorView;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->closePanel(I)V

    .line 2717
    const/4 v3, 0x1

    .line 2720
    .end local v1    # "x":I
    .end local v2    # "y":I
    :goto_0
    return v3

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 2725
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ListMenuDecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ListMenuDecorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2726
    return-void
.end method
