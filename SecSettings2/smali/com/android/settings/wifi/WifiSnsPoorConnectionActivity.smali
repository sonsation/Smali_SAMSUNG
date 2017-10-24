.class public Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;
.super Landroid/app/Activity;
.source "WifiSnsPoorConnectionActivity.java"


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->DBG:Z

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showSnsPoorConnectionDialog()V
    .locals 12

    .prologue
    const/4 v5, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    const v9, 0x7f0b0d0f

    const/4 v6, 0x1

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040382

    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 73
    .local v4, "view":Landroid/view/View;
    const v7, 0x7f110855

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 75
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 76
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 78
    const-string/jumbo v8, "\n\n"

    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 78
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const v9, 0x7f0b1240

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v2, "snsSettingDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 90
    const v7, 0x7f0b0d10

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 91
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c004d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 94
    .local v1, "radioButtonItems":[Ljava/lang/CharSequence;
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mEnabled:Z

    if-eqz v7, :cond_0

    move v5, v6

    .line 95
    :cond_0
    new-instance v7, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;-><init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)V

    .line 92
    invoke-virtual {v2, v1, v5, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0b121f

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 144
    new-instance v7, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;-><init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)V

    .line 142
    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    new-instance v5, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;-><init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    .line 194
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    .line 195
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 196
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 197
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0, v4, v10, v11}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 198
    sget-boolean v5, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->DBG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "WifiSnsPoorConnectionActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "WifiSnsPoorConnectionActivity appears with SNS Enabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "wifi_poor_connection_warning"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 71
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_2
    return-void

    .line 80
    .end local v1    # "radioButtonItems":[Ljava/lang/CharSequence;
    .end local v2    # "snsSettingDialog":Landroid/app/AlertDialog$Builder;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 81
    const-string/jumbo v8, "\n\n"

    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 81
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const v9, 0x7f0b123f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 84
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 85
    const-string/jumbo v8, "\n\n"

    .line 84
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 85
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const v9, 0x7f0b123e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 84
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 207
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->overridePendingTransition(II)V

    .line 205
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->requestWindowFeature(I)Z

    .line 57
    iput-object p0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->setVisible(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 63
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mEnabled:Z

    .line 66
    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSnsPoorConnectionActivity"

    const-string/jumbo v1, "WifiSnsPoorConnectionActivity created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->showSnsPoorConnectionDialog()V

    .line 54
    return-void

    :cond_1
    move v0, v2

    .line 63
    goto :goto_0
.end method

.method sendGSIMdata(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string/jumbo v2, "feature"

    .line 213
    .local v2, "featureKey":Ljava/lang/String;
    const-string/jumbo v3, "SNSU"

    .line 214
    .local v3, "featureValue":Ljava/lang/String;
    const-string/jumbo v1, "extra"

    .line 216
    .local v1, "dataKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 217
    :cond_0
    return-void

    .line 216
    :cond_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 219
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 220
    .local v4, "msgLog":Landroid/os/Message;
    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v0, "argsLog":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 225
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_2

    .line 226
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 211
    :cond_2
    return-void
.end method
