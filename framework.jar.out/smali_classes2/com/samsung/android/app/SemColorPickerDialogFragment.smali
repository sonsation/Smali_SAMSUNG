.class public Lcom/samsung/android/app/SemColorPickerDialogFragment;
.super Landroid/app/DialogFragment;
.source "SemColorPickerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_COLOR:Ljava/lang/String; = "current_color"

.field private static final KEY_RECENTLY_USED_COLORS:Ljava/lang/String; = "recently_used_colors"

.field static final TAG:Ljava/lang/String; = "SemColorPickerDialogFragment"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

.field private mColorPickerDialogView:Landroid/view/View;

.field private mCurrentColor:Ljava/lang/Integer;

.field private mNewColor:Ljava/lang/Integer;

.field private mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

.field private mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;

.field private mRecentlyUsedColors:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;
    .param p2, "currentColor"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/app/SemColorPickerDialogFragment;-><init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;)V

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;I[I)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;
    .param p2, "currentColor"    # I
    .param p3, "recentlyUsedColors"    # [I

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/samsung/android/app/SemColorPickerDialogFragment;-><init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;)V

    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 121
    iput-object p3, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;[I)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;
    .param p2, "recentlyUsedColors"    # [I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/android/app/SemColorPickerDialogFragment;-><init>(Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;)V

    .line 106
    iput-object p2, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 103
    return-void
.end method


# virtual methods
.method public getColorPicker()Lcom/samsung/android/widget/SemColorPicker;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 173
    packed-switch p2, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->saveSelectedColor()V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->getSelectedColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/SemColorPickerDialogFragment$OnColorSetListener;->onColorSet(I)V

    goto :goto_0

    .line 182
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    if-eqz p1, :cond_0

    .line 132
    const-string/jumbo v0, "recently_used_colors"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 133
    const-string/jumbo v0, "current_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 128
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    .local v0, "themeContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900fa

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPickerDialogView:Landroid/view/View;

    .line 146
    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPickerDialogView:Landroid/view/View;

    const v2, 0x102049a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemColorPicker;

    iput-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    .line 148
    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemRecentColorInfo;->setNewColor(Ljava/lang/Integer;)V

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemRecentColorInfo;->saveRecentColorInfo([I)V

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker;->updateRecentColorLayout()V

    .line 159
    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    iget-object v2, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemColorPicker;->setOnColorChangedListener(Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;)V

    .line 161
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1030132

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 162
    iget-object v2, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPickerDialogView:Landroid/view/View;

    .line 161
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 163
    const v2, 0x10405ac

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 164
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 167
    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/widget/SemColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker;->getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->getSelectedColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    .line 197
    const-string/jumbo v0, "recently_used_colors"

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mRecentlyUsedColors:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 198
    const-string/jumbo v0, "current_color"

    iget-object v1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 194
    return-void
.end method

.method public setNewColor(I)V
    .locals 1
    .param p1, "newColor"    # I

    .prologue
    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    .line 216
    return-void
.end method

.method public setOnColorChangedListener(Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;)V
    .locals 0
    .param p1, "changeListener"    # Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/SemColorPickerDialogFragment;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    .line 60
    return-void
.end method
