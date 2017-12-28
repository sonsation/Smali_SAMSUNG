.class public Lcom/android/launcher3/common/base/item/IconInfo;
.super Lcom/android/launcher3/common/base/item/ItemInfo;
.source "IconInfo.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DOWNLOADED_FLAG:I = 0x1

.field public static final FLAG_AUTOINTALL_ICON:I = 0x2

.field public static final FLAG_DISABLED_BY_PUBLISHER:I = 0x40

.field public static final FLAG_DISABLED_EXTERNAL_STORAGE:I = 0x20

.field public static final FLAG_DISABLED_NOT_AVAILABLE:I = 0x2

.field public static final FLAG_DISABLED_QUIET_USER:I = 0x8

.field public static final FLAG_DISABLED_SAFEMODE:I = 0x1

.field public static final FLAG_DISABLED_SUSPENDED:I = 0x4

.field public static final FLAG_INSTALL_SESSION_ACTIVE:I = 0x8

.field public static final FLAG_OMC_RESTORED_ICON:I = 0x20

.field public static final FLAG_RESTORED_ICON:I = 0x1

.field public static final FLAG_RESTORE_STARTED:I = 0x10

.field public static final FLAG_SCLOUD_RESTORED_ICON:I = 0x4

.field public static final UPDATED_SYSTEM_APP_FLAG:I = 0x2


# instance fields
.field public customIcon:Z

.field public disabledMessage:Ljava/lang/CharSequence;

.field public firstInstallTime:J

.field public flags:I

.field public iconResource:Landroid/content/Intent$ShortcutIconResource;

.field public intent:Landroid/content/Intent;

.field public isAppShortcut:Z

.field public isAppsButton:Z

.field public isDisabled:I

.field public mIcon:Landroid/graphics/Bitmap;

.field private mInstallProgress:I

.field private mOriginalIcon:Landroid/graphics/Bitmap;

.field public promisedIntent:Landroid/content/Intent;

.field public status:I

.field public usingFallbackIcon:Z

.field public usingLowResIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 159
    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 176
    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 182
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppShortcut:Z

    .line 201
    return-void
.end method

.method public constructor <init>(JLandroid/content/ComponentName;JJLcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "cmp"    # Landroid/content/ComponentName;
    .param p4, "container"    # J
    .param p6, "screenRank"    # J
    .param p8, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 159
    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 176
    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 182
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppShortcut:Z

    .line 272
    iput-wide p1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 273
    iput-object p3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 274
    iput-wide p4, p0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 275
    iput-wide p6, p0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 276
    iput-object p8, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 279
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 159
    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 176
    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 182
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppShortcut:Z

    .line 215
    iget-object v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 216
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 217
    iget-object v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 222
    :cond_0
    iget-boolean v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 223
    iget v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 224
    iget-wide v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    .line 225
    iget-object v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 226
    iget v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    .line 227
    iget v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 159
    iput v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 176
    iput v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 182
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppShortcut:Z

    .line 254
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 255
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 257
    invoke-static {p2}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 258
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    .line 259
    invoke-virtual {p4, p2}, Lcom/android/launcher3/common/model/IconCache;->getPackageItemTitle(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 261
    .local v0, "title":Ljava/lang/CharSequence;
    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 263
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 267
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 268
    iput-object p3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/model/IconCache;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p5, "quietModeEnabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 159
    iput v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 176
    iput v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 182
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 184
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppShortcut:Z

    .line 235
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 236
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 238
    invoke-static {p2}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 239
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    .line 240
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 243
    :cond_0
    if-eqz p5, :cond_1

    .line 244
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 247
    :cond_1
    invoke-virtual {p4, p0, p2, v2}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Z)V

    .line 248
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 249
    iput-object p3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/Bitmap;
    .param p5, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 207
    invoke-static {p2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 208
    iput-object p3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 209
    iput-object p4, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 210
    iput-object p5, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 211
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 2
    .param p1, "shortcutInfo"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 159
    iput v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 176
    iput v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 182
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppShortcut:Z

    .line 286
    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 287
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 288
    iput v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/base/item/IconInfo;->updateFromDeepShortcutInfo(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 290
    return-void
.end method

.method public static dumpIconInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 542
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " customIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " firstInstallTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 545
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 547
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    return-void
.end method

.method public static fromActivityInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 6
    .param p0, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 437
    new-instance v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v0}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 438
    .local v0, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 439
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 440
    iget-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {p1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getCSCPackageItemText(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 441
    .local v1, "title":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 444
    :cond_0
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 445
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 446
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 447
    iput-boolean v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 448
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 449
    iput v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 450
    invoke-static {p0}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 451
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    .line 452
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    iget v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 455
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    iget v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 458
    :cond_2
    return-object v0
.end method

.method private static getCSCPackageItemText(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 509
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 510
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 514
    :cond_0
    return-object v1
.end method

.method public static initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I
    .locals 3
    .param p0, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 496
    .local v0, "appFlags":I
    const/4 v1, 0x0

    .line 497
    .local v1, "flags":I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    .line 498
    or-int/lit8 v1, v1, 0x1

    .line 500
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 501
    or-int/lit8 v1, v1, 0x2

    .line 504
    :cond_0
    return v1
.end method

.method public static makeLaunchIntent(Landroid/content/ComponentName;J)Landroid/content/Intent;
    .locals 3
    .param p0, "cn"    # Landroid/content/ComponentName;
    .param p1, "serialNumber"    # J

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 488
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 489
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 490
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "profile"

    .line 491
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static makeLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 482
    invoke-static {p0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 483
    .local v0, "serialNumber":J
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/ComponentName;J)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected getBadgedIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/common/model/IconCache;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "unbadgedBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "shortcutInfo"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    .param p3, "cache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    new-instance v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v0}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 326
    .local v0, "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 327
    invoke-virtual {p2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 329
    :try_start_0
    invoke-virtual {p2, p4}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p3, v0, v2, v3}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    iget-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2, p4}, Lcom/android/launcher3/util/BitmapUtils;->badgeWithBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    return-object v2

    .line 330
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {p1, v2, p4}, Lcom/android/launcher3/util/BitmapUtils;->badgeIconForUser(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public getDeepShortcutId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/item/IconInfo;->getPromisedIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shortcut_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/common/model/IconCache;->getIcon(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getInstallProgress()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mInstallProgress:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getOriginalIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mOriginalIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPromisedIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public hasStatusFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 418
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPromise()Z
    .locals 1

    .prologue
    .line 423
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 462
    new-instance v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v0}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 463
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/base/item/IconInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 464
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 465
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 466
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_0
    iput-object v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 467
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 468
    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    iput v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    .line 469
    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    iput v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 470
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :cond_0
    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 471
    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    iput v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    .line 472
    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    iput v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 473
    return-object v0

    :cond_1
    move-object v1, v2

    .line 466
    goto :goto_0
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 380
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 382
    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "titleStr":Ljava/lang/String;
    :goto_0
    const-string v3, "title"

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "uri":Ljava/lang/String;
    :goto_1
    const-string v3, "intent"

    invoke-virtual {p2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v3, "restored"

    iget v4, p0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-nez v3, :cond_5

    .line 390
    const-string v3, "iconType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    :goto_2
    iget-boolean v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppShortcut:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-ne v3, v6, :cond_7

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mOriginalIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 400
    iget-object v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mOriginalIcon:Landroid/graphics/Bitmap;

    invoke-static {p2, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 407
    :cond_1
    :goto_3
    return-void

    .end local v0    # "titleStr":Ljava/lang/String;
    .end local v1    # "uri":Ljava/lang/String;
    :cond_2
    move-object v0, v2

    .line 382
    goto :goto_0

    .line 385
    .restart local v0    # "titleStr":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_1

    .line 392
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_5
    const-string v3, "iconType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 393
    const-string v3, "iconPackage"

    iget-object v4, p0, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v3, "iconResource"

    iget-object v4, p0, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 402
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p2, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 404
    :cond_7
    iget v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v3, :cond_1

    .line 405
    const-string v3, "icon"

    check-cast v2, [B

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_3
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 339
    return-void
.end method

.method public setInstallProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 432
    iput p1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mInstallProgress:I

    .line 433
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    .line 434
    return-void
.end method

.method public setOriginalIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mOriginalIcon:Landroid/graphics/Bitmap;

    .line 350
    return-void
.end method

.method public shouldUseLowResIcon()Z
    .locals 4

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toComponentKey()Lcom/android/launcher3/util/ComponentKey;
    .locals 3

    .prologue
    .line 477
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    .line 533
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromDeepShortcutInfo(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 7
    .param p1, "shortcutInfo"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 295
    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 297
    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 298
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 301
    :cond_0
    invoke-static {p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 302
    invoke-virtual {v5, v1, v6}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 303
    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    iget v5, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v5, v5, -0x41

    iput v5, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 308
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/common/base/item/IconInfo;->disabledMessage:Ljava/lang/CharSequence;

    .line 311
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    .line 312
    .local v2, "launcherAppState":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->getShortcutIconDrawable(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 314
    .local v4, "unbadgedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    .line 315
    .local v0, "cache":Lcom/android/launcher3/common/model/IconCache;
    if-nez v4, :cond_2

    .line 316
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 318
    .local v3, "unbadgedBitmap":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {p0, v3, p1, v0, p2}, Lcom/android/launcher3/common/base/item/IconInfo;->getBadgedIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/common/model/IconCache;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 319
    return-void

    .line 306
    .end local v0    # "cache":Lcom/android/launcher3/common/model/IconCache;
    .end local v2    # "launcherAppState":Lcom/android/launcher3/LauncherAppState;
    .end local v3    # "unbadgedBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "unbadgedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v5, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    goto :goto_0

    .line 317
    .restart local v0    # "cache":Lcom/android/launcher3/common/model/IconCache;
    .restart local v2    # "launcherAppState":Lcom/android/launcher3/LauncherAppState;
    .restart local v4    # "unbadgedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {v4, p2}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1
.end method

.method public updateIcon(Lcom/android/launcher3/common/model/IconCache;)V
    .locals 1
    .param p1, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/item/IconInfo;->shouldUseLowResIcon()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;Z)V

    .line 362
    return-void
.end method

.method public updateIcon(Lcom/android/launcher3/common/model/IconCache;Z)V
    .locals 2
    .param p1, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p2, "useLowRes"    # Z

    .prologue
    .line 365
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p1, p0, v0, v1, p2}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 369
    :cond_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public updateTitleAndIcon(Lcom/android/launcher3/common/model/IconCache;)V
    .locals 3
    .param p1, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 372
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 374
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/item/IconInfo;->shouldUseLowResIcon()Z

    move-result v2

    .line 373
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 376
    :cond_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    goto :goto_0
.end method
