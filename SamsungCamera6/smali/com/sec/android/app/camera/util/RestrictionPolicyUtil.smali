.class public Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;
.super Ljava/lang/Object;
.source "RestrictionPolicyUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAudioRecordRestricted(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v1, "isAudioRecordAllowed"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isRestrictedByPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCameraRestricted(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v1, "isCameraEnabled"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isRestrictedByPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMicroPhoneRestricted(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v1, "isMicrophoneEnabled"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isRestrictedByPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isRestrictedByPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/String;

    const-string v3, "true"

    aput-object v3, v4, v8

    move-object v3, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isSdCardWriteRestricted(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v1, "isSDCardWriteAllowed"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isRestrictedByPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVideoRecordRestricted(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v1, "isVideoRecordAllowed"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isRestrictedByPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
