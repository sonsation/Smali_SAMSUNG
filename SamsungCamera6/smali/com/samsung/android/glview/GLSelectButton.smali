.class public Lcom/samsung/android/glview/GLSelectButton;
.super Lcom/samsung/android/glview/GLButton;
.source "GLSelectButton.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFII)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFIII)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;II)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;IIII)V

    return-void
.end method


# virtual methods
.method public getSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    return v0
.end method

.method public getTtsString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mContentDescription:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->isTimeInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/glview/GLUtil;->convertTimeInfoForTTS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-nez v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/glview/R$string;->button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mSubTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v1, :cond_6

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/glview/R$string;->tts_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isDim()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/glview/R$string;->disable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/glview/R$string;->tts_not_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected onDraw()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLRectangle;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mShowText:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->draw([FLandroid/graphics/Rect;)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressed:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v0, :cond_a

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mShowHighlight:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mDrawHighlight:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mShowHighlight:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mDrawHighlight:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlightFadeOut:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mDrawHighlight:Z

    goto/16 :goto_1
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLButton;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLSelectButton;->setPressed(Z)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mMute:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getTtsString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isClickable()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isDim()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressed:Z

    if-eqz v2, :cond_2

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressed:Z

    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLSelectButton;->setDrawHighlight(Z)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLSelectButton;->setDrawRippleEffect(Z)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/glview/GLSelectButton;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->resetDrag()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mMute:Z

    if-nez v2, :cond_5

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getTtsString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto :goto_1

    :cond_8
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public setSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    :cond_0
    return-void
.end method
