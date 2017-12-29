.class public Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;
.super Landroid/content/BroadcastReceiver;
.source "WifiIntentReciever.java"


# static fields
.field private static isWps:Z

.field private static mCountryChina:I

.field private static mSalesCodeCHM:I

.field private static prestate:Landroid/net/NetworkInfo$DetailedState;


# instance fields
.field private connMgr:Landroid/net/ConnectivityManager;

.field private mBeforeValue:Landroid/content/SharedPreferences;

.field private mDoNotShow:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 39
    sput v0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    .line 40
    sput v0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private OnOffData(Z)V
    .locals 2
    .param p1, "mButton"    # Z

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 206
    const-string/jumbo v0, "ConnHandler "

    const-string/jumbo v1, "The data service will be enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string/jumbo v0, "ConnHandler "

    const-string/jumbo v1, "ConnectivityManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSIMCardReady(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 212
    const/4 v1, 0x0

    .line 214
    .local v1, "result":Z
    const-string/jumbo v7, "phone"

    .line 213
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 215
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_1

    .line 216
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-le v7, v5, :cond_2

    move v0, v5

    .line 228
    .local v0, "isMultiSim":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 229
    const-string/jumbo v7, "gsm.sim.state"

    const-string/jumbo v8, "-1,-1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "simStatus":Ljava/lang/String;
    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "simStatusInt":[Ljava/lang/String;
    const-string/jumbo v7, "READY"

    aget-object v6, v3, v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    array-length v6, v3

    if-le v6, v5, :cond_1

    const-string/jumbo v6, "READY"

    aget-object v5, v3, v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    :cond_0
    const/4 v1, 0x1

    .line 239
    .end local v0    # "isMultiSim":Z
    .end local v2    # "simStatus":Ljava/lang/String;
    .end local v3    # "simStatusInt":[Ljava/lang/String;
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v6

    .line 216
    goto :goto_0

    .line 235
    .restart local v0    # "isMultiSim":Z
    :cond_3
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v6, v5, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showPrompt(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 148
    const/4 v3, 0x0

    .line 149
    .local v3, "isAirPlane":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 150
    const-string/jumbo v11, "airplane_mode_on"

    .line 149
    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v3, v9

    .line 153
    .local v3, "isAirPlane":Z
    :goto_0
    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->isSIMCardReady(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 155
    const-string/jumbo v8, "connectivity"

    .line 154
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    .line 156
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    if-eqz v8, :cond_2

    .line 147
    :cond_0
    :goto_1
    return-void

    .local v3, "isAirPlane":Z
    :cond_1
    move v3, v10

    .line 150
    goto :goto_0

    .line 157
    .local v3, "isAirPlane":Z
    :cond_2
    sget v8, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    if-ne v8, v9, :cond_5

    .line 158
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mDoNotShow:Landroid/content/SharedPreferences;

    .line 159
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mBeforeValue:Landroid/content/SharedPreferences;

    .line 160
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mDoNotShow:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "connhan_do_not_show"

    invoke-interface {v8, v11, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 161
    .local v0, "do_not_show_again":Z
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mBeforeValue:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "connhan_value"

    invoke-interface {v8, v11, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 162
    .local v4, "mValue":Z
    if-eqz v0, :cond_4

    .line 163
    const-string/jumbo v8, "ConnHandler "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "on Create Do not Show again enabled. the Button Value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz v4, :cond_3

    .line 165
    const-string/jumbo v8, "ConnHandler "

    const-string/jumbo v10, "Setted button is Connect"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->OnOffData(Z)V

    goto :goto_1

    .line 168
    :cond_3
    const-string/jumbo v8, "ConnHandler "

    const-string/jumbo v9, "Setted button is Disconnect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->OnOffData(Z)V

    goto :goto_1

    .line 173
    :cond_4
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-direct {v5, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v5, "startIntent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    const/high16 v8, 0x2000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 178
    .end local v5    # "startIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v8, "ConnHandler "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ActivityNotFoundException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 180
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ConnHandler "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 186
    .end local v0    # "do_not_show_again":Z
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "mValue":Z
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 187
    const v9, 0x7f0b0ecb

    .line 186
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "strNotiToastWifiUnavailable":Ljava/lang/String;
    const-string/jumbo v8, "ro.build.scafe.cream"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "white"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 189
    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 190
    const v9, 0x103012b

    .line 189
    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 191
    .local v7, "themeContext":Landroid/content/Context;
    invoke-static {v7, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 194
    .end local v7    # "themeContext":Landroid/content/Context;
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    sget v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 48
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "Country"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "countryCode":Ljava/lang/String;
    const-string/jumbo v13, "CHINA"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 50
    const/4 v13, 0x1

    sput v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    .line 55
    .end local v5    # "countryCode":Ljava/lang/String;
    :cond_0
    :goto_0
    sget v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "action":Ljava/lang/String;
    sget v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    .line 60
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "SalesCode"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, "salesCode":Ljava/lang/String;
    const-string/jumbo v13, "CHM"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string/jumbo v13, "CBK"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 62
    :cond_1
    const/4 v13, 0x1

    sput v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    .line 68
    .end local v9    # "salesCode":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v13, "com.samsung.android.intent.action.WLAN_CHECK_WPS_OPERATION"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 69
    const-string/jumbo v13, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    sput-boolean v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    .line 72
    sget v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "wifi_cmcc_manual"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 74
    .local v11, "value":I
    const-string/jumbo v13, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 76
    .local v12, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v11, :cond_3

    .line 77
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 78
    .local v8, "msg":Landroid/os/Message;
    const/16 v13, 0xf

    iput v13, v8, Landroid/os/Message;->what:I

    .line 80
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v14, "enable"

    sget-boolean v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    if-nez v13, :cond_6

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v2, v14, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    iput-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    const-string/jumbo v13, "ConnHandler "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "WPS set KEY_WIFI_CONNECTION_TYPE acccording to the value of isWps = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v12, v8}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v13

    if-eqz v13, :cond_3

    .line 86
    const-string/jumbo v13, "ConnHandler "

    const-string/jumbo v14, "KEY_WIFI_CONNECTION_TYPE config store error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v11    # "value":I
    .end local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    :goto_3
    return-void

    .line 52
    .restart local v5    # "countryCode":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    sput v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    goto/16 :goto_0

    .line 64
    .end local v5    # "countryCode":Ljava/lang/String;
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v9    # "salesCode":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    sput v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    goto/16 :goto_1

    .line 81
    .end local v9    # "salesCode":Ljava/lang/String;
    .restart local v2    # "args":Landroid/os/Bundle;
    .restart local v8    # "msg":Landroid/os/Message;
    .restart local v11    # "value":I
    .restart local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    .line 90
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v11    # "value":I
    .end local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_7
    const-string/jumbo v13, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 91
    const-string/jumbo v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 92
    .local v7, "mNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    .line 98
    .local v6, "currentState":Landroid/net/NetworkInfo$DetailedState;
    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v6, :cond_8

    .line 99
    return-void

    .line 101
    :cond_8
    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_b

    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_b

    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_b

    .line 103
    :goto_4
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v13, :cond_c

    .line 104
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v13, :cond_9

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 115
    :cond_9
    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_f

    .line 116
    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_a

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 128
    :cond_a
    sput-object v6, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    .line 129
    return-void

    .line 102
    :cond_b
    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_9

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    .line 101
    if-eqz v13, :cond_9

    goto :goto_4

    .line 106
    :cond_c
    const-string/jumbo v13, "bssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "bssid":Ljava/lang/String;
    if-nez v3, :cond_d

    .line 109
    return-void

    .line 111
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-nez v13, :cond_e

    .line 112
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->showPrompt(Landroid/content/Context;)V

    .line 114
    :cond_e
    sput-object v6, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_3

    .line 117
    .end local v3    # "bssid":Ljava/lang/String;
    :cond_f
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v13, :cond_10

    .line 118
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v13, :cond_a

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    .line 115
    if-eqz v13, :cond_a

    .line 120
    :cond_10
    const-string/jumbo v13, "bssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .restart local v3    # "bssid":Ljava/lang/String;
    if-nez v3, :cond_11

    .line 123
    return-void

    .line 125
    :cond_11
    sput-object v6, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_3

    .line 131
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v6    # "currentState":Landroid/net/NetworkInfo$DetailedState;
    .end local v7    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :cond_12
    sget v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const-string/jumbo v13, "com.samsung.android.settings.WLAN_SSID_AVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 134
    const-string/jumbo v14, "wifi_cmcc_manual"

    const/4 v15, 0x0

    .line 133
    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 136
    .local v4, "connetiontype":I
    const/4 v13, 0x2

    if-ne v4, v13, :cond_3

    sget-boolean v13, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    if-nez v13, :cond_3

    .line 137
    new-instance v10, Landroid/content/Intent;

    const-class v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v10, "startIntent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    const/high16 v13, 0x2000000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3
.end method
