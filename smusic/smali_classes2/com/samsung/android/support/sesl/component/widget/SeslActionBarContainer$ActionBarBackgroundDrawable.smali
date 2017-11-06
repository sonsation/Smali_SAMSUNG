.class Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SeslActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarBackgroundDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$1;

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 363
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-boolean v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 365
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 379
    :cond_0
    :goto_0
    return v0

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-boolean v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsStacked:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 370
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    if-eq v2, v0, :cond_3

    :cond_2
    move v0, v1

    .line 371
    goto :goto_0

    .line 373
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 374
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    if-eq v2, v0, :cond_0

    :cond_4
    move v0, v1

    .line 379
    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 355
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 359
    return-void
.end method
