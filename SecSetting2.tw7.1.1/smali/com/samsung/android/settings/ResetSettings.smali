.class public Lcom/samsung/android/settings/ResetSettings;
.super Lcom/android/settings/InstrumentedFragment;
.source "ResetSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ResetSettings$1;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mResetSoftButton:Landroid/widget/Button;

.field private final mResetSoftListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/ResetSettings;I)Z
    .locals 1
    .param p1, "request"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ResetSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/ResetSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettings;->showFinalConfirmation()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mResetSoftButton:Landroid/widget/Button;

    .line 95
    new-instance v0, Lcom/samsung/android/settings/ResetSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ResetSettings$1;-><init>(Lcom/samsung/android/settings/ResetSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    .line 35
    return-void
.end method

.method private establishResetState()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f110708

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mResetSoftButton:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mResetSoftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/ResetSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 2
    .param p1, "request"    # I

    .prologue
    .line 48
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 50
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, p1, v1}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 104
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v2, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 106
    const v3, 0x7f0b0db4

    const/4 v6, 0x0

    move-object v5, v4

    .line 105
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 103
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f039d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 57
    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    .line 58
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 59
    return-void

    .line 63
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 54
    :goto_0
    :pswitch_0
    return-void

    .line 65
    :pswitch_1
    if-ne p2, v1, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettings;->showFinalConfirmation()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettings;->establishResetState()V

    goto :goto_0

    .line 72
    :pswitch_2
    if-ne p2, v1, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettings;->showFinalConfirmation()V

    goto :goto_0

    .line 75
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettings;->establishResetState()V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const v0, 0x7f04027b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettings;->establishResetState()V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    return-object v0
.end method
