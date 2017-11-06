.class public Lcom/samsung/android/app/music/common/help/ContactUsHelper;
.super Ljava/lang/Object;
.source "ContactUsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;,
        Lcom/samsung/android/app/music/common/help/ContactUsHelper$ExtraValue;,
        Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;,
        Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;,
        Lcom/samsung/android/app/music/common/help/ContactUsHelper$Extra;,
        Lcom/samsung/android/app/music/common/help/ContactUsHelper$Url;
    }
.end annotation


# static fields
.field private static final PACKAGE_SAMSUNG_MEMBERS:Ljava/lang/String; = "com.samsung.android.voc"

.field private static final SUPPORT_VERSION:I = 0xa220268

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Help-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/common/help/ContactUsHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportContactUs(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const-string v0, "com.samsung.android.voc"

    .line 181
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {p0}, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->isSupportedVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedVersion(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 188
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1

    move v2, v4

    .line 200
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    .line 191
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    const-string v5, "com.samsung.android.voc"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 192
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v6, 0xa220268

    if-lt v5, v6, :cond_2

    const/4 v2, 0x1

    .line 193
    .local v2, "isSupported":Z
    :goto_1
    if-nez v2, :cond_0

    .line 194
    sget-object v5, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Samsung Members version is lower. installed version : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "isSupported":Z
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->TAG:Ljava/lang/String;

    const-string v6, "Samsung Members package is not installed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 200
    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    move v2, v4

    .line 192
    goto :goto_1
.end method

.method public static launchContactUs(Landroid/app/Activity;)Z
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x1

    .line 211
    invoke-static {p0}, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 212
    new-instance v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;

    const-string v6, "com.sec.android.app.music"

    const-string v8, "n10h313sxh"

    invoke-direct {v0, v6, v8}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .local v0, "builder":Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;
    sget-boolean v6, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v6, :cond_1

    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, "hasOrderHistory":Z
    instance-of v6, p0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v6, :cond_0

    move-object v6, p0

    .line 218
    check-cast v6, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v6}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v5

    .line 219
    .local v5, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/UserInfo;->hasPremiumOrderHistory()Z

    move-result v2

    .line 222
    .end local v5    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_0
    const-string v6, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_MEMBERS_PREBODY"

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a04a8

    .line 225
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 223
    invoke-static {p0, v6, v8}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "prebody":Ljava/lang/String;
    const-string v6, "\\n"

    const-string v8, "line.separator"

    .line 227
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 226
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->setPreloadBody(Ljava/lang/String;)Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;

    .line 228
    const-string v6, "hint"

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->setPreloadBodyType(Ljava/lang/String;)Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;

    .line 229
    invoke-virtual {v0, v7}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->setBillingSupported(Z)Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;

    .line 230
    if-eqz v2, :cond_1

    .line 231
    const/4 v6, 0x2

    .line 232
    invoke-static {p0, v6}, Lcom/samsung/android/app/music/milk/help/MuseUtils;->getMuseUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->setMusePurchaseFaqUrl(Ljava/lang/String;)Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;

    .line 236
    .end local v2    # "hasOrderHistory":Z
    .end local v4    # "prebody":Ljava/lang/String;
    :cond_1
    const-string v6, "Music"

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->setAppName(Ljava/lang/String;)Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v3

    .line 238
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 240
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 249
    .end local v0    # "builder":Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return v6

    .line 242
    .restart local v0    # "builder":Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 244
    sget-object v6, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->TAG:Ljava/lang/String;

    const-string v7, "launchContactUs : Activity Not found!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v0    # "builder":Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v6, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->TAG:Ljava/lang/String;

    const-string v7, "Can\'t launch contact us"

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v6, 0x0

    goto :goto_0
.end method
