.class public Lcom/android/launcher3/allapps/controller/PostAppsPositioner;
.super Lcom/android/launcher3/common/customer/PostPositionerBase;
.source "PostAppsPositioner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostAppsPositioner"


# instance fields
.field private mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/android/launcher3/common/customer/PostPositionProvider;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionerBase;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V

    .line 39
    return-void
.end method

.method private declared-synchronized addItem(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)Z
    .locals 11
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "itemRecord"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 77
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, p2, v8}, Lcom/android/launcher3/allapps/model/AppsModel;->getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    .line 78
    .local v0, "addedItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v0, :cond_0

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 79
    const-string v6, "PostAppsPositioner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aleady exist in other folder : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    const/4 v6, 0x1

    .line 140
    .end local v0    # "addedItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    monitor-exit p0

    return v6

    .line 83
    .restart local v0    # "addedItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    const-wide/16 v2, -0x1

    .line 84
    .local v2, "folderId":J
    :try_start_1
    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->isAppsPreloadFolder()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 85
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getPreloadedFolderId(Ljava/lang/String;)J

    move-result-wide v2

    .line 86
    const-string v6, "PostAppsPositioner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "folder is preloaded folder. folderId is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    .line 89
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v2

    .line 90
    const-string v6, "PostAppsPositioner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request preloaded folder. but not created by xml so find other folder type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    :goto_1
    const-wide/32 v6, 0x1869f

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    .line 99
    const-string v6, "PostAppsPositioner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "folder already removed by user."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v6, 0x0

    goto :goto_0

    .line 93
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v2

    .line 94
    const-string v6, "PostAppsPositioner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "folder is not preloaded folder. folderId is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 76
    .end local v0    # "addedItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "folderId":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 101
    .restart local v0    # "addedItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v2    # "folderId":J
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    .line 102
    :try_start_2
    const-string v6, "PostAppsPositioner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "folder exist. folderId is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " add to folder"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v6, p1, p2, v2, v3}, Lcom/android/launcher3/allapps/model/AppsModel;->addItemToFolder(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;J)Z

    move-result v6

    if-nez v6, :cond_8

    .line 104
    const-string v6, "PostAppsPositioner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to add item to folder  : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 107
    :cond_4
    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 108
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v2

    .line 109
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v6, v2, v3}, Lcom/android/launcher3/allapps/model/AppsModel;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    .line 110
    .local v1, "appItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-string v6, "PostAppsPositioner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "folder is not created so need to make a folder by folderId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_7

    if-eqz v1, :cond_7

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 113
    const-string v6, "PostAppsPositioner"

    const-string v7, "create folder from ready id"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 115
    const-string v6, "PostAppsPositioner"

    const-string v7, "already write as folder ready id"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 119
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->createFolderAndAddItem(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)J

    move-result-wide v4

    .line 120
    .local v4, "resultFolderId":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_6

    .line 121
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->removeFolderId(Ljava/lang/String;Z)V

    .line 122
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    .line 123
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 125
    :cond_6
    const-string v6, "PostAppsPositioner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFolder Child item isn\'t exist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 129
    .end local v4    # "resultFolderId":J
    :cond_7
    if-eqz v0, :cond_9

    .line 130
    const-string v6, "PostAppsPositioner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add item and save ready id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    .line 140
    .end local v0    # "addedItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "appItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "folderId":J
    :cond_8
    :goto_2
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 133
    .restart local v0    # "addedItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v1    # "appItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v2    # "folderId":J
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 138
    .end local v0    # "addedItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "appItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "folderId":J
    :cond_a
    const-string v6, "PostAppsPositioner"

    const-string v7, "folder is not created and folderName from PrefInfo is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public addItem(Lcom/android/launcher3/common/customer/PostPositionItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 4
    .param p1, "itemRecord"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;
    .param p2, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->isAppsAdd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    :goto_0
    return v0

    .line 66
    :cond_0
    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppsItem() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0, p2, p3, p1}, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->addItem(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/common/customer/PostPositionProvider;->updateItemRecordResult(ZLjava/lang/String;)V

    .line 69
    const-string v0, "PostAppsPositioner"

    const-string v1, "addItem() result failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected hasItem(JZ)Z
    .locals 5
    .param p1, "id"    # J
    .param p3, "isFolder"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    if-eqz p3, :cond_2

    .line 146
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/model/AppsModel;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/allapps/model/AppsModel;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    .line 49
    :cond_1
    return-void
.end method

.method protected setup()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    const/16 v1, -0x66

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->setContainer(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->init()V

    .line 55
    return-void
.end method
