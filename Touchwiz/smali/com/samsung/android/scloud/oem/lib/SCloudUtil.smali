.class public Lcom/samsung/android/scloud/oem/lib/SCloudUtil;
.super Ljava/lang/Object;
.source "SCloudUtil.java"


# static fields
.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"

.field private static final SCLOUD_QUERY_PARAM_NAME:Ljava/lang/String; = "caller_is_syncadapter"

.field private static final SCLOUD_QUERY_PARAM_VALUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String; = "SCloudSyncUtil"

.field private static final TIME_DIFFERENCE:Ljava/lang/String; = "TIME_DIFFERENCE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureValidFileName(Ljava/lang/String;)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 337
    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "../"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/.."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".. path specifier not allowed. Bad file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1
    return-void
.end method

.method public static getCurrentSyncTimestamp(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    const-wide/16 v2, 0x0

    .line 217
    .local v2, "uTimeDifference":J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "TIME_DIFFERENCE"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 257
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    return-wide v4

    .line 221
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "SCloudSyncUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time Difference not stored. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getFileDescriptor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileDescriptor;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backupFileUri"    # Ljava/lang/String;
    .param p2, "fKey"    # Ljava/lang/String;

    .prologue
    .line 369
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 373
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rw"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 405
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 377
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 405
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 389
    :catch_1
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 153
    .local v1, "am":Landroid/accounts/AccountManager;
    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v2

    .line 161
    :cond_1
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 165
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 173
    const/4 v2, 0x0

    aget-object v2, v0, v2

    goto :goto_0
.end method

.method public static isCalledBySCloud(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 189
    const-string v1, "caller_is_syncadapter"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "param":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static visibleSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "isVisible"    # Z

    .prologue
    .line 273
    const-string v0, "SCloudSyncUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visibleSync. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", authority : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    if-nez p0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 293
    invoke-static {p0, p1, p2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 301
    if-nez p2, :cond_0

    .line 305
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
