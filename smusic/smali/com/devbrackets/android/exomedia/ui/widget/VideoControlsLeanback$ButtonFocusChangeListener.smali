.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;
.super Ljava/lang/Object;
.source "VideoControlsLeanback.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ButtonFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHorizontalDelta(Landroid/view/View;)I
    .locals 6
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 399
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 400
    .local v1, "position":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 402
    aget v2, v1, v5

    .line 403
    .local v2, "viewX":I
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v3, v3, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rippleIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 405
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v3, v3, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rippleIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 406
    .local v0, "newRippleX":I
    aget v3, v1, v5

    sub-int v3, v0, v3

    return v3
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 389
    if-nez p2, :cond_0

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;->getHorizontalDelta(Landroid/view/View;)I

    move-result v0

    .line 395
    .local v0, "xDelta":I
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rippleIndicator:Landroid/widget/ImageView;

    new-instance v2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-direct {v2, v3, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
