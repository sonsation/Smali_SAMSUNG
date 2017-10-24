.class public Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "ColorBalanceSettingsDialog.java"


# instance fields
.field mParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private mRestoreBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    new-instance v1, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 44
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 45
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x7f0b0554

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040075

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 48
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x7f0b0b07

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 49
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->setupAlert()V

    .line 52
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mRestoreBtn:Landroid/widget/Button;

    .line 53
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mRestoreBtn:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog$1;-><init>(Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->initialize()V

    .line 36
    return-void
.end method
