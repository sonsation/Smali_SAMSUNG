.class public Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;
.super Landroid/app/Activity;
.source "WifiSnsPoorConnectionVzwActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$1;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiSnsPoorDialogListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->DBG:Z

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 228
    new-instance v0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$1;-><init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mWifiSnsPoorDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    return-void
.end method

.method private showSnsPoorConnectionDialog()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const v10, 0x7f0b15d0

    const v9, 0x7f0b15cd

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f0403d4

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 79
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f1109ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 80
    .local v2, "textView":Landroid/widget/TextView;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_ADAPTIVE_WIFI"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 81
    const-string/jumbo v4, "Smart Network Switch"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Wifi_ConfigAutoWifiNaming"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    .line 80
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 82
    .local v0, "adaptiveMode":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f0b15ca

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 84
    const-string/jumbo v7, "\n\n"

    .line 83
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 84
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f0b15cb

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, "snsSettingDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_7

    .line 102
    const v4, 0x7f0b15cc

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 103
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0b08df

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mWifiSnsPoorDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mWifiSnsPoorDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    :goto_2
    new-instance v4, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$2;-><init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    .line 218
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 219
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 222
    sget-boolean v4, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiSnsPoorConnectionVzwActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WifiSnsPoorConnectionVzwActivity appears with SNS Enabled : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mEnabled:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_poor_connection_warning"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 77
    :cond_2
    return-void

    .end local v0    # "adaptiveMode":Ljava/lang/Boolean;
    .end local v1    # "snsSettingDialog":Landroid/app/AlertDialog$Builder;
    :cond_3
    move v4, v6

    .line 81
    goto/16 :goto_0

    :cond_4
    move v4, v5

    .line 80
    goto/16 :goto_0

    .line 85
    .restart local v0    # "adaptiveMode":Ljava/lang/Boolean;
    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 87
    const-string/jumbo v7, "\n\n"

    .line 86
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 87
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f0b15ce

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 86
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 88
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    const-string/jumbo v7, "\n\n"

    .line 89
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f0b15cf

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 107
    .restart local v1    # "snsSettingDialog":Landroid/app/AlertDialog$Builder;
    :cond_7
    const v4, 0x7f0b15b5

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 108
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0b15d1

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mWifiSnsPoorDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mWifiSnsPoorDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 272
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->overridePendingTransition(II)V

    .line 270
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->requestWindowFeature(I)Z

    .line 63
    iput-object p0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 66
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->setVisible(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 69
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mEnabled:Z

    .line 72
    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSnsPoorConnectionVzwActivity"

    const-string/jumbo v1, "WifiSnsPoorConnectionVzwActivity created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->showSnsPoorConnectionDialog()V

    .line 60
    return-void

    :cond_1
    move v0, v2

    .line 69
    goto :goto_0
.end method

.method sendGSIMdata(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string/jumbo v2, "feature"

    .line 278
    .local v2, "featureKey":Ljava/lang/String;
    const-string/jumbo v3, "SNSU"

    .line 279
    .local v3, "featureValue":Ljava/lang/String;
    const-string/jumbo v1, "extra"

    .line 281
    .local v1, "dataKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 282
    :cond_0
    return-void

    .line 281
    :cond_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 284
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 285
    .local v4, "msgLog":Landroid/os/Message;
    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    .line 286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, "argsLog":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_2

    .line 291
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 276
    :cond_2
    return-void
.end method
