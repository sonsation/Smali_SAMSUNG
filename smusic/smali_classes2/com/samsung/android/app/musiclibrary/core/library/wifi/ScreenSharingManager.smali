.class public Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;
.super Ljava/lang/Object;
.source "ScreenSharingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:[J

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sIsScreenSharingSupported:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->EMPTY_LIST:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenSharingMode(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSupportDlna"    # Z

    .prologue
    .line 232
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSharedItemIds(Landroid/content/Context;Landroid/content/Intent;)[J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 238
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 239
    .local v2, "shareIntent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 240
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getSharedItemIds - ACTION_MULTI_SELECT: extra intent is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->EMPTY_LIST:[J

    .line 266
    :goto_0
    return-object v5

    .line 243
    :cond_0
    const-string/jumbo v5, "share_music_from"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "from":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v5, "share_music_from_player"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 245
    :cond_1
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSharedItemIds from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->EMPTY_LIST:[J

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "shareAction":Ljava/lang/String;
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 250
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 251
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_3

    .line 252
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getSharedItemIds - ACTION_SEND: no selected item."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->EMPTY_LIST:[J

    goto :goto_0

    .line 255
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    .local v4, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-static {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/MediaDbUtils;->getAudioIdFromPath(Landroid/content/Context;Ljava/util/ArrayList;)[J

    move-result-object v5

    goto :goto_0

    .line 258
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_4
    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 259
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 260
    .restart local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 261
    :cond_5
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getSharedItemIds - ACTION_SEND_MULTIPLE: no selected items."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->EMPTY_LIST:[J

    goto :goto_0

    .line 264
    :cond_6
    invoke-static {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/MediaDbUtils;->getAudioIdFromPath(Landroid/content/Context;Ljava/util/ArrayList;)[J

    move-result-object v5

    goto :goto_0

    .line 266
    .end local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_7
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->EMPTY_LIST:[J

    goto/16 :goto_0
.end method

.method private static isScreenSharingConnected(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isDLNAConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isChromeCastConnected(Landroid/content/Context;)Z

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

.method public static isScreenSharingEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isScreenSharingSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->sIsScreenSharingSupported:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 156
    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 157
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I

    move-result v1

    sget v2, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_ALL:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->sIsScreenSharingSupported:Ljava/lang/Boolean;

    .line 160
    .end local v0    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->sIsScreenSharingSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 157
    .restart local v0    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSmartViewChromeCastSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->access$100()Z

    move-result v0

    goto :goto_0
.end method

.method public static isSmartViewVolumeControlSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->access$000()Z

    move-result v0

    goto :goto_0
.end method

.method public static startWfdPickerDialog(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSupportDlna"    # Z

    .prologue
    .line 200
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startWfdPickerDialog() isSupportDlna ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->SUPPORT_SMART_MIRRORING_DIALOG:Z

    if-eqz v4, :cond_0

    .line 205
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.smartmirroring"

    const-string v5, "com.samsung.android.smartmirroring.CastingDialog"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 214
    .end local v0    # "cn":Landroid/content/ComponentName;
    :goto_0
    const-string/jumbo v4, "show_dialog_once"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    const-string/jumbo v4, "tag_write_if_success"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    const-string v4, "more_actions_screen_sharing_mode"

    .line 217
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->getScreenSharingMode(Landroid/content/Context;Z)I

    move-result v5

    .line 216
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startWfdPickerDialog() pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v4, "more_actions_package_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const/high16 v4, 0x34800000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_1
    return-void

    .line 211
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 226
    .restart local v3    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "startWfdPickerDialog : Activity Not found!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
