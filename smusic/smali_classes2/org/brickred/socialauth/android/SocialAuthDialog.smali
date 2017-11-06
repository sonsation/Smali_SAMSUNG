.class public Lorg/brickred/socialauth/android/SocialAuthDialog;
.super Landroid/app/Dialog;
.source "SocialAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;,
        Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;
    }
.end annotation


# static fields
.field public static final DIMENSIONS_DIFF_LANDSCAPE:[F

.field public static final DIMENSIONS_DIFF_PORTRAIT:[F

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams;

.field static final WRAP:Landroid/widget/FrameLayout$LayoutParams;

.field public static height:F

.field public static titleStatus:Z

.field public static width:F


# instance fields
.field private count:I

.field private handler:Landroid/os/Handler;

.field private mContent:Landroid/widget/ScrollView;

.field private final mListener:Lorg/brickred/socialauth/android/DialogListener;

.field private final mProviderName:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field private final mSocialAuthManager:Lorg/brickred/socialauth/SocialAuthManager;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private final mUrl:Ljava/lang/String;

.field private mWebView:Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

.field private newUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 82
    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lorg/brickred/socialauth/android/SocialAuthDialog;->width:F

    .line 83
    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lorg/brickred/socialauth/android/SocialAuthDialog;->height:F

    .line 85
    new-array v0, v6, [F

    sget v1, Lorg/brickred/socialauth/android/SocialAuthDialog;->width:F

    aput v1, v0, v2

    sget v1, Lorg/brickred/socialauth/android/SocialAuthDialog;->height:F

    aput v1, v0, v5

    sput-object v0, Lorg/brickred/socialauth/android/SocialAuthDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 86
    new-array v0, v6, [F

    sget v1, Lorg/brickred/socialauth/android/SocialAuthDialog;->width:F

    aput v1, v0, v2

    sget v1, Lorg/brickred/socialauth/android/SocialAuthDialog;->height:F

    aput v1, v0, v5

    sput-object v0, Lorg/brickred/socialauth/android/SocialAuthDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    .line 88
    sput-boolean v2, Lorg/brickred/socialauth/android/SocialAuthDialog;->titleStatus:Z

    .line 103
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lorg/brickred/socialauth/android/SocialAuthDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lorg/brickred/socialauth/android/SocialAuthDialog;->WRAP:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;Lorg/brickred/socialauth/android/DialogListener;Lorg/brickred/socialauth/SocialAuthManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "providerName"    # Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;
    .param p4, "listener"    # Lorg/brickred/socialauth/android/DialogListener;
    .param p5, "socialAuthManager"    # Lorg/brickred/socialauth/SocialAuthManager;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 130
    iput-object p3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mProviderName:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 131
    iput-object p2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mUrl:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mListener:Lorg/brickred/socialauth/android/DialogListener;

    .line 133
    iput-object p5, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mSocialAuthManager:Lorg/brickred/socialauth/SocialAuthManager;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mWebView:Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/DialogListener;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mListener:Lorg/brickred/socialauth/android/DialogListener;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/brickred/socialauth/android/SocialAuthDialog;)I
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;

    .prologue
    .line 75
    iget v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->count:I

    return v0
.end method

.method static synthetic access$1102(Lorg/brickred/socialauth/android/SocialAuthDialog;I)I
    .locals 0
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->count:I

    return p1
.end method

.method static synthetic access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mProviderName:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    return-object v0
.end method

.method static synthetic access$400(Lorg/brickred/socialauth/android/SocialAuthDialog;Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/android/SocialAuthDialog;->createAccessGrant(Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/SocialAuthManager;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mSocialAuthManager:Lorg/brickred/socialauth/SocialAuthManager;

    return-object v0
.end method

.method static synthetic access$600(Lorg/brickred/socialauth/android/SocialAuthDialog;Lorg/brickred/socialauth/AuthProvider;)V
    .locals 0
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;
    .param p1, "x1"    # Lorg/brickred/socialauth/AuthProvider;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/android/SocialAuthDialog;->writeToken(Lorg/brickred/socialauth/AuthProvider;)V

    return-void
.end method

.method static synthetic access$700(Lorg/brickred/socialauth/android/SocialAuthDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$800(Lorg/brickred/socialauth/android/SocialAuthDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lorg/brickred/socialauth/android/SocialAuthDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->newUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lorg/brickred/socialauth/android/SocialAuthDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->newUrl:Ljava/lang/String;

    return-object p1
.end method

.method private createAccessGrant(Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/brickred/socialauth/util/AccessGrant;"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/brickred/socialauth/util/AccessGrant;

    invoke-direct {v0}, Lorg/brickred/socialauth/util/AccessGrant;-><init>()V

    .line 525
    .local v0, "accessGrant":Lorg/brickred/socialauth/util/AccessGrant;
    const-string v3, "access_token"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 527
    const-string v3, "access_token"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 528
    .local v1, "accessToken":Ljava/lang/String;
    const/4 v2, 0x0

    .line 529
    .local v2, "expires":Ljava/lang/Integer;
    const-string v3, "expires"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 530
    new-instance v2, Ljava/lang/Integer;

    .end local v2    # "expires":Ljava/lang/Integer;
    const-string v3, "expires"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 532
    .restart local v2    # "expires":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/util/AccessGrant;->setKey(Ljava/lang/String;)V

    .line 533
    const-string v3, "expires"

    invoke-virtual {v0, v3, v2}, Lorg/brickred/socialauth/util/AccessGrant;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    .end local v1    # "accessToken":Ljava/lang/String;
    .end local v2    # "expires":Ljava/lang/Integer;
    :cond_1
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mProviderName:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/brickred/socialauth/util/AccessGrant;->setProviderId(Ljava/lang/String;)V

    .line 536
    return-object v0
.end method

.method private setUpWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    new-instance v0, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    invoke-virtual {p0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;-><init>(Lorg/brickred/socialauth/android/SocialAuthDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mWebView:Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    .line 221
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mWebView:Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    invoke-virtual {v0, v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->setVerticalScrollBarEnabled(Z)V

    .line 222
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mWebView:Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    invoke-virtual {v0, v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 223
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mWebView:Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    new-instance v1, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;-><init>(Lorg/brickred/socialauth/android/SocialAuthDialog;Lorg/brickred/socialauth/android/SocialAuthDialog$1;)V

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 224
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mWebView:Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    invoke-virtual {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 225
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mWebView:Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->loadUrl(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mWebView:Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    sget-object v1, Lorg/brickred/socialauth/android/SocialAuthDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    return-void
.end method

.method private writeToken(Lorg/brickred/socialauth/AuthProvider;)V
    .locals 12
    .param p1, "auth"    # Lorg/brickred/socialauth/AuthProvider;

    .prologue
    .line 487
    invoke-interface {p1}, Lorg/brickred/socialauth/AuthProvider;->getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    .line 488
    .local v0, "accessGrant":Lorg/brickred/socialauth/util/AccessGrant;
    invoke-virtual {v0}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/brickred/socialauth/util/AccessGrant;->getSecret()Ljava/lang/String;

    move-result-object v7

    .line 491
    .local v7, "secret":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/brickred/socialauth/util/AccessGrant;->getProviderId()Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "providerid":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/brickred/socialauth/util/AccessGrant;->getAttributes()Ljava/util/Map;

    move-result-object v1

    .line 495
    .local v1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 497
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mProviderName:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v9}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " key"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 498
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mProviderName:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v9}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " secret"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 499
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mProviderName:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v9}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " providerid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 501
    if-eqz v1, :cond_1

    .line 502
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 503
    .local v3, "entry":Ljava/util/Map$Entry;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    .end local v3    # "entry":Ljava/util/Map$Entry;
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 507
    .local v6, "s":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mProviderName:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v10}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "attribute "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 512
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 514
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    .line 138
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 139
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->handler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/brickred/socialauth/android/Util;->getDisplayDpi(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p0, v8}, Lorg/brickred/socialauth/android/SocialAuthDialog;->requestWindowFeature(I)Z

    .line 143
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 144
    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 145
    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mSpinner:Landroid/app/ProgressDialog;

    const-string v5, "Loading..."

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 148
    new-instance v4, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mContent:Landroid/widget/ScrollView;

    .line 151
    invoke-direct {p0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->setUpWebView()V

    .line 153
    invoke-virtual {p0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 154
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {p0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 155
    .local v3, "scale":F
    invoke-virtual {p0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 156
    .local v2, "orientation":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    sget-object v0, Lorg/brickred/socialauth/android/SocialAuthDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 159
    .local v0, "dimensions":[F
    :goto_0
    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mWebView:Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    aget v7, v0, v7

    mul-float/2addr v7, v3

    add-float/2addr v7, v9

    float-to-int v7, v7

    sub-int/2addr v6, v7

    .line 160
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v7

    aget v8, v0, v8

    mul-float/2addr v8, v3

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    invoke-virtual {p0, v4, v5}, Lorg/brickred/socialauth/android/SocialAuthDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {p0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 165
    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog;->mSpinner:Landroid/app/ProgressDialog;

    new-instance v5, Lorg/brickred/socialauth/android/SocialAuthDialog$1;

    invoke-direct {v5, p0}, Lorg/brickred/socialauth/android/SocialAuthDialog$1;-><init>(Lorg/brickred/socialauth/android/SocialAuthDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 174
    new-instance v4, Lorg/brickred/socialauth/android/SocialAuthDialog$2;

    invoke-direct {v4, p0}, Lorg/brickred/socialauth/android/SocialAuthDialog$2;-><init>(Lorg/brickred/socialauth/android/SocialAuthDialog;)V

    invoke-virtual {p0, v4}, Lorg/brickred/socialauth/android/SocialAuthDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 186
    return-void

    .line 156
    .end local v0    # "dimensions":[F
    :cond_0
    sget-object v0, Lorg/brickred/socialauth/android/SocialAuthDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    goto :goto_0
.end method
