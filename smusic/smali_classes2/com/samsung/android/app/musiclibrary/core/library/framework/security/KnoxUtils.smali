.class public final Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;
.super Ljava/lang/Object;
.source "KnoxUtils.java"


# static fields
.field private static final KNOX_MOVE_IN_BACKGROUND:Z = false

.field private static final MAXIMUM_FILES_FOR_MOVETOKNOX:I = 0x1f4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getIntFromSettings(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 275
    if-eqz p0, :cond_0

    .line 276
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isAfwForBYOD(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->USER_OWNER:I

    invoke-static {v1, p1, p2, v2}, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    .line 288
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 282
    .restart local p2    # "defaultValue":I
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getKnoxInfoForAppBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "KnoxMode"

    const-string v3, "Knox is not supported!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getRealFilePath(Landroid/content/Context;Landroid/net/Uri;[J)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "list"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v7, "filePath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 168
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const-string v0, "_id"

    .line 170
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 169
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    if-nez v6, :cond_1

    .line 173
    const-string v0, "KnoxMode"

    const-string/jumbo v1, "requestMoveToKnox fail cause c is null. This should not happened. Please check input list and provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz v6, :cond_0

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_0
    :goto_0
    return-object v7

    .line 178
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 179
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 181
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, "srcPath":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 188
    .end local v8    # "srcPath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 188
    :cond_4
    if-eqz v6, :cond_0

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static isAfwForBYOD(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 236
    if-eqz p0, :cond_0

    .line 237
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 238
    .local v1, "um":Landroid/os/UserManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserCount()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 239
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 240
    .local v2, "up":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 241
    .local v0, "mine":Landroid/os/UserHandle;
    if-eqz v0, :cond_0

    sget-object v4, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 242
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 243
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 249
    .end local v0    # "mine":Landroid/os/UserHandle;
    .end local v1    # "um":Landroid/os/UserManager;
    .end local v2    # "up":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isAfwForCL(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    const-string v3, "device_policy"

    .line 255
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 256
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 258
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_1

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 260
    .local v2, "name":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    const/4 v3, 0x1

    .line 266
    .end local v0    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v2    # "name":Landroid/content/ComponentName;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAndroidForWorkMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isAfwForBYOD(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isAfwForCL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableMoveToKnox(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 87
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->IS_MASS_MODEL:Z

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    const-string v1, "KnoxMode"

    const-string v2, "isEnableMoveToKnox() - knox2.0 is enable!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isSupportKnoxMove(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "KnoxMode"

    const-string v2, "isEnableMoveToKnox() - knox2.0 container is installed!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    const-string v1, "KnoxMode"

    const-string v2, "isEnableMoveToKnox() - knox2.0 mode is on!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEnalbeMoveToPersonal(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 112
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->IS_MASS_MODEL:Z

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    const-string v1, "KnoxMode"

    const-string v2, "isEnalbeMoveToPsersonal() - knox2.0 is enable!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isSupportKnoxMove(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "KnoxMode"

    const-string v2, "isEnalbeMoveToPsersonal() - knox2.0 container is installed!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v0, "KnoxMode"

    const-string v1, "isEnalbeMoveToPsersonal() - knox2.0 mode is on!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isKnoxModeOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 135
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->IS_MASS_MODEL:Z

    if-eqz v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->getKnoxInfoForAppBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "true"

    const-string v3, "isKnoxMode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isSupportKnoxMove(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->getKnoxInfoForAppBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    const-string v2, "isSupportMoveTo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportSecureFolder(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    const-string v0, "isSupportSecureFolder"

    .line 229
    .local v0, "securefolder":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 230
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static moveInternal(Landroid/content/Context;Landroid/net/Uri;[JII)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "list"    # [J
    .param p3, "containerid"    # I
    .param p4, "maxErrorStringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/16 v7, 0x1f4

    const/4 v8, 0x0

    .line 197
    array-length v3, p2

    if-le v3, v7, :cond_1

    .line 198
    const-string v3, "KnoxMode"

    const-string v6, "moveInternal() The maximum number of files that can be moved at one time 500"

    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 202
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 201
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 205
    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 225
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;[J)Ljava/util/ArrayList;

    move-result-object v0

    .line 211
    .local v0, "filePath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;-><init>(Landroid/content/Context;)V

    .line 214
    .local v2, "rm":Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isSupportSecureFolder(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    sget v3, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_APP_TYPE_MUSIC:I

    invoke-virtual {v2, v3, v0, v0, p3}, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide v4

    .line 221
    .local v4, "threadId":J
    :goto_1
    const-string v3, "KnoxMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RequestApp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_APP_TYPE_MUSIC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , threadId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , containerID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    .end local v4    # "threadId":J
    :cond_2
    sget v3, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_APP_TYPE_MUSIC:I

    invoke-virtual {v2, v3, v0, v0}, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v4

    .restart local v4    # "threadId":J
    goto :goto_1
.end method

.method public static startMoveFiles(Landroid/app/Activity;Landroid/net/Uri;[JII)V
    .locals 3
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "items"    # [J
    .param p3, "containerid"    # I
    .param p4, "maxErrorStringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 56
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->IS_MASS_MODEL:Z

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 60
    :cond_0
    if-nez p0, :cond_1

    .line 61
    const-string v1, "KnoxMode"

    const-string/jumbo v2, "startMoveFiles() - Activity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "context":Landroid/content/Context;
    const-string v1, "KnoxMode"

    const-string v2, "knox2.0 - startMoveFiles!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->moveInternal(Landroid/content/Context;Landroid/net/Uri;[JII)V

    goto :goto_0
.end method
