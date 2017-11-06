.class public Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;
.super Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;
.source "ConfirmRemovePersonalStationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$ConfirmRemovePersonalStationListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ConfirmRemovePersonalStationDialog"


# instance fields
.field private mLstnr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$ConfirmRemovePersonalStationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;->mLstnr:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    .line 30
    .local v2, "ret":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;->getTitle()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a0283

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;->getMessage()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a0282

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    .line 34
    .local v0, "negBtn":Landroid/widget/Button;
    const v3, 0x7f0a0304

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 35
    new-instance v3, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$1;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v1

    .line 57
    .local v1, "posBtn":Landroid/widget/Button;
    const v3, 0x7f0a040e

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 58
    new-instance v3, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$2;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$2;-><init>(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;->setRetainInstance(Z)V

    .line 80
    return-object v2
.end method

.method public setConfirmRemovePersonalStationListener(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$ConfirmRemovePersonalStationListener;)V
    .locals 1
    .param p1, "lstnr"    # Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$ConfirmRemovePersonalStationListener;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;->mLstnr:Ljava/lang/ref/WeakReference;

    .line 86
    return-void
.end method
