.class public Lcom/samsung/android/settings/SettingsReceiverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsReceiverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private isCMCCBlock:Z

.field private mAlwaysCheck:Landroid/widget/CheckBox;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 91
    packed-switch p2, :pswitch_data_0

    .line 90
    return-void

    .line 93
    :pswitch_0
    const-string/jumbo v2, "SettingsReceiverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAlwaysCheck : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/SettingsReceiverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v2, p0, Lcom/samsung/android/settings/SettingsReceiverActivity;->isCMCCBlock:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/SettingsReceiverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const-string/jumbo v2, "NoUSBPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/SettingsReceiverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "pref_dont_ask_again"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsReceiverActivity;->finish()V

    .line 101
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "cmcc_block_usb"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/SettingsReceiverActivity;->isCMCCBlock:Z

    .line 54
    const-string/jumbo v4, "NoUSBPreference"

    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/settings/SettingsReceiverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 55
    .local v3, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "SettingsReceiverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PREF_DONT_ASK_AGAIN : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "pref_dont_ask_again"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-boolean v4, p0, Lcom/samsung/android/settings/SettingsReceiverActivity;->isCMCCBlock:Z

    if-nez v4, :cond_0

    const-string/jumbo v4, "pref_dont_ask_again"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsReceiverActivity;->finish()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/SettingsReceiverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 61
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b11b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 63
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/SettingsReceiverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/samsung/android/settings/SettingsReceiverActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    iget-object v4, p0, Lcom/samsung/android/settings/SettingsReceiverActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0401eb

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 67
    iget-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f1102bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/samsung/android/settings/SettingsReceiverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    .line 68
    iget-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f110568

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, "mNoUSB":Landroid/widget/TextView;
    const-string/jumbo v4, "dev.kiessupport"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "kies":Ljava/lang/String;
    const-string/jumbo v4, "SettingsReceiverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dev.kiessupport is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const v4, 0x7f0b0efa

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-boolean v4, p0, Lcom/samsung/android/settings/SettingsReceiverActivity;->isCMCCBlock:Z

    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0a61

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 80
    const v4, 0x7f0b0a62

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v4, p0, Lcom/samsung/android/settings/SettingsReceiverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 84
    :cond_1
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsReceiverActivity;->setupAlert()V

    .line 49
    return-void
.end method
