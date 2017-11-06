.class public Lcom/samsung/android/app/music/common/widget/ResizableTextView;
.super Landroid/widget/TextView;
.source "ResizableTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/EasyModeUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    sget-object v2, Lcom/samsung/android/app/music/R$styleable;->ResizableTextView:[I

    .line 27
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 29
    .local v0, "attributes":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 30
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 31
    .local v1, "textSizeDelta":I
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ResizableTextView;->getTextSize()F

    move-result v3

    int-to-float v4, v1

    add-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/common/widget/ResizableTextView;->setTextSize(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    .end local v0    # "attributes":Landroid/content/res/TypedArray;
    .end local v1    # "textSizeDelta":I
    :cond_0
    return-void

    .line 33
    .restart local v0    # "attributes":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method
