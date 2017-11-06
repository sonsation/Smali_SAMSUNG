.class public Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private mLayoutTop:I

.field private mOffsetTop:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    .line 14
    return-void
.end method

.method private updateOffsets()V
    .locals 3

    .prologue
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->mOffsetTop:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->mOffsetTop:I

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->mLayoutTop:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public getTopAndBottomOffset()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->mOffsetTop:I

    return v0
.end method

.method public onViewLayout()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->mLayoutTop:I

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->updateOffsets()V

    .line 19
    return-void
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 30
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->mOffsetTop:I

    if-eq v0, p1, :cond_0

    .line 31
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->mOffsetTop:I

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->updateOffsets()V

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
