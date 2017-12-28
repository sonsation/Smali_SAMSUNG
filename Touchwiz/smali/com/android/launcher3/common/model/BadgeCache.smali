.class public Lcom/android/launcher3/common/model/BadgeCache;
.super Ljava/lang/Object;
.source "BadgeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/BadgeCache$CacheKey;
    }
.end annotation


# static fields
.field private static final BADGE_COLUMNS:[Ljava/lang/String;

.field private static final BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

.field public static final BADGE_URI:Landroid/net/Uri;

.field private static final DEBUGGABLE:Z = true

.field private static final INITIAL_BADGE_CAPACITY:I = 0x14

.field private static final TAG:Ljava/lang/String; = "BadgeCache"

.field private static final ZERO:Ljava/lang/Integer;


# instance fields
.field private final mBadges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher3/common/model/BadgeCache$CacheKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    .line 50
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "package"

    aput-object v1, v0, v2

    const-string v1, "class"

    aput-object v1, v0, v3

    const-string v1, "badgecount"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_COLUMNS:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "package"

    aput-object v1, v0, v2

    const-string v1, "class"

    aput-object v1, v0, v3

    const-string v1, "badgecount"

    aput-object v1, v0, v4

    const-string v1, "hidden"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/BadgeCache;->ZERO:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/BadgeCache;->mBadges:Ljava/util/Map;

    .line 91
    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeCache;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method private static isKnoxIdExceptSecurFolder(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 112
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 120
    :try_start_0
    const-class v1, Landroid/content/ContentProvider;

    const-string v3, "maybeAddUserId"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/net/Uri;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "BadgeCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 123
    goto :goto_0

    .line 121
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getBadgeCount(Lcom/android/launcher3/common/model/BadgeCache$CacheKey;)I
    .locals 3
    .param p1, "cacheKey"    # Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/launcher3/common/model/BadgeCache;->mBadges:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 105
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    :cond_0
    return v0
.end method

.method public updateBadgeCounts()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher3/common/model/BadgeCache$CacheKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v5, p0, Lcom/android/launcher3/common/model/BadgeCache;->mBadges:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 136
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/launcher3/common/model/BadgeCache;->ZERO:Ljava/lang/Integer;

    invoke-interface {v1, v6}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 140
    .local v0, "allBadges":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/launcher3/common/model/BadgeCache;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v4

    .line 141
    .local v4, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 145
    .local v3, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/model/BadgeCache;->updateBadgeCounts(Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 146
    goto :goto_1

    .line 147
    .end local v3    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    const-string v5, "BadgeCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateBadgeCounts:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v0
.end method

.method updateBadgeCounts(Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/Map;
    .locals 18
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher3/common/model/BadgeCache$CacheKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    sget-object v2, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    .line 159
    .local v2, "badgeUri":Landroid/net/Uri;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    .line 161
    .local v9, "badges":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    sget-object v1, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/launcher3/common/model/BadgeCache;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 163
    if-nez v2, :cond_0

    move-object v10, v9

    .line 212
    .end local v9    # "badges":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    .local v10, "badges":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    :goto_0
    return-object v10

    .line 165
    .end local v10    # "badges":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    .restart local v9    # "badges":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "noMultiUser"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 169
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSupportBadgeManage()Z

    move-result v17

    .line 170
    .local v17, "supportBadgeManager":Z
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getBadgeSetings()I

    move-result v8

    .line 171
    .local v8, "badgeSettings":I
    const/4 v11, 0x0

    .line 173
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/common/model/BadgeCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v17, :cond_6

    sget-object v3, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 174
    if-eqz v11, :cond_8

    .line 177
    :cond_2
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 178
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 179
    .local v16, "pkgName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 180
    .local v12, "className":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 181
    .local v7, "badgeCount":I
    if-eqz v17, :cond_4

    .line 184
    const/4 v1, 0x3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 185
    .local v15, "hidden":I
    if-eqz v8, :cond_3

    const/4 v1, 0x1

    if-ne v15, v1, :cond_4

    .line 186
    :cond_3
    const/4 v7, 0x0

    .line 189
    .end local v15    # "hidden":I
    :cond_4
    if-eqz v16, :cond_2

    .line 191
    const-string v1, "BadgeCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. updateBadgeCounts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz v12, :cond_2

    if-lez v7, :cond_2

    .line 195
    new-instance v13, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v13, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/common/model/BadgeCache;->mBadges:Ljava/util/Map;

    new-instance v3, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    move-object/from16 v0, p1

    invoke-direct {v3, v13, v0}, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "BadgeCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. updateBadgeCounts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 205
    .end local v7    # "badgeCount":I
    .end local v12    # "className":Ljava/lang/String;
    .end local v13    # "cn":Landroid/content/ComponentName;
    .end local v16    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 206
    .local v14, "e":Ljava/lang/SecurityException;
    :try_start_1
    const-string v1, "BadgeCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    if-eqz v11, :cond_5

    .line 209
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .end local v14    # "e":Ljava/lang/SecurityException;
    :cond_5
    :goto_3
    move-object v10, v9

    .line 212
    .end local v9    # "badges":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    .restart local v10    # "badges":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    goto/16 :goto_0

    .line 173
    .end local v10    # "badges":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    .restart local v9    # "badges":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    :cond_6
    :try_start_2
    sget-object v3, Lcom/android/launcher3/common/model/BadgeCache;->BADGE_COLUMNS:[Ljava/lang/String;

    goto/16 :goto_1

    .line 203
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/common/model/BadgeCache;->mBadges:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 208
    :cond_8
    if-eqz v11, :cond_5

    .line 209
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 208
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_9

    .line 209
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1
.end method
