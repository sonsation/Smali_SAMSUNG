.class public Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;
.super Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;
.source "SeslListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/preference/SeslListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslListPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslListPreference_android_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 57
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslListPreference_android_entryValues:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreference_android_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mSummary:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 237
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 239
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 238
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 244
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->getValueIndex()I

    move-result v0

    .line 227
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 173
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mSummary:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 176
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mSummary:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->onDialogClosed(Z)V

    .line 335
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->setValue(Ljava/lang/String;)V

    .line 341
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 253
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    .prologue
    const/4 v1, 0x0

    .line 321
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->onPrepareDialogBuilder(Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;)V

    .line 323
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    invoke-virtual {p1, v1, v1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    .line 329
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 276
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 285
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 282
    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference$SavedState;

    .line 283
    .local v0, "myState":Lcom/samsung/android/support/sesl/component/preference/SeslListPreference$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 284
    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 263
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 264
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 269
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 270
    .local v0, "myState":Lcom/samsung/android/support/sesl/component/preference/SeslListPreference$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    .line 271
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->setValue(Ljava/lang/String;)V

    .line 259
    return-void

    .line 258
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 96
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 124
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mSummary:Ljava/lang/String;

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 151
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mValue:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 152
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mValueSet:Z

    if-nez v2, :cond_1

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mValue:Ljava/lang/String;

    .line 154
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mValueSet:Z

    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->persistString(Ljava/lang/String;)Z

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->notifyChanged()V

    .line 160
    :cond_1
    return-void

    .line 151
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->setValue(Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method
