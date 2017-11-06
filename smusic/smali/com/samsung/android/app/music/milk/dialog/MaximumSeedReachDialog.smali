.class public Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;
.source "MaximumSeedReachDialog.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MaximumSeedReachDialog"

.field private static final MAX_SEEDS:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;->getButtonClickListener()Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;->getButtonClickListener()Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    .line 27
    .local v1, "ret":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;->getTitle()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a02f3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;->getMessage()Landroid/widget/TextView;

    move-result-object v2

    .line 29
    .local v2, "txt":Landroid/widget/TextView;
    const v3, 0x7f0a02f4

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v0

    .line 32
    .local v0, "posBtn":Landroid/widget/Button;
    const v3, 0x7f0a040e

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 33
    new-instance v3, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-object v1
.end method
