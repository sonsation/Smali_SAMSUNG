.class Lcom/android/server/pm/ShortcutPackage;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl1;,
        Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags__LambdaImpl0;,
        Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl0;,
        Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl1;,
        Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl2;
    }
.end annotation


# static fields
.field private static final ATTR_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTR_BITMAP_PATH:Ljava/lang/String; = "bitmap-path"

.field private static final ATTR_CALL_COUNT:Ljava/lang/String; = "call-count"

.field private static final ATTR_DISABLED_MESSAGE:Ljava/lang/String; = "dmessage"

.field private static final ATTR_DISABLED_MESSAGE_RES_ID:Ljava/lang/String; = "dmessageid"

.field private static final ATTR_DISABLED_MESSAGE_RES_NAME:Ljava/lang/String; = "dmessagename"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_RES_ID:Ljava/lang/String; = "icon-res"

.field private static final ATTR_ICON_RES_NAME:Ljava/lang/String; = "icon-resname"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INTENT_LEGACY:Ljava/lang/String; = "intent"

.field private static final ATTR_INTENT_NO_EXTRA:Ljava/lang/String; = "intent-base"

.field private static final ATTR_LAST_RESET:Ljava/lang/String; = "last-reset"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NAME_XMLUTILS:Ljava/lang/String; = "name"

.field private static final ATTR_RANK:Ljava/lang/String; = "rank"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field private static final ATTR_TEXT_RES_ID:Ljava/lang/String; = "textid"

.field private static final ATTR_TEXT_RES_NAME:Ljava/lang/String; = "textname"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_TITLE_RES_ID:Ljava/lang/String; = "titleid"

.field private static final ATTR_TITLE_RES_NAME:Ljava/lang/String; = "titlename"

.field private static final KEY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field private static final KEY_BITMAP_BYTES:Ljava/lang/String; = "bitmapBytes"

.field private static final KEY_DYNAMIC:Ljava/lang/String; = "dynamic"

.field private static final KEY_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final KEY_PINNED:Ljava/lang/String; = "pinned"

.field private static final NAME_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_INTENT_EXTRAS_LEGACY:Ljava/lang/String; = "intent-extras"

.field static final TAG_ROOT:Ljava/lang/String; = "package"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_STRING_ARRAY_XMLUTILS:Ljava/lang/String; = "string-array"

.field private static final TAG_VERIFY:Ljava/lang/String; = "ShortcutService.verify"


# instance fields
.field private mApiCallCount:I

.field private mLastKnownForegroundElapsedTime:J

.field private mLastResetTime:J

.field private final mPackageUid:I

.field final mShortcutRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mShortcutTypeAndRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$1(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$2(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$4(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$5(Landroid/content/pm/ShortcutInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic -com_android_server_pm_ShortcutPackage_lambda$6(Landroid/content/pm/ShortcutInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1

    if-eqz p4, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl1;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl1;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    iget-object v0, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p4

    goto :goto_0
.end method

.method private addShortcutInner(Landroid/content/pm/ShortcutInfo;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcut(ILandroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private areAllActivitiesStillEnabled()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    return v7

    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-ltz v2, :cond_3

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v5

    invoke-virtual {v3, v0, v5}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    move-result v5

    if-nez v5, :cond_1

    return v6

    :cond_3
    return v7
.end method

.method private deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    if-eqz p2, :cond_1

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    return-object v0

    :cond_2
    return-object v2

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    return-object v2
.end method

.method private deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 3

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/ShortcutService;->removeIcon(ILandroid/content/pm/ShortcutInfo;)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_0
    return-object v0
.end method

.method private disableDynamicWithId(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manifest shortcut ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " may not be manipulated via APIs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private ensureNotImmutable(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/ComponentName;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo v7, "name"

    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v7

    invoke-direct {v3, p1, v7, v2}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    const-string v7, "call-count"

    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    const-string/jumbo v7, "last-reset"

    invoke-static {p2, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_4

    :cond_1
    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v1, 0x1

    if-ne v0, v7, :cond_3

    const-string/jumbo v7, "package-info"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "shortcut"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v7

    invoke-static {p2, v2, v7}, Lcom/android/server/pm/ShortcutPackage;->parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    iget-object v7, v3, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {v0, v5}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method private static parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo v5, "intent-base"

    invoke-static {p0, v5}, Lcom/android/server/pm/ShortcutService;->parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_3

    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "extras"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    :cond_3
    return-object v1
.end method

.method private static parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/16 v31, 0x0

    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    const/16 v21, 0x0

    const/16 v18, 0x0

    const-string/jumbo v3, "id"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "activity"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    const-string/jumbo v3, "title"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v3, "titleid"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v3, "titlename"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v3, "text"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v3, "textid"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v3, "textname"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v3, "dmessage"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v3, "dmessageid"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v3, "dmessagename"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v3, "intent"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v30

    const-string/jumbo v3, "rank"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v20, v0

    const-string/jumbo v3, "timestamp"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v22

    const-string/jumbo v3, "flags"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v24, v0

    const-string/jumbo v3, "icon-res"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v25, v0

    const-string/jumbo v3, "icon-resname"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v3, "bitmap-path"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v33

    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    const/4 v3, 0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    move/from16 v0, v35

    if-ne v0, v3, :cond_1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v33

    if-le v3, v0, :cond_6

    :cond_1
    const/4 v3, 0x2

    move/from16 v0, v35

    if-ne v0, v3, :cond_0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v28

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v3, "intent-extras"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v31

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "intent"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "extras"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v21

    goto :goto_0

    :cond_4
    const-string v3, "categories"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "string-array"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "categories"

    const-string/jumbo v4, "name"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "string-array"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v18, Landroid/util/ArraySet;

    array-length v3, v2

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>(I)V

    const/16 v29, 0x0

    :goto_1
    array-length v3, v2

    move/from16 v0, v29

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v29

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    :cond_5
    move/from16 v0, v28

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    :cond_6
    if-eqz v30, :cond_7

    invoke-static/range {v30 .. v31}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance v3, Landroid/content/pm/ShortcutInfo;

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/Intent;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/content/Intent;

    const/4 v8, 0x0

    move/from16 v4, p2

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v27}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private publishManifestShortcuts(Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v10, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v10

    if-eqz v10, :cond_1

    if-nez v8, :cond_0

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    :cond_0
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_8

    const/4 v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    const/4 v9, 0x0

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "ShortcutService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Shortcut with ID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " exists but is not from AndroidManifest.xml, not updating."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    :cond_6
    if-eqz v3, :cond_7

    if-eqz v9, :cond_3

    :cond_7
    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->addShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    if-nez v3, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    :goto_4
    if-ltz v1, :cond_9

    const/4 v0, 0x1

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v2, v10, v11, v12}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    return v0
.end method

.method private pushOutExcessShortcuts()Z
    .locals 9

    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v6, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    :goto_0
    if-ltz v5, :cond_3

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v4, :cond_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_1
    if-lt v2, v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "Found manifest shortcuts in excess list."

    invoke-virtual {v6, v8}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;)Z

    goto :goto_2

    :cond_3
    return v1
.end method

.method private removeOrphans()V
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-ltz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->deleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v8, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v5

    :cond_0
    if-nez v5, :cond_1

    return-void

    :cond_1
    const-string/jumbo v5, "shortcut"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "id"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v5, "activity"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    const-string/jumbo v5, "title"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "titleid"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitleResId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v5, "titlename"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitleResName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "text"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "textid"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTextResId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v5, "textname"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTextResName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "dmessage"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "dmessageid"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResourceId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v5, "dmessagename"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "timestamp"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    if-eqz p2, :cond_3

    const-string/jumbo v5, "flags"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, -0xe

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "categories"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const-string v6, "categories"

    invoke-static {v5, v6, p0}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v5, "categories"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntentsNoExtras()[Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtrases()[Landroid/os/PersistableBundle;

    move-result-object v2

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_4

    const-string/jumbo v5, "intent"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "intent-base"

    aget-object v6, v3, v1

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V

    const-string/jumbo v5, "extras"

    aget-object v6, v2, v1

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string/jumbo v5, "intent"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "rank"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v5, "flags"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v5, "icon-res"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v5, "icon-resname"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v5, "bitmap-path"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v5, "extras"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string/jumbo v5, "shortcut"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private sortShortcutsToActivities()Landroid/util/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private verifyRanksSequential(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v3

    if-eq v3, v1, :cond_0

    const/4 v0, 0x1

    const-string v3, "ShortcutService.verify"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": shortcut "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rank="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but expected to be "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method synthetic -com_android_server_pm_ShortcutPackage_lambda$3(Lcom/android/server/pm/ShortcutLauncher;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    if-nez v3, :cond_2

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public addOrUpdateDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    const-string v3, "add/setDynamicShortcuts() cannot publish disabled shortcuts"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->addShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    goto :goto_0
.end method

.method public adjustRanks()V
    .locals 14

    const/4 v13, 0x0

    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v8, v12, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v4

    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v1, v12, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v9, v4, v5}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    invoke-virtual {v9, v13}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    :goto_1
    if-ltz v3, :cond_6

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    invoke-static {v2, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v1, 0x0

    move v7, v6

    :goto_2
    if-ge v1, v10, :cond_5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v12

    if-eqz v12, :cond_3

    move v6, v7

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "Non-dynamic shortcut found."

    invoke-virtual {v8, v12}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    move v6, v7

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v11, v7

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v12

    if-eq v12, v7, :cond_2

    invoke-virtual {v9, v4, v5}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    invoke-virtual {v9, v7}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public clearAllImplicitRanks()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->clearImplicitRankAndRankChangedFlag()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteAllDynamicShortcuts()V
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    invoke-virtual {v4, v6}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    :cond_2
    return-void
.end method

.method public deleteDynamicWithId(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public disableWithId(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, p4}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/content/pm/ShortcutInfo;->setDisabledMessage(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/content/pm/ShortcutInfo;->setDisabledMessageResId(I)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Package: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  UID: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Calls: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Last known FG: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Last reset: ["

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, "] "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {v8, v9}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  Shortcuts:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->toInsecureString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "      "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "bitmap size="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    add-long/2addr v6, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Total bitmap size: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, " ("

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v8, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v8, v8, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, ")"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-wide/16 v10, 0x0

    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_4

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    add-int/lit8 v1, v1, 0x1

    new-instance v9, Ljava/io/File;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v10, v12

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v9, "dynamic"

    invoke-virtual {v5, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v9, "manifest"

    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v9, "pinned"

    invoke-virtual {v5, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "bitmaps"

    invoke-virtual {v5, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "bitmapBytes"

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v5
.end method

.method public enableWithId(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method public enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v6, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v8, 0x4

    invoke-direct {v0, v8}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    invoke-direct {p0, v0, v8, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    invoke-direct {p0, v0, v8, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_2
    if-ltz v1, :cond_8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_4

    if-eq p2, v11, :cond_3

    const-string v8, "Activity must not be null at this point"

    invoke-virtual {v6, v8}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    if-nez v5, :cond_5

    if-eq p2, v11, :cond_3

    invoke-direct {p0, v0, v2, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eq p2, v11, :cond_3

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, -0x1

    invoke-direct {p0, v0, v4, v8}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    :cond_7
    invoke-direct {p0, v0, v2, v10}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_4
    if-ltz v1, :cond_9

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/pm/ShortcutService;->enforceMaxActivityShortcuts(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method public ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V

    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v6, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    if-nez p4, :cond_2

    const/4 v3, 0x0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    if-eqz p4, :cond_3

    if-eqz v3, :cond_4

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v2, :cond_5

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v6

    invoke-virtual {v4, p4, v6, p5}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v5, p3}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-nez v2, :cond_6

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-void
.end method

.method public findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method getAllShortcutsForTest()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getApiCallCount()I
    .locals 11

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutService;->getUidLastForegroundElapsedTimeLocked(I)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v0

    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v6, v2

    if-lez v5, :cond_2

    const-string v5, "ShortcutService"

    const-string v6, "Clock rewound"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v2, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    iput v10, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v5

    :cond_2
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v6, v0

    if-gez v5, :cond_3

    iput v10, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    :cond_3
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v5
.end method

.method public getOwnerUserId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v0

    return v0
.end method

.method public getPackageResources()Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    return v0
.end method

.method public getUsedBitmapFiles()Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/ShortcutPackage;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public hasNonManifestShortcuts()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method protected onRestoreBlocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method protected onRestored()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    return-void
.end method

.method public refreshPinnedFlags()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags__LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags__LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    return-void
.end method

.method public rescanPackageIfNeeded(ZZ)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v10, v14, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v10}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v14, v14, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v14, 0x0

    const/16 v15, 0xe

    invoke-virtual {v10, v15, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v14

    :cond_0
    :try_start_1
    const-string v14, "com.android.settings"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez p1, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    if-eqz v5, :cond_2

    :cond_2
    const/16 v14, 0xe

    invoke-virtual {v10, v14, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    const/4 v7, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v14, v14, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v16

    invoke-static/range {v14 .. v16}, Lcom/android/server/pm/ShortcutParser;->parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    :goto_0
    if-nez v7, :cond_4

    const/4 v6, 0x0

    :goto_1
    if-eqz p1, :cond_5

    if-nez v6, :cond_5

    const/4 v14, 0x0

    return v14

    :cond_3
    if-nez v5, :cond_1

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()I

    move-result v14

    iget v15, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v14, v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/ShortcutPackageInfo;->getLastUpdateTime()J

    move-result-wide v14

    iget-wide v0, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->areAllActivitiesStillEnabled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    const/16 v15, 0xe

    invoke-virtual {v10, v15, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v14

    :catchall_0
    move-exception v14

    const/16 v15, 0xe

    invoke-virtual {v10, v15, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v14

    :catch_0
    move-exception v3

    const-string v14, "ShortcutService"

    const-string v15, "Failed to load shortcuts from AndroidManifest.xml."

    invoke-static {v14, v15, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/android/server/pm/ShortcutPackageInfo;->updateVersionInfo(Landroid/content/pm/PackageInfo;)V

    const/4 v2, 0x0

    if-nez p1, :cond_9

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    :goto_2
    if-ltz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v15

    invoke-virtual {v10, v14, v15}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "ShortcutService"

    const-string v15, "%s is no longer main activity. Disabling shorcut %s."

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v16, v18

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/pm/ShortcutPackage;->disableDynamicWithId(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    :cond_8
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->hasAnyResources()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v14

    if-nez v14, :cond_c

    if-nez v9, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v9

    if-nez v9, :cond_b

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/pm/ShortcutPackage;->publishManifestShortcuts(Ljava/util/List;)Z

    move-result v14

    or-int/2addr v2, v14

    if-eqz v7, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->pushOutExcessShortcuts()Z

    move-result v14

    or-int/2addr v2, v14

    :cond_a
    invoke-virtual {v10}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v15

    invoke-virtual {v10, v14, v15}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    :goto_4
    return v2

    :cond_b
    invoke-virtual {v11, v9}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceIds(Landroid/content/res/Resources;)V

    :cond_c
    const/4 v2, 0x1

    invoke-virtual {v10}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    goto :goto_3

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    goto :goto_4
.end method

.method public resetRateLimiting()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-lez v0, :cond_0

    iput v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    :cond_0
    return-void
.end method

.method public resetRateLimitingForCommandLineNoSaving()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    return-void
.end method

.method public resetThrottling()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return-void
.end method

.method public resolveResourceStrings()V
    .locals 8

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v4, v2}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget v2, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "package"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "name"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "call-count"

    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    int-to-long v4, v3

    invoke-static {p1, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v2, "last-reset"

    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {p1, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-static {p1, v2, p2}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "package"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public tryApiCall()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount()I

    move-result v1

    iget v2, v0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    const/4 v1, 0x1

    return v1
.end method

.method public verifyStates()V
    .locals 11

    invoke-super {p0}, Lcom/android/server/pm/ShortcutPackageItem;->verifyStates()V

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    :goto_0
    if-ltz v6, :cond_1

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v9, v9, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v9

    if-le v8, v9, :cond_0

    const/4 v2, 0x1

    const-string v9, "ShortcutService.verify"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ": activity "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " has "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " shortcuts."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v8, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl0;

    invoke-direct {v8}, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl0;-><init>()V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl1;

    invoke-direct {v8}, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl1;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl2;

    invoke-direct {v8}, Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl2;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_1
    if-ltz v3, :cond_c

    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v8

    :goto_2
    if-nez v8, :cond_2

    const/4 v2, 0x1

    const-string v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not manifest, dynamic or pinned."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v2, 0x1

    const-string v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is both dynamic and manifest at the same time."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v2, 0x1

    const-string v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has null activity."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_6
    :goto_3
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v8

    if-eqz v8, :cond_7

    const/4 v2, 0x1

    const-string v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is floating, but has rank="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    if-eqz v8, :cond_8

    const/4 v2, 0x1

    const-string v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " still has an icon"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v2, 0x1

    const-string v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has both resource and bitmap icons"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x1

    const-string v8, "ShortcutService.verify"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not floating, but is disabled."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_c
    if-eqz v2, :cond_d

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "See logcat for errors"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_d
    return-void
.end method
