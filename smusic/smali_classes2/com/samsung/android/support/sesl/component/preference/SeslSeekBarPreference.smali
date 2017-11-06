.class Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;
.super Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
.source "SeslSeekBarPreference.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    sget v0, Lcom/samsung/android/support/sesl/R$attr;->seslSeekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_max:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mMax:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->setMax(I)V

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBarPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslSeekBarPreference_android_layout:I

    sget v3, Lcom/samsung/android/support/sesl/R$layout;->sesl_preference_widget_seekbar:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 52
    .local v1, "layoutResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->setLayoutResource(I)V

    .line 55
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 120
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 121
    iget p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mMax:I

    .line 123
    :cond_0
    if-gez p1, :cond_1

    .line 124
    const/4 p1, 0x0

    .line 126
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 127
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mProgress:I

    .line 128
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->persistInt(I)Z

    .line 129
    if-eqz p2, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->notifyChanged()V

    .line 133
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onBindViewHolder(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;)V

    .line 72
    sget v1, Lcom/samsung/android/support/sesl/R$id;->seekbar:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;

    .line 73
    .local v0, "seekBar":Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;
    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->setOnSeekBarChangeListener(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 74
    iget v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->setMax(I)V

    .line 75
    iget v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->setProgress(I)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->setEnabled(Z)V

    .line 77
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    sget v2, Lcom/samsung/android/support/sesl/R$id;->seekbar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;

    .line 102
    .local v0, "seekBar":Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onProgressChanged(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 157
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->syncProgress(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;)V

    .line 160
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 210
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 205
    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;

    .line 206
    .local v0, "myState":Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 207
    iget v1, v0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mProgress:I

    .line 208
    iget v1, v0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mMax:I

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 183
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 184
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 190
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 191
    .local v0, "myState":Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;
    iget v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;->progress:I

    .line 192
    iget v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mMax:I

    iput v2, v0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 193
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->setProgress(I)V

    .line 88
    return-void

    .line 86
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .line 87
    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mTrackingTouch:Z

    .line 165
    return-void
.end method

.method public onStopTrackingTouch(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mTrackingTouch:Z

    .line 170
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->syncProgress(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;)V

    .line 173
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 109
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 110
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mMax:I

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->notifyChanged()V

    .line 113
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->setProgress(IZ)V

    .line 117
    return-void
.end method

.method syncProgress(Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->getProgress()I

    move-result v0

    .line 145
    .local v0, "progress":I
    iget v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->setProgress(IZ)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslSeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSeekBar;->setProgress(I)V

    goto :goto_0
.end method
