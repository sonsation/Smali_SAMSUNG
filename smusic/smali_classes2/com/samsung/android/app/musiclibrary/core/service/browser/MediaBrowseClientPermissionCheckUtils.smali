.class public final Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;
.super Ljava/lang/Object;
.source "MediaBrowseClientPermissionCheckUtils.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/browser/ApprovedClientPkgName;
.implements Lcom/samsung/android/app/musiclibrary/core/service/browser/ApprovedClientPkgSHA1;


# static fields
.field private static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final PKG_TEST_MODE:Ljava/lang/String; = "com.google.android.music.experimental.mediasessiondemo"

.field private static final SHA_1:Ljava/lang/String; = "SHA-1"

.field private static final SIGN_TEST_MODE:Ljava/lang/String; = "8983C9C554304ED84244E2CD6DFB2FB6B0105F6D"

.field private static final TAG:Ljava/lang/String; = "SV-MediaBrowser"

.field private static final TEST_MODE:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "list"    # [Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 97
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 101
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    const/4 v1, 0x1

    goto :goto_0

    .line 100
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B

    .prologue
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 44
    .local v0, "b":B
    const-string v4, "0123456789ABCDEF"

    and-int/lit16 v5, v0, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v6, v0, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getSHA1(Landroid/content/pm/Signature;)[B
    .locals 2
    .param p0, "signature"    # Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 37
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 38
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static isValidClient(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 85
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->APPROVED_PKG:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const-string v1, "SV-MediaBrowser"

    const-string v2, "This request is not valid name"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->isValidSignatures(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    const-string v1, "SV-MediaBrowser"

    const-string v2, "This request is not valid sign"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isValidSignatures(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 53
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1

    .line 78
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v5

    .line 56
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const/16 v6, 0x40

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 57
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 60
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v7

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v4, v7, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .local v4, "s":Landroid/content/pm/Signature;
    if-nez v4, :cond_3

    .line 60
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 65
    :cond_3
    :try_start_1
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->getSHA1(Landroid/content/pm/Signature;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->convertToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "hex":Ljava/lang/String;
    const-string v9, "SV-MediaBrowser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Request pkg is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and signatures : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v9, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->APPROVED_SIGN_SHA1:[Ljava/lang/String;

    invoke-static {v9, v1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 68
    const-string v9, "SV-MediaBrowser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Approved ! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    const/4 v5, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "hex":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_2
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 75
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "s":Landroid/content/pm/Signature;
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "SV-MediaBrowser"

    const-string v7, "This request is not exist pkg name"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
