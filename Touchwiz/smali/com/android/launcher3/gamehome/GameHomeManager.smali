.class public Lcom/android/launcher3/gamehome/GameHomeManager;
.super Ljava/lang/Object;
.source "GameHomeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;,
        Lcom/android/launcher3/gamehome/GameHomeManager$SingletonHolder;
    }
.end annotation


# static fields
.field static final GAMEHOME_CONTENT_URI:Landroid/net/Uri;

.field private static final GAMEHOME_DATA_URI:Ljava/lang/String; = "content://com.samsung.android.game.gamehome.data/applist"

.field private static final GAME_APP_HIDDEN_ENABLE:Ljava/lang/String; = "game_home_hidden_games"

.field private static final GAME_HOME_ENABLE:Ljava/lang/String; = "game_home_enable"

.field private static final GAME_HOME_HIDDEN_MENU_DISABLE:I = 0x0

.field private static final GAME_HOME_HIDDEN_OFF:I = 0x2

.field private static final GAME_HOME_HIDDEN_ON:I = 0x1

.field public static final GAME_HOME_PACKAGE:Ljava/lang/String; = "com.samsung.android.game.gamehome"

.field public static final REQUEST_GAMEHOME_ENABLED:I = 0x65

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final gameLauncherPkgName:Ljava/lang/String;

.field private mBindGameAppRunnable:Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;

.field private final mGameAppHideenSettingProviderObserver:Landroid/database/ContentObserver;

.field private final mGameHomeProviderObserver:Landroid/database/ContentObserver;

.field private final mGameHomeSettingProviderObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/launcher3/gamehome/GameHomeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "content://com.samsung.android.game.gamehome.data/applist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/gamehome/GameHomeManager;->GAMEHOME_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;-><init>(Lcom/android/launcher3/gamehome/GameHomeManager;Lcom/android/launcher3/gamehome/GameHomeManager$1;)V

    iput-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mBindGameAppRunnable:Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;

    .line 296
    new-instance v0, Lcom/android/launcher3/gamehome/GameHomeManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/gamehome/GameHomeManager$2;-><init>(Lcom/android/launcher3/gamehome/GameHomeManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameHomeProviderObserver:Landroid/database/ContentObserver;

    .line 307
    new-instance v0, Lcom/android/launcher3/gamehome/GameHomeManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/gamehome/GameHomeManager$3;-><init>(Lcom/android/launcher3/gamehome/GameHomeManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameHomeSettingProviderObserver:Landroid/database/ContentObserver;

    .line 317
    new-instance v0, Lcom/android/launcher3/gamehome/GameHomeManager$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/gamehome/GameHomeManager$4;-><init>(Lcom/android/launcher3/gamehome/GameHomeManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameAppHideenSettingProviderObserver:Landroid/database/ContentObserver;

    .line 382
    const-string v0, "com.samsung.android.game.gamehome"

    iput-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->gameLauncherPkgName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/gamehome/GameHomeManager;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/gamehome/GameHomeManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getGameAppListFromGameHome(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 237
    const-string v0, "content://com.samsung.android.game.gamehome.data/applist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 238
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 240
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 250
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v8, "gameAppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 253
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 255
    .local v9, "packageName":Ljava/lang/String;
    const-string v0, "game"

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGameAppListFromGameHomeProvider gameApp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    .end local v8    # "gameAppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 242
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v2, "Game home provider does not exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-eqz v6, :cond_1

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 265
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v8

    .line 261
    .restart local v8    # "gameAppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-eqz v6, :cond_1

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager$SingletonHolder;->access$000()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindGameAppsVisibility()V
    .locals 18

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher3/gamehome/GameHomeManager;->getGameAppListFromGameHome(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    .line 130
    .local v3, "gameAppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 131
    .local v11, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 133
    .local v6, "hiddenFlag":I
    if-nez v3, :cond_1

    .line 134
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v15, "bindGameAppsVisibility game provider not exist yet"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 139
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v15, "GameHomeProvider does not have any item, but we should care this case."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v7

    .line 144
    .local v7, "isHomeOnly":Z
    const-string v14, "game_home_hidden_games"

    const/4 v15, 0x0

    invoke-static {v11, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 146
    .local v4, "gameHidden":I
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Game Home Hidden setting before binding(0/2:off, 1:on) : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v14, 0x1

    if-ne v4, v14, :cond_3

    .line 149
    const/4 v6, 0x4

    .line 152
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v8

    .line 153
    .local v8, "launcherModel":Lcom/android/launcher3/LauncherModel;
    if-eqz v7, :cond_5

    .line 154
    invoke-virtual {v8}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/home/HomeLoader;->getAllAppItemInHome()Ljava/util/ArrayList;

    move-result-object v2

    .line 156
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v5, "hiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v12, "unHiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v13, "updateApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bindGameAppsVisibility hiddenFlag = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v9

    .line 164
    .local v9, "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 166
    .local v1, "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 167
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 168
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, "packageName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    iget-object v15, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v9, v15}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 174
    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lcom/android/launcher3/common/base/item/ItemInfo;->setGameApp(Z)V

    .line 175
    sget-object v15, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "bindGameAppsVisibility "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " hidden = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sparse-switch v6, :sswitch_data_0

    goto :goto_2

    .line 194
    :sswitch_0
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 195
    sget-object v15, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "3. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": This app is already hidden by user, so we just remove the game hidden flag "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v15, 0x4

    invoke-virtual {v1, v15}, Lcom/android/launcher3/common/base/item/ItemInfo;->setUnHidden(I)I

    .line 197
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 154
    .end local v1    # "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v5    # "hiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v9    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v12    # "unHiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v13    # "updateApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_5
    invoke-virtual {v8}, Lcom/android/launcher3/LauncherModel;->getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v2

    goto/16 :goto_1

    .line 170
    .restart local v1    # "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v2    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v5    # "hiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v9    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .restart local v12    # "unHiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v13    # "updateApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "packageName":Ljava/lang/String;
    goto :goto_3

    .line 178
    :sswitch_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 179
    sget-object v15, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "1. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": This app is already hidden by user, so we just add the game hidden flag"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v15, 0x4

    invoke-virtual {v1, v15}, Lcom/android/launcher3/common/base/item/ItemInfo;->setHidden(I)I

    .line 181
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 182
    :cond_7
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByGame()Z

    move-result v15

    if-nez v15, :cond_4

    .line 183
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 184
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 185
    sget-object v15, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "2-0. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": This app is game app but not hidden in EASY MODE"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 187
    :cond_8
    sget-object v15, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "2. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": This app is newly added by game, so we should hide this app by game."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 198
    :cond_9
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByGame()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 199
    sget-object v15, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "4. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": This app is in the game list but the game hidden setting is unhidden, so we unhide this app newly."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 208
    :cond_a
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isGameApp()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 209
    sget-object v15, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "5. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": This app is remove in game launcher newly but already user hidden, so we just remove the game hidden flag "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v15, 0x4

    invoke-virtual {v1, v15}, Lcom/android/launcher3/common/base/item/ItemInfo;->setUnHidden(I)I

    .line 211
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_b
    :goto_4
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/android/launcher3/common/base/item/ItemInfo;->setGameApp(Z)V

    goto/16 :goto_2

    .line 212
    :cond_c
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v15

    if-nez v15, :cond_b

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByGame()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 213
    sget-object v15, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "6. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": This app is newly removed in game launcher, so we unhide this app newly."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 220
    .end local v1    # "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_e

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/gamehome/GameHomeManager;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/launcher3/gamehome/GameHomeManager$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/launcher3/gamehome/GameHomeManager$1;-><init>(Lcom/android/launcher3/gamehome/GameHomeManager;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v15, 0x1

    invoke-virtual {v14, v5, v12, v15}, Lcom/android/launcher3/Launcher;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 230
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 231
    sget-object v14, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "just update db updateApps.size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/android/launcher3/LauncherModel;->updateAppsOnlyDB(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public checkGameAppList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/gamehome/GameHomeManager;->getGameAppListFromGameHome(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    .line 273
    .local v1, "gameAppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 274
    sget-object v2, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v3, "checkGameAppList : GameHomeProvider does not ready yet!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 279
    .local v0, "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 283
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->isGameApp()Z

    move-result v2

    if-nez v2, :cond_2

    .line 284
    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    sget-object v2, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is game app !!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->setGameApp(Z)V

    goto :goto_0
.end method

.method public hasGameHomeThisPackage(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Z
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/gamehome/GameHomeManager;->getGameAppListFromGameHome(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 405
    .local v0, "gameAppList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 406
    sget-object v3, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v4, "isGamePackage GameHomeProvider does not ready yet!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    :goto_0
    return v2

    .line 410
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 411
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 412
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    sget-object v2, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This app is Game : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public initGameHomeManager(Lcom/android/launcher3/Launcher;)V
    .locals 5
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    const/4 v4, 0x0

    .line 87
    iput-object p1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 89
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher3/gamehome/GameHomeManager;->GAMEHOME_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameHomeProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    const-string v1, "game_home_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameHomeSettingProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    const-string v1, "game_home_hidden_games"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameAppHideenSettingProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    sget-object v1, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "game_home_hidden_games(0/2:off, 1:on) initial value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "game_home_hidden_games"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, "game_home_hidden_games"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const-string v1, "game_home_hidden_games"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    :cond_0
    return-void
.end method

.method public isGameHomeHidden()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 390
    iget-object v3, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 391
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "game_home_hidden_games"

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 393
    .local v0, "hidden":I
    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    sget-object v3, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hidden setting (0/2:off, 1:on) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    if-ne v0, v2, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isGamePackages(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "package1"    # Ljava/lang/String;
    .param p2, "package2"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v1, 0x0

    .line 337
    .local v1, "ret":Z
    :try_start_0
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 338
    invoke-static {p1}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v2

    .line 339
    .local v2, "ret1":Z
    invoke-static {p2}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v3

    .line 340
    .local v3, "ret2":Z
    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    sget-object v4, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 343
    const/4 v1, 0x1

    .line 356
    .end local v2    # "ret1":Z
    .end local v3    # "ret2":Z
    :cond_1
    :goto_0
    return v1

    .line 347
    :cond_2
    sget-object v4, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v5, "Game Manager is unavailable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v5, "identifyGamePackage error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 352
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    sget-object v4, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    const-string v5, "No GameManager class!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 328
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameHomeProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 329
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameHomeSettingProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 330
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mGameAppHideenSettingProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 332
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public resetGameHomeHiddenValue()V
    .locals 3

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 386
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "game_home_hidden_games"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    return-void
.end method

.method public startGameHUN(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item1"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p3, "item2"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 360
    const-string v3, "com.samsung.android.game.gamehome"

    invoke-static {p1, v3}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "game_home_enable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 366
    invoke-virtual {p2}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 367
    .local v1, "itemComponent1":Landroid/content/ComponentName;
    invoke-virtual {p3}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 369
    .local v2, "itemComponent2":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 372
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/gamehome/GameHomeManager;->isGamePackages(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 374
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.game.gamehome.action.ENABLE_GAMEHOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v3, "package1"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v3, "package2"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget-object v3, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v4, 0x65

    invoke-static {v3, v0, v4}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public declared-synchronized updateGameAppsVisibility()V
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/gamehome/GameHomeManager;->updateGameAppsVisibility(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateGameAppsVisibility(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 106
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "game_home_hidden_games"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, "gameHidden":I
    if-eqz p1, :cond_2

    .line 109
    sget-object v2, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Game Home Hidden setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , GameLauncher is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    if-nez v0, :cond_0

    .line 116
    const-string v2, "game_home_hidden_games"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    :cond_0
    if-eqz p1, :cond_1

    .line 120
    iget-object v2, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mBindGameAppRunnable:Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->setRunnable(Ljava/lang/Runnable;)V

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mBindGameAppRunnable:Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    :goto_1
    monitor-exit p0

    return-void

    .line 111
    :cond_2
    :try_start_1
    sget-object v2, Lcom/android/launcher3/gamehome/GameHomeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Game Home Hidden setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    .end local v0    # "gameHidden":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 125
    .restart local v0    # "gameHidden":I
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/launcher3/gamehome/GameHomeManager;->mBindGameAppRunnable:Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;

    invoke-virtual {v2}, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
