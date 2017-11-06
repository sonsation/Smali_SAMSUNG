.class public Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;
.super Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;
.source "EmptyMyStationListDialog.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "EmptyMyStationsDialog"


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;->launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
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
    .line 78
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, "launchIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 80
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->onAttach(Landroid/app/Activity;)V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;->mCtx:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    .line 43
    .local v2, "ret":Landroid/app/Dialog;
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;->setDismissAfterSignIn(Z)V

    .line 44
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;->setDismissAfterSignOut(Z)V

    .line 46
    const v4, 0x7f12029c

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 47
    .local v3, "txt":Landroid/widget/TextView;
    const v4, 0x7f0a0351

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 49
    const v4, 0x7f12029d

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "txt":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 50
    .restart local v3    # "txt":Landroid/widget/TextView;
    const v4, 0x7f0a0350

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    .line 53
    .local v0, "negBtn":Landroid/widget/Button;
    const v4, 0x7f0a034f

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 54
    new-instance v4, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog$1;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v1

    .line 63
    .local v1, "posBtn":Landroid/widget/Button;
    const v4, 0x7f0a0352

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 64
    new-instance v4, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog$2;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog$2;-><init>(Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkDialogWithSA;->onDestroy()V

    .line 37
    return-void
.end method
