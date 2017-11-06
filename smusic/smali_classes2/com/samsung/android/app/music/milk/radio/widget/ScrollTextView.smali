.class public Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;,
        Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ScrollTextView"

.field private static final MARQUEE_STOPPED:B


# instance fields
.field private mLayoutWidth:I

.field private mListener:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;

.field private mStart:Z

.field private mTextWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mStart:Z

    .line 25
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mTextWidth:I

    .line 26
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mLayoutWidth:I

    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mStart:Z

    .line 25
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mTextWidth:I

    .line 26
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mLayoutWidth:I

    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mStart:Z

    .line 25
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mTextWidth:I

    .line 26
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mLayoutWidth:I

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public checkNeededScroll()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mLayoutWidth:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->checkNeededScroll(I)Z

    move-result v0

    return v0
.end method

.method public checkNeededScroll(I)Z
    .locals 3
    .param p1, "layoutWidth"    # I

    .prologue
    .line 98
    const-string v0, "ScrollTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNeededScroll : layoutWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTextWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mTextWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", measure width - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-lez p1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mTextWidth:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mTextWidth:I

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setSingleLine(Z)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 47
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setHorizontallyScrolling(Z)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setSelected(Z)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 52
    .local v0, "padding":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mLayoutWidth:I

    .line 53
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;

    if-nez v5, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mMarquee"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 66
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 69
    .local v3, "marquee":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mStatus"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 71
    .local v4, "mf":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v2

    .line 75
    .local v2, "mStatus":B
    iget-boolean v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mStart:Z

    if-eqz v5, :cond_0

    if-nez v2, :cond_0

    .line 76
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setSelected(Z)V

    .line 77
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;

    invoke-interface {v5}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;->onScrollTextEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "mStatus":B
    .end local v3    # "marquee":Ljava/lang/Object;
    .end local v4    # "mf":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$OnScrollText;

    .line 104
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mStart:Z

    .line 90
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setSelected(Z)V

    .line 91
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 115
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 116
    .local v2, "textPaint":Landroid/graphics/Paint;
    const/4 v1, 0x0

    .line 117
    .local v1, "length":I
    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 119
    check-cast p1, Ljava/lang/String;

    .end local p1    # "text":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->mTextWidth:I

    .line 123
    return-void
.end method
