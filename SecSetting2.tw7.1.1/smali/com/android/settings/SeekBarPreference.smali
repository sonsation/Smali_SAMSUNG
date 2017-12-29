.class public Lcom/android/settings/SeekBarPreference;
.super Lcom/samsung/android/settingslib/RestrictedPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SeekBarPreference$SavedState;
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
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const v0, 0x1160027

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    sget-object v2, Lcom/android/internal/R$styleable;->ProgressBar:[I

    .line 46
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/SeekBarPreference;->setMax(I)V

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    .line 51
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    const/4 v2, 0x0

    .line 55
    const v3, 0x10900ce

    .line 53
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 56
    .local v1, "layoutResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/settings/SeekBarPreference;->setLayoutResource(I)V

    .line 43
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 129
    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 130
    iget p1, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    .line 132
    :cond_0
    if-gez p1, :cond_1

    .line 133
    const/4 p1, 0x0

    .line 135
    :cond_1
    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 136
    iput p1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/SeekBarPreference;->persistInt(I)Z

    .line 138
    if-eqz p2, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->notifyChanged()V

    .line 128
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/samsung/android/settingslib/RestrictedPreference;->onBindView(Landroid/view/View;)V

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 78
    const v1, 0x1020475

    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 80
    .local v0, "seekBar":Landroid/widget/SeekBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    .line 82
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 83
    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 84
    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 74
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 101
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
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    return v2

    .line 110
    :cond_0
    const v1, 0x1020475

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 111
    .local v0, "seekBar":Landroid/widget/SeekBar;
    if-nez v0, :cond_1

    .line 112
    return v2

    .line 114
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 166
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SeekBarPreference;->mTrackingTouch:Z

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/settings/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    invoke-super {p0, p1}, Lcom/samsung/android/settingslib/RestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 210
    return-void

    :cond_0
    move-object v0, p1

    .line 214
    check-cast v0, Lcom/android/settings/SeekBarPreference$SavedState;

    .line 215
    .local v0, "myState":Lcom/android/settings/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/settings/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 216
    iget v1, v0, Lcom/android/settings/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    .line 217
    iget v1, v0, Lcom/android/settings/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->notifyChanged()V

    .line 206
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 192
    invoke-super {p0}, Lcom/samsung/android/settingslib/RestrictedPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 193
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    return-object v1

    .line 199
    :cond_0
    new-instance v0, Lcom/android/settings/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 200
    .local v0, "myState":Lcom/android/settings/SeekBarPreference$SavedState;
    iget v2, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/android/settings/SeekBarPreference$SavedState;->progress:I

    .line 201
    iget v2, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    iput v2, v0, Lcom/android/settings/SeekBarPreference$SavedState;->max:I

    .line 202
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 94
    return-void

    .line 96
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SeekBarPreference;->mTrackingTouch:Z

    .line 172
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SeekBarPreference;->mTrackingTouch:Z

    .line 179
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/settings/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 177
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 118
    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 119
    iput p1, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->notifyChanged()V

    .line 117
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(IZ)V

    .line 124
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 154
    .local v0, "progress":I
    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/SeekBarPreference;->setProgress(IZ)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
