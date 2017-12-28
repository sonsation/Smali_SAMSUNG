.class public Lcom/android/launcher3/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field public static final CHECK_ALREADY_PERMISSION:I = 0x0

.field public static final CHECK_ERROR_PERMISSION:I = -0x1

.field public static final CHECK_NEED_PERMISSION:I = 0x1

.field public static final PERMISSIONS_STORAGE:[Ljava/lang/String;

.field public static final PERMISSIONS_STORAGE_CONTACTS:[Ljava/lang/String;

.field public static final REQUEST_BACKUP:I = 0x0

.field public static final REQUEST_LAUCHER_EXTRACTOR:I = 0x2

.field public static final REQUEST_RESTORE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PermissionUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher3/util/PermissionUtils;->PERMISSIONS_STORAGE_CONTACTS:[Ljava/lang/String;

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/launcher3/util/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissions(I)[Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 77
    packed-switch p0, :pswitch_data_0

    .line 89
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/util/PermissionUtils;->PERMISSIONS_STORAGE_CONTACTS:[Ljava/lang/String;

    goto :goto_0

    .line 83
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/util/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "PermissionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 55
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lt v2, v1, :cond_0

    if-nez p0, :cond_2

    .line 56
    :cond_0
    const-string v1, "PermissionUtils"

    const-string v2, "hasSelfPermission : permissions, context is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v1, -0x1

    .line 72
    :cond_1
    :goto_0
    return v1

    .line 60
    :cond_2
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 61
    aget-object v2, p1, v0

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    aget-object v2, p1, v0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_4
    const-string v2, "PermissionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasSelfPermission. PermissionList Size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 72
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestPermissions(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;I)V
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "needPermissionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "PermissionUtils"

    const-string v2, "requestPermission : permission has NOT been granted. Requesting permissions."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 118
    :cond_0
    const-string v1, "PermissionUtils"

    const-string v2, "requestPermissions : needPermissionsList is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 123
    .local v0, "needPermission":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "needPermission":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 125
    .restart local v0    # "needPermission":[Ljava/lang/String;
    invoke-static {p0, v0, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/util/ArrayList;)Z
    .locals 7
    .param p0, "activities"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "needPermissionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v3, :cond_1

    .line 94
    :cond_0
    const-string v3, "PermissionUtils"

    const-string v4, "shouldShowRequestPermissionRationale : needPermissionsList is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return v2

    .line 98
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 99
    .local v1, "needPermission":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "needPermission":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 101
    .restart local v1    # "needPermission":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 102
    const-string v4, "PermissionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldShowRequestPermissionRationale. permission : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    aget-object v4, v1, v0

    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    const-string v4, "PermissionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    true : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_2
    const-string v3, "PermissionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    false : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v3

    .line 111
    goto :goto_0
.end method

.method public static verifyPermissions([I)Z
    .locals 5
    .param p0, "grantResults"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 129
    array-length v3, p0

    if-ge v3, v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 133
    :cond_1
    array-length v4, p0

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_2

    aget v0, p0, v3

    .line 134
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "result":I
    :cond_2
    move v1, v2

    .line 139
    goto :goto_0
.end method
