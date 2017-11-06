.class public Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;
.super Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;
.source "ConfirmRemoveMyStationsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$ConfirmRemoveMyStationsListener;
    }
.end annotation


# static fields
.field public static final DELETE_STATION_ID_LIST_TAG:Ljava/lang/String; = "DELETE_STATION_ID_LIST_TAG"

.field public static final LOG_TAG:Ljava/lang/String; = "ConfirmRemoveMyStationsDialog"


# instance fields
.field private mDeleteStationIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLstnr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$ConfirmRemoveMyStationsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->mLstnr:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->mDeleteStationIDs:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 28
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v4

    .line 30
    .local v4, "ret":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->getTitle()Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0a0283

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 34
    const-string v5, "DELETE_STATION_ID_LIST_TAG"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->mDeleteStationIDs:Ljava/util/List;

    .line 37
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0284

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->mDeleteStationIDs:Ljava/util/List;

    .line 39
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 38
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "format":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->getMessage()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object v2

    .line 43
    .local v2, "negBtn":Landroid/widget/Button;
    const v5, 0x7f0a0304

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 44
    new-instance v5, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$1;

    invoke-direct {v5, p0, v4}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v3

    .line 56
    .local v3, "posBtn":Landroid/widget/Button;
    const v5, 0x7f0a040e

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 57
    new-instance v5, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$2;

    invoke-direct {v5, p0, v4}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$2;-><init>(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->setRetainInstance(Z)V

    .line 69
    return-object v4
.end method

.method public setConfirmContainPersonalStationListener(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$ConfirmRemoveMyStationsListener;)V
    .locals 1
    .param p1, "lstnr"    # Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$ConfirmRemoveMyStationsListener;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->mLstnr:Ljava/lang/ref/WeakReference;

    .line 74
    return-void
.end method
