.class final Lcom/android/settings/fingerprint/FingerprintEntry$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "FingerprintEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "FpstFingerprintEntry"

    const-string/jumbo v4, "getNonIndexableKeys "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string/jumbo v3, "register_category"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    const-string/jumbo v3, "com.sec.android.app.sbrowser"

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get3()I

    move-result v3

    if-nez v3, :cond_1

    .line 498
    :cond_0
    const-string/jumbo v3, "support_web_signin"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_1
    const-string/jumbo v3, "com.samsung.android.spay"

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 502
    const-string/jumbo v3, "samsung_pay"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get3()I

    move-result v3

    if-eqz v3, :cond_4

    .line 516
    :cond_3
    const-string/jumbo v3, "samsung_pass"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_4
    return-object v2

    .line 505
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.spay"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 506
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v3, "0.0.00"

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 507
    const-string/jumbo v3, "FpstFingerprintEntry"

    const-string/jumbo v4, "Remove the SamsungPay at the search menu"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string/jumbo v3, "samsung_pay"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "FpstFingerprintEntry"

    const-string/jumbo v4, "Getting information of SamsungPay make the Exception!"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    invoke-static {p1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    const/4 v1, 0x0

    return-object v1

    .line 479
    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 480
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const-string/jumbo v1, "android.intent.action.MAIN"

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 481
    const-string/jumbo v1, "com.android.settings"

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 482
    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintEntry"

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 483
    const v1, 0x7f080074

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 485
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
