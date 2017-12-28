.class public Lcom/android/launcher3/common/compat/UserManagerCompatVL;
.super Lcom/android/launcher3/common/compat/UserManagerCompatV17;
.source "UserManagerCompatVL.java"


# static fields
.field private static final USER_CREATION_TIME_KEY:Ljava/lang/String; = "user_creation_time_"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/compat/UserManagerCompatV17;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 9

    .prologue
    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v0

    .line 50
    .local v0, "isKnox":Z
    new-instance v6, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v6}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    .line 51
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mUserToSerialMap:Ljava/util/HashMap;

    .line 52
    iget-object v6, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    .line 53
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    if-eqz v5, :cond_2

    .line 54
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 55
    .local v1, "user":Landroid/os/UserHandle;
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 59
    .local v2, "serial":J
    invoke-static {v1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    .line 60
    .local v4, "userCompat":Lcom/android/launcher3/common/compat/UserHandleCompat;
    iget-object v7, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, v2, v3, v4}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 61
    iget-object v7, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    .end local v0    # "isKnox":Z
    .end local v1    # "user":Landroid/os/UserHandle;
    .end local v2    # "serial":J
    .end local v4    # "userCompat":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0    # "isKnox":Z
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    return-void
.end method

.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "unbadged"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 99
    if-nez p2, :cond_0

    .line 102
    .end local p1    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-object p1

    .restart local p1    # "label":Ljava/lang/CharSequence;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method

.method public getUserCreationTime(Lcom/android/launcher3/common/compat/UserHandleCompat;)J
    .locals 6
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 107
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserCreationTime(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 116
    :goto_0
    return-wide v2

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 110
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 112
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user_creation_time_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    :cond_1
    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mUsers:Lcom/android/launcher3/util/LongArrayMap;

    if-eqz v5, :cond_0

    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    iget-object v5, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    monitor-exit p0

    .line 89
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    :goto_0
    return-object v4

    .line 75
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v5, p0, Lcom/android/launcher3/common/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    .line 78
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    if-nez v3, :cond_1

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 75
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 81
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_1
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v1

    .line 82
    .local v1, "isKnox":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v0, "compatUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 84
    .local v2, "user":Landroid/os/UserHandle;
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 87
    :cond_3
    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "user":Landroid/os/UserHandle;
    :cond_4
    move-object v4, v0

    .line 89
    goto :goto_0
.end method
