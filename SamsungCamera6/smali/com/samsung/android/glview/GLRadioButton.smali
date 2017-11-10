.class public Lcom/samsung/android/glview/GLRadioButton;
.super Lcom/samsung/android/glview/GLSelectButton;
.source "GLRadioButton.java"


# instance fields
.field private mRadioButtonId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFII)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFII)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLRadioButton;->mRadioButtonId:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFIII)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIII)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLRadioButton;->mRadioButtonId:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLRadioButton;->mRadioButtonId:I

    return-void
.end method


# virtual methods
.method public getRadioButtonId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLRadioButton;->mRadioButtonId:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLRadioButton;->mSelected:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLRadioButton;->setSelected(Z)V

    iget-object v2, p0, Lcom/samsung/android/glview/GLRadioButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v2, p0, Lcom/samsung/android/glview/GLRadioButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLSelectButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setRadioButtonId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLRadioButton;->mRadioButtonId:I

    return-void
.end method
