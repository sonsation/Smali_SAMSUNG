.class public Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.source "MilkOKDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;
    }
.end annotation


# instance fields
.field protected mButtonListener:Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

.field protected mCtx:Landroid/content/Context;

.field private mCustomizedView:Landroid/widget/FrameLayout;

.field private mMessage:Landroid/widget/TextView;

.field private mMessageDivider:Landroid/view/View;

.field private mPosBtn:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleContainer:Landroid/widget/RelativeLayout;

.field private mTitleVis:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mTitleVis:I

    return-void
.end method


# virtual methods
.method protected getButtonClickListener()Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mButtonListener:Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    return-object v0
.end method

.method protected getCustomizedView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mCustomizedView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mCustomizedView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getCustomizedView(I)Landroid/view/ViewGroup;
    .locals 4
    .param p1, "layout"    # I

    .prologue
    .line 146
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mCustomizedView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 147
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mCtx:Landroid/content/Context;

    const-string v3, "layout_inflater"

    .line 148
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 149
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mCustomizedView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 151
    .local v1, "v":Landroid/view/ViewGroup;
    return-object v1
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 136
    const v0, 0x7f0400e4

    return v0
.end method

.method protected getMessage()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getMessageDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mMessageDivider:Landroid/view/View;

    return-object v0
.end method

.method protected getPositiveButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mPosBtn:Landroid/widget/Button;

    return-object v0
.end method

.method protected getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getTitleZoneView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mTitleContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onAttach(Landroid/app/Activity;)V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mCtx:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 55
    .local v0, "ret":Landroid/app/Dialog;
    const v1, 0x7f12029a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mTitleContainer:Landroid/widget/RelativeLayout;

    .line 56
    const v1, 0x7f12029c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mTitle:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mTitleVis:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    const v1, 0x7f12029d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mMessage:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f12029f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mMessageDivider:Landroid/view/View;

    .line 62
    const v1, 0x7f1202b1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mPosBtn:Landroid/widget/Button;

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mPosBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 65
    const v1, 0x7f12029e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mCustomizedView:Landroid/widget/FrameLayout;

    .line 66
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 184
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onDestroyView()V

    .line 185
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 72
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method protected setEnablePosButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mPosBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mPosBtn:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mPosBtn:Landroid/widget/Button;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0
.end method

.method public setMessageVisibility(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mMessageDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public setOnButtonClickListener(Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mButtonListener:Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    .line 171
    return-void
.end method

.method public setPosButtonVisibility(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mPosBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mPosBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    :cond_0
    return-void
.end method

.method public setTitleContainerVisibility(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mTitleContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mTitleContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mTitleVis:I

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :cond_0
    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 191
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 192
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 194
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method
