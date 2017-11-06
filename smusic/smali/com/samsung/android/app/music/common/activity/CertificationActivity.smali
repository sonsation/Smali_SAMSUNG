.class public Lcom/samsung/android/app/music/common/activity/CertificationActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "CertificationActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/CertificationActivity$CertificationWebViewClient;
    }
.end annotation


# static fields
.field private static final ACTION_ID:Ljava/lang/String; = "NameCheckOAuth2"

.field public static final CERTIFICATED_SUCCESS:I = 0x3e9

.field private static final CERTIFICATION_DOMAIN:Ljava/lang/String; = "https://account.samsung.com/mobile/account/check.do"

.field public static final CHECK_AGE_NO:Ljava/lang/String; = "N"

.field public static final CHECK_AGE_YES:Ljava/lang/String; = "Y"

.field private static final CLOSED_ACTION_SUCCESS:Ljava/lang/String; = "NameCheckSuccess"

.field public static final COUNTRY_CODE_KOREA:Ljava/lang/String; = "KR"

.field public static final IS_CERTIFICATED:Ljava/lang/String; = "N"

.field public static final LANGUAGE_CODE_KOREA:Ljava/lang/String; = "ko"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SERVICE_ID:Ljava/lang/String; = "12yndwlwd1"

.field private static checkAge:Ljava/lang/String;

.field private static countryCode:Ljava/lang/String;

.field private static languageCode:Ljava/lang/String;

.field private static mCertificationUrl:Ljava/lang/String;

.field private static mIsCertified:Z

.field private static tokenValue:Ljava/lang/String;


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    const-class v0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->LOG_TAG:Ljava/lang/String;

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->mCertificationUrl:Ljava/lang/String;

    .line 35
    sput-object v1, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->countryCode:Ljava/lang/String;

    .line 37
    sput-object v1, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->languageCode:Ljava/lang/String;

    .line 39
    sput-object v1, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->tokenValue:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->checkAge:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->mIsCertified:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->mIsCertified:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 19
    sput-boolean p0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->mIsCertified:Z

    return p0
.end method

.method private getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBackPressed : Go back."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBackPressed : Close notice."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v3, 0x7f0400d8

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->setContentView(I)V

    .line 65
    const v3, 0x7f12027d

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->mWebView:Landroid/webkit/WebView;

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/UserInfo;->getSAtoken()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "ssoId":Ljava/lang/String;
    const-string v3, "https://account.samsung.com/mobile/account/check.do"

    sput-object v3, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->mCertificationUrl:Ljava/lang/String;

    .line 70
    const-string v3, "KR"

    sput-object v3, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->countryCode:Ljava/lang/String;

    .line 71
    const-string v3, "ko"

    sput-object v3, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->languageCode:Ljava/lang/String;

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, ""

    .end local v2    # "ssoId":Ljava/lang/String;
    :cond_0
    sput-object v2, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->tokenValue:Ljava/lang/String;

    .line 73
    const-string v3, "Y"

    sput-object v3, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->checkAge:Ljava/lang/String;

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->mCertificationUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "mHtml":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "actionID=NameCheckOAuth2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&serviceID=12yndwlwd1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&countryCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->countryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&languageCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->languageCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&tokenValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->tokenValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&checkAge="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->checkAge:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/samsung/android/app/music/common/activity/CertificationActivity$CertificationWebViewClient;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/app/music/common/activity/CertificationActivity$CertificationWebViewClient;-><init>(Lcom/samsung/android/app/music/common/activity/CertificationActivity;Lcom/samsung/android/app/music/common/activity/CertificationActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 85
    sget-object v3, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate : Certification link : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 88
    .local v1, "set":Landroid/webkit/WebSettings;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 90
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 91
    sget-object v3, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 138
    sget-object v0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected : name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 143
    sget-object v0, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected : name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method
