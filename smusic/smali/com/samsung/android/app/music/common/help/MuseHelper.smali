.class public Lcom/samsung/android/app/music/common/help/MuseHelper;
.super Ljava/lang/Object;
.source "MuseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/help/MuseHelper$MuseLoginRequestReceivable;,
        Lcom/samsung/android/app/music/common/help/MuseHelper$ParameterValue;,
        Lcom/samsung/android/app/music/common/help/MuseHelper$Parameter;,
        Lcom/samsung/android/app/music/common/help/MuseHelper$Url;,
        Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_SAMSUNG_ACCOUNT:Ljava/lang/String; = "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

.field private static final ANDROID_VERSION:Ljava/lang/String;

.field private static final PACKAGE_SAMSUNG_ACCOUNT:Ljava/lang/String; = "com.osp.app.signin"

.field public static final REQUEST_CODE_LOGIN_CHECK:I = 0x2

.field public static final REQUEST_CODE_MUSE_WITH_LOGIN:I = 0x1

.field public static final RESULT_SAMSUNG_LOGIN_NEED:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Help-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/common/help/MuseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/help/MuseHelper;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/help/MuseHelper;->ANDROID_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMccMncPair(Landroid/content/Context;)Landroid/util/Pair;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 180
    const-string/jumbo v2, "phone"

    .line 181
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 182
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    .line 183
    new-instance v2, Landroid/util/Pair;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    :goto_0
    return-object v2

    .line 185
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "operator":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 187
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    :cond_1
    new-instance v2, Landroid/util/Pair;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getMuseIntent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "uriType"    # Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    .prologue
    .line 133
    sget-object v4, Lcom/samsung/android/app/music/common/help/MuseHelper$1;->$SwitchMap$com$samsung$android$app$music$common$help$MuseHelper$MuseUriType:[I

    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 144
    const-string v2, ""

    .line 146
    .local v2, "targetUrl":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/music/common/help/MuseHelper;->getMccMncPair(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    .line 147
    .local v1, "mccMncPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "https://help.content.samsung.com/csweb/auth/gosupport.do"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 148
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v4, "serviceCd"

    const-string/jumbo v5, "smilk"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "targetUrl"

    .line 149
    invoke-virtual {v4, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "chnlCd"

    const-string v6, "ODC"

    .line 150
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "_common_lang"

    const-string v6, "ko"

    .line 151
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "_common_country"

    const-string v6, "KR"

    .line 152
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "saccountID"

    .line 153
    invoke-virtual {v4, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "mcc"

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 154
    invoke-virtual {v5, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "mnc"

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 155
    invoke-virtual {v5, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "brandNm"

    .line 156
    invoke-static {p0}, Lcom/samsung/android/app/music/common/help/MuseHelper;->getOperatorBrandName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "dvcModelCd"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 157
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "dvcOSVersion"

    sget-object v6, Lcom/samsung/android/app/music/common/help/MuseHelper;->ANDROID_VERSION:Ljava/lang/String;

    .line 158
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "odcVersion"

    .line 159
    invoke-static {p0}, Lcom/samsung/android/app/music/common/help/MuseHelper;->getOdcVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 160
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 161
    .local v3, "uri":Landroid/net/Uri;
    sget-object v4, Lcom/samsung/android/app/music/common/help/MuseHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Muse uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v4

    .line 135
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "mccMncPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "targetUrl":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_0
    const-string v2, "/ticket/createQuestionTicket.do"

    .line 136
    .restart local v2    # "targetUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 138
    .end local v2    # "targetUrl":Ljava/lang/String;
    :pswitch_1
    const-string v2, "/ticket/searchTicketList.do"

    .line 139
    .restart local v2    # "targetUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 141
    .end local v2    # "targetUrl":Ljava/lang/String;
    :pswitch_2
    const-string v2, "/faq/searchFaq.do"

    .line 142
    .restart local v2    # "targetUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getOdcVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 210
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 211
    const-string v3, ""

    .line 218
    :goto_0
    return-object v3

    .line 214
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 215
    .local v2, "version":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Samsung Music "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 216
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/samsung/android/app/music/common/help/MuseHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot found samsung music app. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v3, ""

    goto :goto_0
.end method

.method private static getOperatorBrandName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 195
    const-string/jumbo v2, "phone"

    .line 196
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 197
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    .line 198
    const-string v0, ""

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "operatorBrand":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 204
    const-string v0, ""

    goto :goto_0
.end method

.method private static getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 167
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 168
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    if-nez v0, :cond_0

    .line 169
    const-string v2, ""

    .line 175
    :goto_0
    return-object v2

    .line 171
    :cond_0
    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 172
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    aget-object v2, v1, v4

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 173
    aget-object v2, v1, v4

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public static launchMuse(Landroid/app/Activity;Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uriType"    # Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 120
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/app/music/common/help/MuseHelper;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "accountName":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->MY_QUESTION:Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    if-ne p1, v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    new-instance v2, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;

    invoke-direct {v2}, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;-><init>()V

    .line 124
    .local v2, "dialogFragment":Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 129
    .end local v2    # "dialogFragment":Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {v1, v0, p1}, Lcom/samsung/android/app/music/common/help/MuseHelper;->getMuseIntent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;)Landroid/content/Intent;

    move-result-object v3

    .line 128
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchMuse(Landroid/app/Fragment;Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;)V
    .locals 6
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "uriType"    # Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/app/music/common/help/MuseHelper;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "accountName":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->MY_QUESTION:Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    if-ne p1, v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    new-instance v2, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;

    invoke-direct {v2}, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;-><init>()V

    .line 103
    .local v2, "dialogFragment":Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;
    const/4 v4, 0x2

    invoke-virtual {v2, p0, v4}, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 104
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 109
    .end local v2    # "dialogFragment":Lcom/samsung/android/app/music/common/help/MuseLoginCheckDialogFragment;
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {v1, v0, p1}, Lcom/samsung/android/app/music/common/help/MuseHelper;->getMuseIntent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;)Landroid/content/Intent;

    move-result-object v3

    .line 108
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
