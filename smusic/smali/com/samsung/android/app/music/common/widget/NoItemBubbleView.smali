.class public Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;
.super Ljava/lang/Object;
.source "NoItemBubbleView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$OnLazyInitCompleteListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mIsInitialized:Z

.field private mOnLazyInitCompleteListener:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$OnLazyInitCompleteListener;

.field private mParentView:Landroid/view/ViewGroup;

.field private mTopArrow:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parentViewResId"    # I
    .param p3, "anchorViewResId"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401cd

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mContentView:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mContentView:Landroid/view/View;

    const v1, 0x7f1204ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mTopArrow:Landroid/view/View;

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$1;-><init>(Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;Landroid/app/Activity;II)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->initView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mIsInitialized:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;)Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$OnLazyInitCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mOnLazyInitCompleteListener:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$OnLazyInitCompleteListener;

    return-object v0
.end method

.method private initView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/ViewGroup;
    .param p2, "anchorView"    # Landroid/view/View;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mParentView:Landroid/view/ViewGroup;

    .line 67
    iput-object p2, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mAnchorView:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->updateBubbleView()V

    .line 72
    return-void
.end method

.method private updateBubbleView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 81
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 82
    .local v5, "location":[I
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mAnchorView:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 84
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mTopArrow:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v4, v7, 0x2

    .line 85
    .local v4, "halfArrowWidth":I
    aget v7, v5, v9

    iget-object v8, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int v0, v7, v4

    .line 86
    .local v0, "arrowLeft":I
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 88
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mTopArrow:Landroid/view/View;

    .line 89
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 90
    .local v6, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    aget v7, v5, v9

    sub-int v7, v0, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 91
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mTopArrow:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mContentView:Landroid/view/View;

    const v8, 0x7f12013e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, "bubbleBody":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 97
    aget v2, v5, v9

    .line 98
    .local v2, "bubbleLeft":I
    sub-int v7, v0, v4

    if-lt v2, v7, :cond_0

    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 100
    .local v3, "bubbleWidth":I
    sub-int v7, v2, v0

    add-int/2addr v7, v3

    add-int/2addr v7, v4

    invoke-virtual {v1, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 101
    sget-object v7, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resize bubble minimum width : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v3    # "bubbleWidth":I
    :cond_0
    sget-object v7, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateBubbleView bubbleLeft: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " arrowLeft: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " halfArrowWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method public destroyView()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->hide()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 140
    :cond_1
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayoutChange v "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " right: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->updateBubbleView()V

    .line 63
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$2;-><init>(Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mOnLazyInitCompleteListener:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$OnLazyInitCompleteListener;

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
