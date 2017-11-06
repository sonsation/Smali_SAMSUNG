.class public Lcom/samsung/android/app/music/milk/store/widget/MusicVideoViewPager;
.super Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;
.source "MusicVideoViewPager.java"


# static fields
.field private static final MUSIC_VIDEO_IMAGE_RATIO:F = 0.75f


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 22
    .line 23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/MusicVideoViewPager;->mColumn:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/MusicVideoViewPager;->mColumnSpace:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/MusicVideoViewPager;->mColumn:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 25
    .local v0, "imageHeight":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/MusicVideoViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01fb

    .line 26
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 28
    .local v1, "textHeight":I
    add-int v2, v0, v1

    .line 29
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 31
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->onMeasure(II)V

    .line 32
    return-void
.end method
