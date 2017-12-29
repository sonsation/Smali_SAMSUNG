.class public Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "ColorBalanceSettingsDialog.java"


# instance fields
.field private mColorBalanceHandler:Landroid/os/Handler;

.field mParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private mRestoreBtn:Landroid/widget/Button;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mColorBalanceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mColorBalanceHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    new-instance v1, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 47
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 48
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x7f0b065c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04007c

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 51
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x7f0b0cef

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 52
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->setupAlert()V

    .line 55
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mRestoreBtn:Landroid/widget/Button;

    .line 56
    iget-object v1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mRestoreBtn:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog$1;-><init>(Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->initialize()V

    .line 39
    return-void
.end method

.method public setColorBalanceHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->mColorBalanceHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method
