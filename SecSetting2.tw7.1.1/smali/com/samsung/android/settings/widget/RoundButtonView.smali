.class public Lcom/samsung/android/settings/widget/RoundButtonView;
.super Landroid/widget/Button;
.source "RoundButtonView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBgMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/settings/widget/RoundButtonView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/widget/RoundButtonView;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/widget/RoundButtonView;->mBgMode:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const v0, 0x7f01008f

    const v1, 0x7f1002f5

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/widget/RoundButtonView;->mBgMode:I

    .line 27
    return-void
.end method


# virtual methods
.method public changeBgModeForPSM(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/samsung/android/settings/widget/RoundButtonView;->mBgMode:I

    .line 47
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 48
    const v0, 0x7f02012e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/RoundButtonView;->setBackgroundResource(I)V

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/RoundButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0179

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/RoundButtonView;->setBgColor(I)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/RoundButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0483

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/widget/RoundButtonView;->setTextSize(IF)V

    .line 45
    return-void

    .line 50
    :cond_0
    const v0, 0x7f02015f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/RoundButtonView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setBgColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/RoundButtonView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 33
    .local v0, "d":Landroid/graphics/drawable/RippleDrawable;
    const v2, 0x7f1109f3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 34
    .local v1, "shape":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v1, :cond_0

    .line 35
    iget v2, p0, Lcom/samsung/android/settings/widget/RoundButtonView;->mBgMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/RoundButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0600

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/RoundButtonView;->setTextColor(I)V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/RoundButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d017b

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/RoundButtonView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/RoundButtonView;->setAlpha(F)V

    .line 77
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    return-void

    .line 76
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/RoundButtonView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 58
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 57
    return-void
.end method

.method public setTextWithLowerCase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "upper"    # Ljava/lang/String;
    .param p2, "lower"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 66
    return-void
.end method
