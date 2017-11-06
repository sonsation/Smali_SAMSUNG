.class public Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;
.super Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;
.source "SeslEditTextPreferenceDialogFragment.java"


# static fields
.field private static final SAVE_STATE_TEXT:Ljava/lang/String; = "SeslEditTextPreferenceDialogFragment.text"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getEditTextPreference()Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->getPreference()Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v1, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;-><init>()V

    .line 42
    .local v1, "fragment":Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 43
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v1
.end method


# virtual methods
.method protected needInputMethod()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 86
    sget v1, Lcom/samsung/android/support/sesl/R$id;->edittext_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 87
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 88
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 91
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 68
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 69
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    const v2, 0x1020003

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setId(I)V

    .line 70
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 77
    .local v0, "oldParent":Landroid/view/ViewParent;
    if-eq v0, p1, :cond_2

    .line 78
    if-eqz v0, :cond_1

    .line 79
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "oldParent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 83
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    if-nez p1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->getEditTextPreference()Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v0, "SeslEditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->getEditTextPreference()Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->getEditTextPreference()Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->setText(Ljava/lang/String;)V

    .line 114
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    const-string v0, "SeslEditTextPreferenceDialogFragment.text"

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method
