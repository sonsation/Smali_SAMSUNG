.class public Lcom/android/settings/wifi/WifiSnsExceptionActivity;
.super Landroid/app/Activity;
.source "WifiSnsExceptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;,
        Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsResultReported:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSsid:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

.field mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private netId:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/wifi/WifiSnsExceptionActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mIsResultReported:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mIsResultReported:Z

    .line 69
    new-instance v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;-><init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    new-instance v0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;-><init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 56
    return-void
.end method

.method private showWifiSnsExceptionDialog()V
    .locals 12

    .prologue
    const v11, 0x7f0b15be

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0403d4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 166
    .local v3, "view":Landroid/view/View;
    const v6, 0x7f1109ab

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 167
    .local v2, "textView":Landroid/widget/TextView;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_ADAPTIVE_WIFI"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 168
    const-string/jumbo v6, "Smart Network Switch"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Wifi_ConfigAutoWifiNaming"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 169
    .local v0, "adaptiveMode":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v9, v8, v4

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v9, v8, v5

    const v5, 0x7f0b15b6

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 171
    const-string/jumbo v6, "\n\n"

    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 171
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0b15b7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 172
    const-string/jumbo v6, "\n\n"

    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 172
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0b15b8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    .local v1, "newDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 186
    if-nez v0, :cond_8

    const v5, 0x7f0b15b9

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 190
    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 191
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0b15bf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0b15c0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    :goto_3
    new-instance v5, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;-><init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    .line 230
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    .line 231
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 232
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 233
    const-string/jumbo v4, "WifiSnsExceptionActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WifiSnsExceptionActivity appears with SSID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 164
    :cond_2
    return-void

    .end local v0    # "adaptiveMode":Z
    .end local v1    # "newDialog":Landroid/app/AlertDialog$Builder;
    :cond_3
    move v0, v5

    .line 168
    goto/16 :goto_0

    :cond_4
    move v0, v4

    .line 167
    goto/16 :goto_0

    .line 173
    .restart local v0    # "adaptiveMode":Z
    :cond_5
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v9, v8, v4

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v9, v8, v5

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v5, v8, v10

    invoke-virtual {v7, v11, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 175
    const-string/jumbo v6, "\n\n"

    .line 174
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 175
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0b15bd

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 176
    :cond_6
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v9, v8, v4

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v9, v8, v5

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v5, v8, v10

    invoke-virtual {v7, v11, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 178
    const-string/jumbo v6, "\n\n"

    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 178
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0b15bc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 179
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v9, v8, v4

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v9, v8, v5

    const v5, 0x7f0b15ba

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 181
    const-string/jumbo v6, "\n\n"

    .line 180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 181
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0b15bb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 187
    .restart local v1    # "newDialog":Landroid/app/AlertDialog$Builder;
    :cond_8
    const v5, 0x7f0b15b5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 194
    :cond_9
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0b1592

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0b1598

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 161
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->overridePendingTransition(II)V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->requestWindowFeature(I)Z

    .line 96
    iput-object p0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    .line 97
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 99
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->setVisible(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "netId"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    .line 104
    const-string/jumbo v3, "SSID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    .line 106
    iget v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    const-string/jumbo v4, "<unknown ssid>"

    if-ne v3, v4, :cond_1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string/jumbo v3, "AP"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    .line 110
    :cond_2
    const-string/jumbo v3, "WifiSnsExceptionActivity"

    const-string/jumbo v4, "WifiSnsExceptionActivity created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v1, "mFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->showWifiSnsExceptionDialog()V

    .line 120
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, "systemCloseIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 127
    sget-boolean v4, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiSnsExceptionActivity"

    const-string/jumbo v5, "WifiSnsExceptionActivity onUserLeaveHint"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mIsResultReported:Z

    if-eqz v4, :cond_3

    .line 137
    :cond_1
    sget-boolean v4, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiSnsExceptionActivity"

    const-string/jumbo v5, "WifiManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 140
    const-string/jumbo v5, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 139
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_4

    .line 141
    .local v1, "mAggressiveEnabled":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 142
    const-string/jumbo v4, "AP_AGG"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->sendGSIMdata(Ljava/lang/String;)V

    .line 146
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 147
    const-string/jumbo v5, "wifi_sns_dialog_for_starting_settings"

    .line 146
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    .line 125
    return-void

    .line 129
    .end local v1    # "mAggressiveEnabled":Z
    :cond_3
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 130
    .local v2, "msg":Landroid/os/Message;
    const/16 v4, 0xc9

    iput v4, v2, Landroid/os/Message;->what:I

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "keep_connection"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    const-string/jumbo v4, "netId"

    iget v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    move v1, v3

    .line 139
    goto :goto_1

    .line 144
    .restart local v1    # "mAggressiveEnabled":Z
    :cond_5
    const-string/jumbo v4, "AP_ON"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_2
.end method

.method sendGSIMdata(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 271
    const-string/jumbo v2, "feature"

    .line 272
    .local v2, "featureKey":Ljava/lang/String;
    const-string/jumbo v3, "SNSU"

    .line 273
    .local v3, "featureValue":Ljava/lang/String;
    const-string/jumbo v1, "extra"

    .line 275
    .local v1, "dataKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 276
    :cond_0
    return-void

    .line 275
    :cond_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 278
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 279
    .local v4, "msgLog":Landroid/os/Message;
    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    .line 280
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v0, "argsLog":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_2

    .line 285
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 270
    :cond_2
    return-void
.end method
