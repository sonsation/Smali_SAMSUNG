.class final Lcom/android/server/am/MultiWindowSettingsObserver;
.super Landroid/database/ContentObserver;
.source "MultiWindowSettingsObserver.java"


# static fields
.field private static final CHANGED_FOR_ALL_USERS:I = 0x1

.field private static final CHANGED_FOR_SINGLE_USER:I = 0x2

.field private static final CHANGED_NONE:I = 0x0

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MultiWindowSettingsObserver"

.field private static final sGlobalSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sIntegerDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMultiWindowSettingsRepository:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSecureSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSecureSettingToTypeMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSystemFeaturesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSystemFeaturesRepository:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSystemSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSystemSettingToTypeMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sVolatileSettingToTypeMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private final mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

.field private final mMultiWindowSettings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemFeaturesRepository:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sVolatileSettingToTypeMapForUser:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemFeaturesList:Ljava/util/ArrayList;

    .line 84
    sget-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    const-string v1, "set_multiwindow_feature_list"

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    const-string v1, "db_popup_view_shortcut"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sVolatileSettingToTypeMapForUser:Ljava/util/Map;

    const-string v1, "multi_window_enabled"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemFeaturesList:Ljava/util/ArrayList;

    const-string v1, "com.sec.feature.multiwindow.long_device_snap_mode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemFeaturesList:Ljava/util/ArrayList;

    const-string v1, "com.sec.feature.multiwindow.ensure_docked_view"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemFeaturesList:Ljava/util/ArrayList;

    const-string v1, "com.sec.feature.multiwindow.snap_view"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    const-string v1, "db_popup_view_shortcut"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/server/am/MultiWindowSettingsObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    const-string v1, "multi_window_enabled"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 2
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "multiWindowManager"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 108
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowSettings:Landroid/util/SparseArray;

    .line 109
    const-string v0, "MultiWindowSettingsObserver"

    const-string v1, "MultiWindowSettingsObserver()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 111
    iput-object p2, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    .line 107
    return-void
.end method

.method private beginObserveMultiWindowSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 164
    const-string v3, "MultiWindowSettingsObserver"

    const-string v4, "beginObserveMultiWindowSettings"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v3, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "setting$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 168
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "MultiWindowSettingsObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginObserveMultiWindowSettings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v3, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 173
    .end local v0    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v3, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    .restart local v0    # "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 175
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string v3, "MultiWindowSettingsObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginObserveMultiWindowSettings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v3, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    .line 180
    .end local v0    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    sget-object v3, Lcom/android/server/am/MultiWindowSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    .restart local v0    # "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 182
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string v3, "MultiWindowSettingsObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginObserveMultiWindowSettings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_2

    .line 187
    .end local v0    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/server/am/MultiWindowSettingsObserver;->beginObserveMultiWindowSettingsForSingleUser(I)V

    .line 163
    return-void
.end method

.method private beginObserveMultiWindowSettingsForSingleUser(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 191
    const-string v3, "MultiWindowSettingsObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginObserveMultiWindowSettingsForSingleUser(u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v3, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "setting$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    .local v0, "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 195
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "MultiWindowSettingsObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginObserveMultiWindowSettings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 200
    .end local v0    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v3, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    .restart local v0    # "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 202
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string v3, "MultiWindowSettingsObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginObserveMultiWindowSettings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v3, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    .line 190
    .end local v0    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private endObserveMultiWindowSettingsForSingleUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 211
    const-string v2, "MultiWindowSettingsObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endObserveMultiWindowSettingsForSingleUser(u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v2, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 215
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowSettingsObserver;->beginObserveMultiWindowSettings()V

    .line 216
    iget-object v2, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getRunningUserIds()[I

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget v0, v2, v1

    .line 217
    .local v0, "runningUserId":I
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    .line 216
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowSettingsObserver;->beginObserveMultiWindowSettingsForSingleUser(I)V

    goto :goto_1

    .line 210
    .end local v0    # "runningUserId":I
    :cond_2
    return-void
.end method

.method private initSystemFeatureSettings()V
    .locals 4

    .prologue
    .line 123
    sget-object v2, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemFeaturesList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "feature$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    .local v0, "feature":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemFeaturesRepository:Ljava/util/Map;

    .line 125
    iget-object v3, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 124
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    .end local v0    # "feature":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private populateAllSettings(I)I
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 225
    const-string v2, "MultiWindowSettingsObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "populateAllSettings(u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowSettings:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 229
    .local v1, "mwSettings":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 230
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "mwSettings":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 231
    .restart local v1    # "mwSettings":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowSettings:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowSettingsObserver;->populateSystemFeatures(Landroid/os/Bundle;)V

    .line 235
    :cond_0
    sget-object v2, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/am/MultiWindowSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    or-int/lit8 v0, v2, 0x0

    .line 236
    .local v0, "changed":I
    sget-object v2, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/am/MultiWindowSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    or-int/2addr v0, v2

    .line 237
    sget-object v2, Lcom/android/server/am/MultiWindowSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/am/MultiWindowSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    or-int/2addr v0, v3

    .line 239
    sget-object v2, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/am/MultiWindowSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    :goto_3
    or-int/2addr v0, v2

    .line 240
    sget-object v2, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/am/MultiWindowSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v5

    :goto_4
    or-int/2addr v0, v2

    .line 242
    sget-object v2, Lcom/android/server/am/MultiWindowSettingsObserver;->sVolatileSettingToTypeMapForUser:Ljava/util/Map;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/am/MultiWindowSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_5
    or-int/2addr v0, v5

    .line 244
    return v0

    .end local v0    # "changed":I
    :cond_1
    move v2, v4

    .line 235
    goto :goto_0

    .restart local v0    # "changed":I
    :cond_2
    move v2, v4

    .line 236
    goto :goto_1

    :cond_3
    move v3, v4

    .line 237
    goto :goto_2

    :cond_4
    move v2, v4

    .line 239
    goto :goto_3

    :cond_5
    move v2, v4

    .line 240
    goto :goto_4

    :cond_6
    move v5, v4

    .line 242
    goto :goto_5
.end method

.method private populateSettings(Landroid/os/Bundle;Ljava/util/Map;I)Z
    .locals 24
    .param p1, "snapshot"    # Landroid/os/Bundle;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;I)Z"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const/4 v4, 0x0

    .line 255
    .local v4, "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowSettingsObserver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 256
    .local v5, "context":Landroid/content/Context;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 257
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 258
    .local v14, "setting":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    .line 259
    .local v15, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v21, Ljava/lang/String;

    move-object/from16 v0, v21

    if-ne v15, v0, :cond_7

    .line 261
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 262
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 279
    .local v20, "value":Ljava/lang/String;
    :goto_1
    if-eqz v20, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 280
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v4, 0x1

    goto :goto_0

    .line 263
    .end local v20    # "value":Ljava/lang/String;
    :cond_1
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 264
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "value":Ljava/lang/String;
    goto :goto_1

    .line 265
    .end local v20    # "value":Ljava/lang/String;
    :cond_2
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 266
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "value":Ljava/lang/String;
    goto :goto_1

    .line 267
    .end local v20    # "value":Ljava/lang/String;
    :cond_3
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 268
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-static {v0, v14, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "value":Ljava/lang/String;
    goto :goto_1

    .line 269
    .end local v20    # "value":Ljava/lang/String;
    :cond_4
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 270
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-static {v0, v14, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "value":Ljava/lang/String;
    goto :goto_1

    .line 272
    .end local v20    # "value":Ljava/lang/String;
    :cond_5
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 273
    .local v13, "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v13, :cond_6

    .line 274
    const-string v21, ""

    move/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .restart local v20    # "value":Ljava/lang/String;
    goto :goto_1

    .line 276
    .end local v20    # "value":Ljava/lang/String;
    :cond_6
    const-string v20, ""

    .restart local v20    # "value":Ljava/lang/String;
    goto/16 :goto_1

    .line 283
    .end local v13    # "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v20    # "value":Ljava/lang/String;
    :cond_7
    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v15, v0, :cond_f

    .line 285
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 286
    .local v7, "defaultKeyInteger":Ljava/lang/Integer;
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 287
    .local v6, "defaultKey":I
    :goto_2
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 288
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v14, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 305
    .local v17, "value":I
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 306
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 286
    .end local v6    # "defaultKey":I
    .end local v17    # "value":I
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "defaultKey":I
    goto :goto_2

    .line 289
    :cond_9
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 290
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v14, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .restart local v17    # "value":I
    goto :goto_3

    .line 291
    .end local v17    # "value":I
    :cond_a
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 292
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v14, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .restart local v17    # "value":I
    goto :goto_3

    .line 293
    .end local v17    # "value":I
    :cond_b
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 294
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, p3

    invoke-static {v0, v14, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    .restart local v17    # "value":I
    goto :goto_3

    .line 295
    .end local v17    # "value":I
    :cond_c
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 296
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, p3

    invoke-static {v0, v14, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    .restart local v17    # "value":I
    goto :goto_3

    .line 298
    .end local v17    # "value":I
    :cond_d
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 299
    .local v11, "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    if-eqz v11, :cond_e

    .line 300
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .restart local v17    # "value":I
    goto/16 :goto_3

    .line 302
    .end local v17    # "value":I
    :cond_e
    const/16 v17, 0x0

    .restart local v17    # "value":I
    goto/16 :goto_3

    .line 309
    .end local v6    # "defaultKey":I
    .end local v7    # "defaultKeyInteger":Ljava/lang/Integer;
    .end local v11    # "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    .end local v17    # "value":I
    :cond_f
    sget-object v21, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v15, v0, :cond_16

    .line 311
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 312
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v14, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v16

    .line 329
    .local v16, "value":F
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v21

    cmpl-float v21, v16, v21

    if-eqz v21, :cond_0

    .line 330
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 331
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 313
    .end local v16    # "value":F
    :cond_10
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 314
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v14, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v16

    .restart local v16    # "value":F
    goto :goto_4

    .line 315
    .end local v16    # "value":F
    :cond_11
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 316
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v14, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v16

    .restart local v16    # "value":F
    goto :goto_4

    .line 317
    .end local v16    # "value":F
    :cond_12
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 318
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, p3

    invoke-static {v0, v14, v1, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v16

    .restart local v16    # "value":F
    goto :goto_4

    .line 319
    .end local v16    # "value":F
    :cond_13
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 320
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, p3

    invoke-static {v0, v14, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v16

    .restart local v16    # "value":F
    goto :goto_4

    .line 322
    .end local v16    # "value":F
    :cond_14
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 323
    .local v10, "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    if-eqz v10, :cond_15

    .line 324
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Float;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v16

    .restart local v16    # "value":F
    goto/16 :goto_4

    .line 326
    .end local v16    # "value":F
    :cond_15
    const/16 v16, 0x0

    .restart local v16    # "value":F
    goto/16 :goto_4

    .line 333
    .end local v10    # "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    .end local v16    # "value":F
    :cond_16
    sget-object v21, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v15, v0, :cond_0

    .line 335
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 336
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-static {v0, v14, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    .line 353
    .local v18, "value":J
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    cmp-long v21, v18, v22

    if-eqz v21, :cond_0

    .line 354
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 355
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 337
    .end local v18    # "value":J
    :cond_17
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 338
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-static {v0, v14, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    .restart local v18    # "value":J
    goto :goto_5

    .line 339
    .end local v18    # "value":J
    :cond_18
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 340
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-static {v0, v14, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    .restart local v18    # "value":J
    goto :goto_5

    .line 341
    .end local v18    # "value":J
    :cond_19
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 342
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move/from16 v3, p3

    invoke-static {v0, v14, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v18

    .restart local v18    # "value":J
    goto :goto_5

    .line 343
    .end local v18    # "value":J
    :cond_1a
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1b

    .line 344
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move/from16 v3, p3

    invoke-static {v0, v14, v1, v2, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v18

    .restart local v18    # "value":J
    goto :goto_5

    .line 346
    .end local v18    # "value":J
    :cond_1b
    sget-object v21, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 347
    .local v12, "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    if-eqz v12, :cond_1c

    .line 348
    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .restart local v18    # "value":J
    goto/16 :goto_5

    .line 350
    .end local v18    # "value":J
    :cond_1c
    const-wide/16 v18, 0x0

    .restart local v18    # "value":J
    goto/16 :goto_5

    .line 359
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v12    # "set":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v14    # "setting":Ljava/lang/String;
    .end local v15    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "value":J
    :cond_1d
    return v4
.end method

.method private populateSystemFeatures(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "snapShot"    # Landroid/os/Bundle;

    .prologue
    .line 248
    sget-object v2, Lcom/android/server/am/MultiWindowSettingsObserver;->sSystemFeaturesRepository:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 247
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method private sendMultiWindowSettings(ZI)V
    .locals 7
    .param p1, "fromInitialize"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 138
    const-string v4, "MultiWindowSettingsObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMultiWindowSettings(u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowSettingsObserver;->populateAllSettings(I)I

    move-result v0

    .line 142
    .local v0, "changed":I
    if-eqz p1, :cond_0

    .line 144
    iget-object v4, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowSettings:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/am/MultiWindowManagerService;->onMultiWindowSettingsChange(Landroid/os/Bundle;I)V

    .line 145
    return-void

    .line 148
    :cond_0
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_2

    .line 149
    iget-object v4, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRunningUserIds()[I

    move-result-object v2

    .line 150
    .local v2, "runningUserIds":[I
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget v1, v2, v4

    .line 151
    .local v1, "runningUserId":I
    if-eq v1, p2, :cond_1

    .line 152
    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowSettingsObserver;->populateAllSettings(I)I

    .line 154
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowSettings:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v6, v3, v1}, Lcom/android/server/am/MultiWindowManagerService;->onMultiWindowSettingsChange(Landroid/os/Bundle;I)V

    .line 150
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 156
    .end local v1    # "runningUserId":I
    .end local v2    # "runningUserIds":[I
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_4

    .line 157
    iget-object v4, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowSettings:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/am/MultiWindowManagerService;->onMultiWindowSettingsChange(Landroid/os/Bundle;I)V

    .line 137
    :cond_3
    :goto_1
    return-void

    .line 159
    :cond_4
    const-string v3, "MultiWindowSettingsObserver"

    const-string v4, "do nothing"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getMultiWindowSettingsLocked(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowSettings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 397
    .local v0, "mwSettings":Landroid/os/Bundle;
    if-nez v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->initMultiWindowDynamicEnable(I)V

    .line 116
    iget-object v0, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->initMultiWindowSettings(I)V

    .line 117
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowSettingsObserver;->initSystemFeatureSettings()V

    .line 118
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowSettingsObserver;->beginObserveMultiWindowSettings()V

    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/MultiWindowSettingsObserver;->sendMultiWindowSettings(ZI)V

    .line 114
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 131
    const-string v0, "MultiWindowSettingsObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    .line 133
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, p3}, Lcom/android/server/am/MultiWindowSettingsObserver;->sendMultiWindowSettings(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 130
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setMultiWindowSettingToRepository(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZ)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "userId"    # I
    .param p5, "send"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 402
    .local v0, "repository":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    if-nez v0, :cond_0

    .line 403
    const-class v5, Ljava/lang/String;

    if-ne p2, v5, :cond_3

    .line 404
    sget-object v5, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_0
    :goto_0
    const-class v5, Ljava/lang/String;

    if-ne p2, v5, :cond_7

    .line 417
    sget-object v5, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 418
    .local v4, "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {v4, p4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    .end local v4    # "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    if-eqz p5, :cond_2

    .line 431
    const/4 v5, 0x0

    invoke-direct {p0, v5, p4}, Lcom/android/server/am/MultiWindowSettingsObserver;->sendMultiWindowSettings(ZI)V

    .line 400
    :cond_2
    return-void

    .line 405
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_3
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_4

    .line 406
    sget-object v5, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 407
    :cond_4
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_5

    .line 408
    sget-object v5, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 409
    :cond_5
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_6

    .line 410
    sget-object v5, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 412
    :cond_6
    return-void

    .line 419
    :cond_7
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_8

    .line 420
    sget-object v5, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 421
    .local v2, "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 422
    .end local v2    # "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_8
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_9

    .line 423
    sget-object v5, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 424
    .local v1, "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    check-cast p3, Ljava/lang/Float;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, p4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 425
    .end local v1    # "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_9
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_1

    .line 426
    sget-object v5, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 427
    .local v3, "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, p4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public startUserLocked(IZZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "needStart"    # Z

    .prologue
    .line 363
    const-string v0, "MultiWindowSettingsObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUserLocked(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz p3, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowManagerService;->initMultiWindowDynamicEnable(I)V

    .line 367
    iget-object v0, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowManagerService;->initMultiWindowSettings(I)V

    .line 368
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowSettingsObserver;->beginObserveMultiWindowSettingsForSingleUser(I)V

    .line 371
    :cond_0
    if-nez p3, :cond_1

    if-eqz p2, :cond_2

    .line 374
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/MultiWindowSettingsObserver;->sendMultiWindowSettings(ZI)V

    .line 362
    :cond_2
    return-void
.end method

.method public stopUserLocked(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "willBeRemoved"    # Z

    .prologue
    .line 379
    const-string v3, "MultiWindowSettingsObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopUserLocked(u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowSettingsObserver;->endObserveMultiWindowSettingsForSingleUser(I)V

    .line 382
    iget-object v3, p0, Lcom/android/server/am/MultiWindowSettingsObserver;->mMultiWindowSettings:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 385
    if-eqz p2, :cond_1

    .line 386
    sget-object v3, Lcom/android/server/am/MultiWindowSettingsObserver;->sMultiWindowSettingsRepository:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 387
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<*>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 388
    .local v2, "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 378
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<*>;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "setting":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    :cond_1
    return-void
.end method
