.class public abstract Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;
.super Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
.source "SeslDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference$TargetFragment;
    }
.end annotation


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslDialogPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslDialogPreference_android_dialogTitle:I

    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslDialogPreference_android_dialogTitle:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/content/res/SeslTypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 66
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 72
    :cond_0
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslDialogPreference_android_dialogMessage:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 75
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslDialogPreference_android_dialogIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 78
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslDialogPreference_android_positiveButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 81
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslDialogPreference_android_negativeButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 84
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslDialogPreference_android_dialogLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogLayoutResId:I

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method


# virtual methods
.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 275
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, "dialogMessageView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 279
    .local v1, "message":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 281
    .local v2, "newVisibility":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 282
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 283
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    const/4 v2, 0x0

    .line 289
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 290
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "newVisibility":I
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getPreferenceManager()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->showDialog(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V

    .line 264
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .prologue
    .line 313
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    .prologue
    .line 303
    return-void
.end method

.method public setDialogIcon(I)V
    .locals 1
    .param p1, "dialogIconRes"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 174
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dialogIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 164
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .param p1, "dialogLayoutResId"    # I

    .prologue
    .line 248
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogLayoutResId:I

    .line 249
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1
    .param p1, "dialogMessageResId"    # I

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 139
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .param p1, "dialogTitleResId"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 109
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .param p1, "negativeButtonTextResId"    # I

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 220
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .param p1, "positiveButtonTextResId"    # I

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 200
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 192
    return-void
.end method
