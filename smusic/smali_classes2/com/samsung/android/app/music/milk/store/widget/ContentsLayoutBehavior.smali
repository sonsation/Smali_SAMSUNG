.class public Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;
.super Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;
.source "ContentsLayoutBehavior.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExpandableContentView:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 76
    instance-of v0, p3, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 9
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 36
    .local v0, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    instance-of v6, v0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;

    if-eqz v6, :cond_1

    move-object v2, v0

    .line 37
    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;

    .line 38
    .local v2, "headerBehavior":Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getTopAndBottomOffset()I

    move-result v3

    .line 39
    .local v3, "headerOffset":I
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v1, v6, v3

    .line 40
    .local v1, "contentsOffset":I
    instance-of v6, p2, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-eqz v6, :cond_1

    move-object v6, p2

    .line 41
    check-cast v6, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->mExpandableContentView:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 43
    .local v4, "paddingTop":I
    instance-of v6, p3, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    if-eqz v6, :cond_0

    .line 44
    check-cast p3, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    .end local p3    # "dependency":Landroid/view/View;
    invoke-virtual {p3}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->getScrollRange()I

    move-result v5

    .line 45
    .local v5, "range":I
    if-eq v4, v5, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDependentViewChanged. paddingTop changed from - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", to - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {p2, v6, v5, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    .end local v5    # "range":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->setTopAndBottomOffset(I)Z

    .line 53
    .end local v1    # "contentsOffset":I
    .end local v2    # "headerBehavior":Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;
    .end local v3    # "headerOffset":I
    .end local v4    # "paddingTop":I
    :cond_1
    const/4 v6, 0x0

    return v6
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I

    .prologue
    .line 71
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->mExpandableContentView:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->mTempTopBottomOffset:I

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->mExpandableContentView:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;->clipExpandableTop(I)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->onTopOffsetChanged(I)V

    .line 65
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 63
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->mTempTopBottomOffset:I

    goto :goto_0
.end method
