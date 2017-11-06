.class public Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;
.super Lcom/samsung/android/support/sesl/component/app/SeslCompatDialogFragment;
.source "SeslColorPickerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_COLOR:Ljava/lang/String; = "current_color"

.field private static final KEY_RECENTLY_USED_COLORS:Ljava/lang/String; = "recently_used_colors"

.field private static final TAG:Ljava/lang/String; = "SeslColorPickerDialogFragment"


# instance fields
.field private mColorPicker:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

.field private mCurrentColor:Ljava/lang/Integer;

.field private mNewColor:Ljava/lang/Integer;

.field private mOnColorChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

.field private mOnColorSetListener:Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;

.field private mRecentlyUsedColors:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialogFragment;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialogFragment;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 72
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;
    .param p2, "currentColor"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;)V

    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;I[I)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;
    .param p2, "currentColor"    # I
    .param p3, "recentlyUsedColors"    # [I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;)V

    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 116
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;[I)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;
    .param p2, "recentlyUsedColors"    # [I

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;)V

    .line 99
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 100
    return-void
.end method


# virtual methods
.method public getColorPicker()Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 167
    packed-switch p2, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->saveSelectedColor()V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->isUserInputValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;->onColorSet(I)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mOnColorSetListener:Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    .line 175
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->getSelectedColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 174
    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment$OnColorSetListener;->onColorSet(I)V

    goto :goto_0

    .line 181
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 167
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
    .line 124
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    const-string/jumbo v0, "recently_used_colors"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 128
    const-string v0, "current_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 130
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 139
    .local v1, "themeContext":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/sesl/R$layout;->sesl_color_picker_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "colorPickerDialogView":Landroid/view/View;
    sget v2, Lcom/samsung/android/support/sesl/R$id;->sesl_color_picker_content_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    .line 144
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->setNewColor(Ljava/lang/Integer;)V

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    if-eqz v2, :cond_2

    .line 151
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->initRecentColorInfo([I)V

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->updateRecentColorLayout()V

    .line 155
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mOnColorChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->setOnColorChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;)V

    .line 157
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v3

    const v4, 0x1030132

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 159
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/sesl/R$string;->sesl_picker_done:I

    .line 160
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 161
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 157
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mColorPicker:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    .line 195
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->getSelectedColor()Ljava/lang/Integer;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    .line 196
    const-string/jumbo v0, "recently_used_colors"

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 197
    const-string v0, "current_color"

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 198
    return-void
.end method

.method public setNewColor(I)V
    .locals 1
    .param p1, "newColor"    # I

    .prologue
    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    .line 217
    return-void
.end method

.method public setOnColorChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;)V
    .locals 0
    .param p1, "changeListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslColorPickerDialogFragment;->mOnColorChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

    .line 54
    return-void
.end method
