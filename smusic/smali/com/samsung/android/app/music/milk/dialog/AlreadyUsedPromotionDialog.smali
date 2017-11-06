.class public Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;
.source "AlreadyUsedPromotionDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->getButtonClickListener()Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->getButtonClickListener()Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 25
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a027d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->getMessage()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0328

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0a0323

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0a0304

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$2;-><init>(Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-object v0
.end method
