.class Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarDialogPreference;
.super Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;
.source "SeslSeekBarDialogPreference.java"


# instance fields
.field private final mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    sget v0, Lcom/samsung/android/support/sesl/R$attr;->seslSeekBarDialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarDialogPreference;->createActionButtons()V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarDialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarDialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
.end method

.method protected static getSeekBar(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;
    .locals 1
    .param p0, "dialogView"    # Landroid/view/View;

    .prologue
    .line 75
    sget v0, Lcom/samsung/android/support/sesl/R$id;->seekbar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;

    return-object v0
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 58
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarDialogPreference;->setPositiveButtonText(I)V

    .line 59
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarDialogPreference;->setNegativeButtonText(I)V

    .line 60
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 66
    sget v1, Lcom/samsung/android/support/sesl/R$id;->icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .local v0, "iconView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
