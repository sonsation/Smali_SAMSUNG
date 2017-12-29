.class public Lcom/samsung/android/settings/fmm/SamsungAccountValidationActivity;
.super Lcom/android/settings/InstrumentedActivity;
.source "SamsungAccountValidationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/fmm/SamsungAccountValidationActivity$AESCrypto;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    return-void
.end method

.method private launch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "apiServerUrl"    # Ljava/lang/String;
    .param p3, "userID"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string/jumbo v12, "GMT"

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 136
    .local v10, "unixTime":J
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    .local v8, "key":Ljava/lang/StringBuffer;
    const-string/jumbo v12, "s5d189ajvs"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v3, "data":Ljava/lang/StringBuffer;
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 142
    const-string/jumbo v13, ":"

    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/settings/fmm/SamsungAccountValidationActivity$AESCrypto;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "encryptedData":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 147
    const-string/jumbo v12, "\\s"

    const-string/jumbo v13, ""

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6}, Lcom/samsung/android/settings/fmm/SamsungAccountValidationActivity$AESCrypto;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "decryptedData":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v9, "http://findmymobile.samsung.cn/sso"

    .line 155
    .local v9, "url":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.VIEW"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v7, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    .local v7, "i":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v12, "data"

    invoke-virtual {v2, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v12, "type"

    const-string/jumbo v13, "Settings"

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v12, "com.android.browser.headers"

    invoke-virtual {v7, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 161
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/SamsungAccountValidationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    return-void

    .line 154
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v7    # "i":Landroid/content/Intent;
    .end local v9    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "https://findmymobile.samsung.com/sso"

    .restart local v9    # "url":Ljava/lang/String;
    goto :goto_0

    .line 162
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 163
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v12, "SamsungAccountValidationActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to open link "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SamsungAccountValidationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0293

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 108
    :pswitch_0
    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    .line 109
    const-string/jumbo v5, "access_token"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "accessToken":Ljava/lang/String;
    const-string/jumbo v5, "user_id"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "userId":Ljava/lang/String;
    const-string/jumbo v5, "api_server_url"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "apiServerUrl":Ljava/lang/String;
    const-string/jumbo v5, "SamsungAccountValidationActivity"

    const-string/jumbo v6, "REQUEST_ID_GET_ACCESS_TOKEN ok"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, v0, v1, v4}, Lcom/samsung/android/settings/fmm/SamsungAccountValidationActivity;->launch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v1    # "apiServerUrl":Ljava/lang/String;
    .end local v4    # "userId":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SamsungAccountValidationActivity;->finish()V

    goto :goto_0

    .line 119
    :cond_1
    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    .line 120
    if-eqz p3, :cond_0

    .line 121
    const-string/jumbo v5, "error_code"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "errorCode":Ljava/lang/String;
    const-string/jumbo v5, "error_message"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "errorMessage":Ljava/lang/String;
    const-string/jumbo v5, "SamsungAccountValidationActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "REQUEST_ID_GET_ACCESS_TOKEN errorCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string/jumbo v5, "SamsungAccountValidationActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "REQUEST_ID_GET_ACCESS_TOKEN errorMessage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 88
    const-string/jumbo v3, "user_id"

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string/jumbo v3, "api_server_url"

    aput-object v3, v0, v5

    .line 91
    .local v0, "additional":[Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.msc.action.samsungaccount.REQUEST_ACCESSTOKEN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "bundle":Landroid/content/Intent;
    const-string/jumbo v3, "client_id"

    const-string/jumbo v4, "s5d189ajvs"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v3, "client_secret"

    const-string/jumbo v4, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string/jumbo v3, "additional"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string/jumbo v3, "progress_theme"

    const-string/jumbo v4, "light"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/settings/fmm/SamsungAccountValidationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
