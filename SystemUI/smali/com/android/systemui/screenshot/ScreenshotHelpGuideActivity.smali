.class public Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;
.super Landroid/app/Activity;
.source "ScreenshotHelpGuideActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showHelpGuideDialog()V
    .locals 4

    .prologue
    .line 26
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f100230

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 27
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f0286

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 28
    const v2, 0x7f040150

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 29
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 30
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 37
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 38
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 25
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;->requestWindowFeature(I)Z

    .line 16
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;->showHelpGuideDialog()V

    .line 13
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;->setVisible(Z)V

    .line 20
    return-void
.end method
