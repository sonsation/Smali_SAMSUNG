.class public Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;
.super Landroid/app/DialogFragment;
.source "WifiSecSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrpWarningDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1542
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;
    .locals 3
    .param p0, "messageRes"    # I

    .prologue
    .line 1535
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1536
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "messageRes"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1537
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;-><init>()V

    .line 1538
    .local v1, "dialog":Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1539
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "messageRes"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1549
    .local v2, "messageRes":I
    const-string/jumbo v3, "SupportLightNavigationBar|SupportForceTouch|SupportCustomBgColor|SupportNaviBarRemoteView"

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 1550
    .local v1, "mSupportNaviBar":Z
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1552
    const/4 v4, 0x0

    .line 1550
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1554
    new-instance v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;)V

    .line 1553
    const v5, 0x7f0b0512

    .line 1550
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1560
    .local v0, "mDialog":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    .line 1561
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 1562
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    .line 1564
    const/high16 v5, 0x400000

    .line 1562
    or-int/2addr v4, v5

    .line 1565
    const/high16 v5, 0x200000

    .line 1562
    or-int/2addr v4, v5

    .line 1566
    const/high16 v5, 0x1000000

    .line 1562
    or-int/2addr v4, v5

    .line 1561
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1568
    :cond_0
    return-object v0

    .line 1549
    .end local v0    # "mDialog":Landroid/app/Dialog;
    .end local v1    # "mSupportNaviBar":Z
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "mSupportNaviBar":Z
    goto :goto_0
.end method
