.class public Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;
.source "MilkYesNoDialog.java"


# instance fields
.field private mBtnContainer:Landroid/view/View;

.field private mNegBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f0400e8

    return v0
.end method

.method protected getNegativeButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->mNegBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 20
    .local v0, "ret":Landroid/app/Dialog;
    const v1, 0x7f1202b6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->mBtnContainer:Landroid/view/View;

    .line 21
    const v1, 0x7f1202b7

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->mNegBtn:Landroid/widget/Button;

    .line 22
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->mNegBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 24
    return-object v0
.end method

.method protected setButtonVisibility(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->mBtnContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->mBtnContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_0
    return-void
.end method
