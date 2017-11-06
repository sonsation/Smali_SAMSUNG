.class public Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;
.super Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;
.source "SeslEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 163
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 89
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 126
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 123
    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;

    .line 124
    .local v0, "myState":Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 125
    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 105
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 110
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 111
    .local v0, "myState":Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference$SavedState;->text:Ljava/lang/String;

    move-object v1, v0

    .line 112
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->setText(Ljava/lang/String;)V

    .line 95
    return-void

    .line 94
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->shouldDisableDependents()Z

    move-result v1

    .line 68
    .local v1, "wasBlocking":Z
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->mText:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 73
    .local v0, "isBlocking":Z
    if-eq v0, v1, :cond_0

    .line 74
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->notifyDependencyChange(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
