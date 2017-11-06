.class public Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;
.super Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;
.source "MilkMaximumMyStationReachedDialog.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MaximumMyStationsReachedDialog"

.field public static final MAX_MY_STATIONS_COUNT:I = 0x32


# instance fields
.field private mListner:Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->mListner:Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    return-object v0
.end method

.method public static getMyStationLimit(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x32

    .line 98
    if-eqz p0, :cond_1

    .line 99
    const-string v2, "com.samsung.radio.start_client.mystation_limit"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, "limit":I
    if-gtz v0, :cond_0

    move v0, v1

    .line 108
    .end local v0    # "limit":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v0, "launchIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->onAttach(Landroid/app/Activity;)V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->mCtx:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 43
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    .line 45
    .local v2, "ret":Landroid/app/Dialog;
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->setDismissAfterSignIn(Z)V

    .line 46
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->setDismissAfterSignOut(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->getTitle()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0a02f2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->getMessage()Landroid/widget/TextView;

    move-result-object v3

    .line 51
    .local v3, "txt":Landroid/widget/TextView;
    const v4, 0x7f0a02f1

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->mCtx:Landroid/content/Context;

    .line 52
    invoke-static {v7}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->getMyStationLimit(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 51
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v1

    .line 55
    .local v1, "posBtn":Landroid/widget/Button;
    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 56
    new-instance v4, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$1;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    .line 72
    .local v0, "negBtn":Landroid/widget/Button;
    const v4, 0x7f0a0304

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 73
    new-instance v4, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$2;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$2;-><init>(Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->onDestroy()V

    .line 95
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->onDetach()V

    .line 90
    return-void
.end method

.method public setOnDialogClickListener(Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->mListner:Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    .line 113
    return-void
.end method
