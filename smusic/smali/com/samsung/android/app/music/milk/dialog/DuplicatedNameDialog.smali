.class public Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;
.source "DuplicatedNameDialog.java"


# static fields
.field private static final DESCRIPTION_KEY:Ljava/lang/String; = "description"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;-><init>()V

    .line 22
    .local v1, "f":Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v2, "description"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;->setArguments(Landroid/os/Bundle;)V

    .line 26
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    .line 32
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;->getTitle()Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;->getMessage()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v2

    .line 39
    .local v2, "posBtn":Landroid/widget/Button;
    const v3, 0x7f0a040e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 40
    new-instance v3, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-object v1
.end method
