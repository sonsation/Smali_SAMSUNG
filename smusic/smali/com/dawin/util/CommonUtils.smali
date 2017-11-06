.class public Lcom/dawin/util/CommonUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/util/CommonUtils$ScreenSize;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Z

.field private static final e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "common_info"

    sput-object v0, Lcom/dawin/util/CommonUtils;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Android/data/incross/dawin_sdk/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dawin/util/CommonUtils;->a:Ljava/lang/String;

    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/dawin/util/CommonUtils;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/dawin/util/CommonUtils;->d:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/dawin/util/CommonUtils;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static a(II)I
    .locals 4
    .param p0, "num1"    # I
    .param p1, "num2"    # I

    .prologue
    const/4 v3, 0x1

    if-ge p0, v3, :cond_1

    const/4 v2, -0x1

    :cond_0
    return v2

    :cond_1
    if-le p0, p1, :cond_2

    move v0, p0

    .local v0, "one":I
    move v2, p1

    .local v2, "two":I
    :goto_0
    rem-int v1, v0, v2

    .local v1, "temp":I
    if-eqz v1, :cond_0

    move v0, v2

    move v2, v1

    goto :goto_0

    .end local v0    # "one":I
    .end local v1    # "temp":I
    .end local v2    # "two":I
    :cond_2
    move v0, p1

    .restart local v0    # "one":I
    move v2, p0

    .restart local v2    # "two":I
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .local v0, "currentOrientation":I
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "positiveButtonTitle"    # Ljava/lang/String;
    .param p4, "negativeButtonTitle"    # Ljava/lang/String;
    .param p5, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_0

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p3, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    if-eqz p4, :cond_1

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p4, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lcom/dawin/util/CommonUtils;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "mString"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const-string v4, ""

    .local v4, "value":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "tempString":[Ljava/lang/String;
    array-length v6, v3

    if-lez v6, :cond_2

    array-length v6, v3

    :goto_0
    if-lt v5, v6, :cond_0

    :goto_1
    return-object v4

    :cond_0
    aget-object v0, v3, v5

    .local v0, "cookie":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpCookie;

    .local v2, "httpCookie":Ljava/net/HttpCookie;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .end local v2    # "httpCookie":Ljava/net/HttpCookie;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "cookie":Ljava/lang/String;
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    sget-object v2, Lcom/dawin/util/CommonUtils;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-direct {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;-><init>()V

    .local v2, "mMultiWindow":Lcom/samsung/android/sdk/multiwindow/SMultiWindow;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->initialize(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v3, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .local v3, "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getZoneInfo()I

    move-result v4

    sget v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_A:I

    if-ne v4, v5, :cond_1

    sget v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_B:I

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->makeMultiWindowIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mMultiWindow":Lcom/samsung/android/sdk/multiwindow/SMultiWindow;
    .end local v3    # "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    :goto_1
    return-void

    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "mMultiWindow":Lcom/samsung/android/sdk/multiwindow/SMultiWindow;
    .restart local v3    # "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getZoneInfo()I

    move-result v4

    sget v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_B:I

    if-ne v4, v5, :cond_0

    sget v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_A:I

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->makeMultiWindowIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mMultiWindow":Lcom/samsung/android/sdk/multiwindow/SMultiWindow;
    .end local v3    # "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--- changeMultiWindowBrowser() Exception ---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 8
    .param p0, "mActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--- isMultiWindowCheck() --- SDK Version = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-ge v6, v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v2, 0x0

    .local v2, "isSupportMultiwindow":Z
    const/4 v1, 0x0

    .local v1, "isMultiWindow":Z
    :try_start_0
    new-instance v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-direct {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;-><init>()V

    .local v3, "mMultiWindow":Lcom/samsung/android/sdk/multiwindow/SMultiWindow;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->initialize(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-instance v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .local v4, "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v3    # "mMultiWindow":Lcom/samsung/android/sdk/multiwindow/SMultiWindow;
    .end local v4    # "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--- isMultiWindowCheck() Exception ---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lorg/apache/http/client/CookieStore;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    .prologue
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    const/4 v2, 0x1

    .end local v1    # "i":I
    :goto_1
    return v2

    .restart local v1    # "i":I
    :cond_0
    const-string v3, ".dawin.tv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    const-string v0, "^[0-9]*$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v1
.end method

.method public static b(Ljava/lang/String;)Lorg/apache/http/client/CookieStore;
    .locals 10
    .param p0, "mString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .local v2, "cookieStore":Lorg/apache/http/client/CookieStore;
    const-string v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "tempString":[Ljava/lang/String;
    array-length v7, v5

    if-lez v7, :cond_2

    new-instance v2, Lorg/apache/http/impl/client/BasicCookieStore;

    .end local v2    # "cookieStore":Lorg/apache/http/client/CookieStore;
    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .restart local v2    # "cookieStore":Lorg/apache/http/client/CookieStore;
    array-length v7, v5

    :goto_0
    if-lt v6, v7, :cond_0

    :goto_1
    return-object v2

    :cond_0
    aget-object v0, v5, v6

    .local v0, "cookie":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/HttpCookie;

    .local v4, "httpCookie":Ljava/net/HttpCookie;
    if-eqz v4, :cond_1

    new-instance v1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {v4}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "cookie1":Lorg/apache/http/impl/cookie/BasicClientCookie;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setVersion(I)V

    const-string v8, ".dawin.tv"

    invoke-virtual {v1, v8}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v1, v8}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cookie1":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v4    # "httpCookie":Ljava/net/HttpCookie;
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v0    # "cookie":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x1e0

    const/16 v4, 0x190

    const/16 v3, 0x140

    const/16 v2, 0xf0

    const/16 v1, 0xa0

    invoke-static {p0}, Lcom/dawin/util/CommonUtils;->b(Landroid/content/Context;)I

    move-result v0

    .local v0, "densityDpi":I
    if-ge v0, v1, :cond_1

    const/16 v0, 0x9f

    .end local v0    # "densityDpi":I
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "densityDpi":I
    :cond_1
    if-lt v0, v1, :cond_2

    if-ge v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-lt v0, v2, :cond_3

    if-ge v0, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    if-lt v0, v3, :cond_4

    if-ge v0, v4, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    if-lt v0, v4, :cond_5

    if-ge v0, v5, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    if-ne v0, v5, :cond_0

    move v0, v5

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v7, ":"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v2, 0x0

    .local v2, "ms":I
    const-string v6, ""

    .local v6, "timeString":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "."

    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "temp":[Ljava/lang/String;
    aget-object v7, v4, v9

    if-eqz v7, :cond_0

    aget-object v7, v4, v9

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v4, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    aget-object v6, v4, v10

    .end local v4    # "temp":[Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_4

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ":"

    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "timeSplit":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "hh":I
    const/4 v1, 0x0

    .local v1, "mm":I
    const/4 v3, 0x0

    .local v3, "ss":I
    aget-object v7, v5, v10

    if-eqz v7, :cond_1

    aget-object v7, v5, v10

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    aget-object v7, v5, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit16 v0, v7, 0x3e8

    :cond_1
    aget-object v7, v5, v9

    if-eqz v7, :cond_2

    aget-object v7, v5, v9

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v5, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit16 v1, v7, 0x3e8

    :cond_2
    aget-object v7, v5, v11

    if-eqz v7, :cond_3

    aget-object v7, v5, v11

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    aget-object v7, v5, v11

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit16 v3, v7, 0x3e8

    :cond_3
    add-int v7, v2, v0

    add-int/2addr v7, v1

    add-int v2, v7, v3

    .end local v0    # "hh":I
    .end local v1    # "mm":I
    .end local v3    # "ss":I
    .end local v5    # "timeSplit":[Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .end local v2    # "ms":I
    .end local v6    # "timeString":Ljava/lang/String;
    .end local p0    # "time":Ljava/lang/String;
    :cond_5
    return-object p0

    .restart local v2    # "ms":I
    .restart local v6    # "timeString":Ljava/lang/String;
    .restart local p0    # "time":Ljava/lang/String;
    :cond_6
    move-object v6, p0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    invoke-static {p0}, Lcom/dawin/util/g;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/dawin/util/g;->a(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "check":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    .end local v0    # "check":I
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, ""

    .local v1, "fileString":Ljava/lang/String;
    const-string v2, ""

    .local v2, "result":Ljava/lang/String;
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v3}, Lcom/dawin/util/CommonUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/dawin/util/c;

    invoke-direct {v0}, Lcom/dawin/util/c;-><init>()V

    .local v0, "fManager":Lcom/dawin/util/c;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/dawin/util/CommonUtils;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "incross_app_uid.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dawin/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "fManager":Lcom/dawin/util/c;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseRaw file : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const-string v4, ".dawin.tv"

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const-string v4, ".dawin.tv"

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const-string v4, ".dawin.tv"

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uid"

    invoke-static {v3, v4}, Lcom/dawin/util/CommonUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUID domain : .dawin.tv / UID(cookie) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_3
    const-string/jumbo v3, "uid"

    invoke-static {v1, v3}, Lcom/dawin/util/CommonUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUID domain : .dawin.tv / UID(file) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    const/4 v0, 0x0

    .local v0, "cookieStore":Lorg/apache/http/client/CookieStore;
    const-string v2, ""

    .local v2, "fileString":Ljava/lang/String;
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v3}, Lcom/dawin/util/CommonUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/dawin/util/c;

    invoke-direct {v1}, Lcom/dawin/util/c;-><init>()V

    .local v1, "fManager":Lcom/dawin/util/c;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/dawin/util/CommonUtils;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "incross_app_uid.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dawin/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v1    # "fManager":Lcom/dawin/util/c;
    :cond_0
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const-string v3, "getCookieStore() - Cookie"

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const-string v4, ".dawin.tv"

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const-string v4, ".dawin.tv"

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const-string v4, ".dawin.tv"

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/CommonUtils;->b(Ljava/lang/String;)Lorg/apache/http/client/CookieStore;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const-string v3, "getCookieStore() - file"

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/dawin/util/CommonUtils;->b(Ljava/lang/String;)Lorg/apache/http/client/CookieStore;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v3}, Lcom/dawin/util/CommonUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    const-string v3, ".dawin.tv"

    invoke-virtual {v0, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "cookieString":Ljava/lang/String;
    new-instance v2, Lcom/dawin/util/c;

    invoke-direct {v2}, Lcom/dawin/util/c;-><init>()V

    .local v2, "fManager":Lcom/dawin/util/c;
    sget-object v3, Lcom/dawin/util/CommonUtils;->a:Ljava/lang/String;

    const-string v4, "incross_app_uid.txt"

    invoke-virtual {v2, v3, v4, v1}, Lcom/dawin/util/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Write Cookie to File Success"

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    .end local v1    # "cookieString":Ljava/lang/String;
    .end local v2    # "fManager":Lcom/dawin/util/c;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "cookieManager":Landroid/webkit/CookieManager;
    .restart local v1    # "cookieString":Ljava/lang/String;
    .restart local v2    # "fManager":Lcom/dawin/util/c;
    :cond_1
    const-string v3, "Write Cookie to File Fail"

    invoke-static {v3}, Lcom/dawin/util/f;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "mStatus":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/dawin/util/f;->a:Z

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/dawin/util/f;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sput-boolean v5, Lcom/dawin/util/f;->a:Z

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    if-eqz p0, :cond_0

    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/dawin/util/CommonUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/dawin/util/CommonUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    if-eqz p0, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/dawin/util/CommonUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, "bestWidthPixels":Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "bestHeightPixels":Ljava/lang/Integer;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xd

    if-lt v8, v9, :cond_0

    const-string/jumbo v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .local v7, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .local v3, "display":Landroid/view/Display;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_3

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .local v6, "screenSize":Landroid/graphics/Point;
    invoke-virtual {v3, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v8, v6, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v3    # "display":Landroid/view/Display;
    .end local v6    # "screenSize":Landroid/graphics/Point;
    .end local v7    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_2
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    return-object v8

    .restart local v3    # "display":Landroid/view/Display;
    .restart local v7    # "windowManager":Landroid/view/WindowManager;
    :cond_3
    :try_start_0
    new-instance v8, Lcom/dawin/util/h$a;

    const-string v9, "getRawWidth"

    invoke-direct {v8, v3, v9}, Lcom/dawin/util/h$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/dawin/util/h$a;->a()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    new-instance v8, Lcom/dawin/util/h$a;

    const-string v9, "getRawHeight"

    invoke-direct {v8, v3, v9}, Lcom/dawin/util/h$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/dawin/util/h$a;->a()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
