.class public abstract Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;
.super Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;
.source "SeslPreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field protected static final ARG_KEY:Ljava/lang/String; = "key"

.field private static final SAVE_STATE_ICON:Ljava/lang/String; = "SeslPreferenceDialogFragment.icon"

.field private static final SAVE_STATE_LAYOUT:Ljava/lang/String; = "SeslPreferenceDialogFragment.layout"

.field private static final SAVE_STATE_MESSAGE:Ljava/lang/String; = "SeslPreferenceDialogFragment.message"

.field private static final SAVE_STATE_NEGATIVE_TEXT:Ljava/lang/String; = "SeslPreferenceDialogFragment.negativeText"

.field private static final SAVE_STATE_POSITIVE_TEXT:Ljava/lang/String; = "SeslPreferenceDialogFragment.positiveText"

.field private static final SAVE_STATE_TITLE:Ljava/lang/String; = "SeslPreferenceDialogFragment.title"


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDialogLayoutRes:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;-><init>()V

    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 208
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 209
    return-void
.end method


# virtual methods
.method public getPreference()Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;
    .locals 4

    .prologue
    .line 174
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    if-nez v2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->getTargetFragment()Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference$TargetFragment;

    .line 178
    .local v0, "fragment":Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference$TargetFragment;
    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    .line 180
    .end local v0    # "fragment":Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference$TargetFragment;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    return-object v2
.end method

.method protected needInputMethod()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 237
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, "dialogMessageView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 240
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 241
    .local v1, "message":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 243
    .local v2, "newVisibility":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 244
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 245
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_0
    const/4 v2, 0x0

    .line 251
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 252
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "newVisibility":I
    :cond_2
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 259
    iput p2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mWhichButtonClicked:I

    .line 260
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->getTargetFragment()Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v5

    .line 80
    .local v5, "rawFragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    instance-of v6, v5, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference$TargetFragment;

    if-nez v6, :cond_0

    .line 81
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Target fragment must implement TargetFragment interface"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v2, v5

    .line 85
    check-cast v2, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference$TargetFragment;

    .line 88
    .local v2, "fragment":Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference$TargetFragment;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "key"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "key":Ljava/lang/String;
    if-nez p1, :cond_4

    .line 90
    invoke-interface {v2, v4}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    .line 91
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 92
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 93
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 94
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 95
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getDialogLayoutResource()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogLayoutRes:I

    .line 97
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 98
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    instance-of v6, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_3

    .line 99
    :cond_1
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 119
    :cond_2
    :goto_0
    return-void

    .line 101
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 102
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 101
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v3, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 109
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string v6, "SeslPreferenceDialogFragment.title"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 110
    const-string v6, "SeslPreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 111
    const-string v6, "SeslPreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 112
    const-string v6, "SeslPreferenceDialogFragment.message"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 113
    const-string v6, "SeslPreferenceDialogFragment.layout"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogLayoutRes:I

    .line 114
    const-string v6, "SeslPreferenceDialogFragment.icon"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 115
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 116
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v2

    .line 139
    .local v2, "context":Landroid/content/Context;
    const/4 v4, -0x2

    iput v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mWhichButtonClicked:I

    .line 141
    new-instance v4, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    invoke-direct {v4, v2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 142
    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 143
    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 144
    invoke-virtual {v4, v5, p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {v4, v5, p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    move-result-object v0

    .line 147
    .local v0, "builder":Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 148
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 150
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    .line 155
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->onPrepareDialogBuilder(Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;)V

    .line 158
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->create()Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;

    move-result-object v3

    .line 159
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->needInputMethod()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->requestInputMethod(Landroid/app/Dialog;)V

    .line 163
    :cond_0
    return-object v3

    .line 152
    .end local v3    # "dialog":Landroid/app/Dialog;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    goto :goto_0
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 220
    iget v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogLayoutRes:I

    .line 221
    .local v1, "resId":I
    if-nez v1, :cond_0

    .line 226
    :goto_0
    return-object v2

    .line 225
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 226
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public abstract onDialogClosed(Z)V
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 265
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->onDialogClosed(Z)V

    .line 266
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    .prologue
    .line 190
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    const-string v0, "SeslPreferenceDialogFragment.title"

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 126
    const-string v0, "SeslPreferenceDialogFragment.positiveText"

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 127
    const-string v0, "SeslPreferenceDialogFragment.negativeText"

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 128
    const-string v0, "SeslPreferenceDialogFragment.message"

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 129
    const-string v0, "SeslPreferenceDialogFragment.layout"

    iget v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogLayoutRes:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "SeslPreferenceDialogFragment.icon"

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    :cond_0
    return-void
.end method
