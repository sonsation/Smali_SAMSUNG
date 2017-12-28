.class public Lcom/android/launcher3/home/PostHomePositioner;
.super Lcom/android/launcher3/common/customer/PostPositionerBase;
.source "PostHomePositioner.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final INVALID_VALUE:J = -0x1L

.field private static final SUPPORT_EXTRA_POSITION:Z = false

.field private static final SUPPORT_FOLDER_ONLY:Z = false

.field private static final TAG:Ljava/lang/String; = "PostHomePositioner"


# instance fields
.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field private mHomeLoader:Lcom/android/launcher3/home/HomeLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/android/launcher3/common/customer/PostPositionProvider;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionerBase;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/PostHomePositioner;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/PostHomePositioner;
    .param p1, "x1"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/PostHomePositioner;->checkAndUpdatePositionInfo(Lcom/android/launcher3/common/customer/PostPositionItemRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/PostHomePositioner;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/PostHomePositioner;
    .param p1, "x1"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "x2"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "x3"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/PostHomePositioner;->addItem(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/PostHomePositioner;)Lcom/android/launcher3/common/customer/PostPositionProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/PostHomePositioner;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/PostHomePositioner;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/PostHomePositioner;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "x3"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/PostHomePositioner;->addWidget(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/PostHomePositioner;)Lcom/android/launcher3/common/customer/PostPositionProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/PostHomePositioner;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    return-object v0
.end method

.method private addItem(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)Z
    .locals 20
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "itemRecord"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;

    .prologue
    .line 119
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v5, v6, :cond_1

    .line 120
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 121
    .local v12, "cn":Landroid/content/ComponentName;
    if-eqz v12, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mModelWorker:Landroid/os/Handler;

    new-instance v6, Lcom/android/launcher3/home/PostHomePositioner$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v12, v1, v2}, Lcom/android/launcher3/home/PostHomePositioner$2;-><init>(Lcom/android/launcher3/home/PostHomePositioner;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)V

    const-wide/16 v18, 0x7d0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    :cond_0
    const/4 v5, 0x1

    .line 226
    .end local v12    # "cn":Landroid/content/ComponentName;
    :goto_0
    return v5

    .line 133
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 134
    const-wide/16 v8, -0x1

    .line 135
    .local v8, "folderId":J
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->isHomePreloadFolder()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getPreloadedFolderId(Ljava/lang/String;)J

    move-result-wide v8

    .line 137
    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folder is preloaded folder. folderId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-wide/16 v6, 0x0

    cmp-long v5, v8, v6

    if-gez v5, :cond_2

    .line 140
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v8

    .line 141
    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request preloaded folder. but not created by xml so find other folder type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    :goto_1
    const-wide/32 v6, 0x1869f

    cmp-long v5, v8, v6

    if-nez v5, :cond_4

    .line 150
    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " folder already removed by user."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 144
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v8

    .line 145
    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folder is not preloaded folder. folderId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 152
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v5, v8, v6

    if-lez v5, :cond_5

    .line 153
    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folder exist. folderId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " add to folder"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    .line 154
    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/home/PostHomePositioner;->addToFolder(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;JLcom/android/launcher3/common/customer/PostPositionItemRecord;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 155
    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Child item isn\'t exist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 158
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 159
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v8

    .line 160
    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folder is not created so need to make a folder by folderId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 163
    .local v14, "hItem":Lcom/android/launcher3/common/base/item/IconInfo;
    const-wide/16 v6, 0x0

    cmp-long v5, v8, v6

    if-lez v5, :cond_8

    if-eqz v14, :cond_8

    iget-wide v6, v14, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v18, -0x64

    cmp-long v5, v6, v18

    if-nez v5, :cond_8

    .line 165
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v14, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 166
    const-string v5, "PostHomePositioner"

    const-string v6, "already write as folder ready id"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 170
    :cond_6
    const-string v5, "PostHomePositioner"

    const-string v6, "create folder from ready id"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v15, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v15, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v16, "prevItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v13, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v13}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 176
    .local v13, "fItem":Lcom/android/launcher3/folder/FolderInfo;
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/launcher3/folder/FolderInfo;->id:J

    .line 177
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v13, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 178
    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v13, v5, v6, v7}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 179
    iget-wide v6, v14, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iput-wide v6, v13, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 180
    iget v5, v14, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iput v5, v13, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    .line 181
    iget v5, v14, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iput v5, v13, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/PostHomePositioner;->createIconInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v4

    .line 185
    .local v4, "addItem1":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v11

    .line 186
    .local v11, "addItem2":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v5, 0x1

    iput v5, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 187
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 188
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iput-wide v6, v11, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 189
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iput v5, v11, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 190
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iput v5, v11, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 192
    invoke-virtual {v13, v4}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 193
    invoke-virtual {v13, v11}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 195
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v15, v7}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/HomeLoader;->removeWorkspaceItem(Ljava/util/ArrayList;)V

    .line 202
    iget-wide v6, v13, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iput-wide v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iput-wide v6, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 203
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v5, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 206
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->removeFolderId(Ljava/lang/String;Z)V

    .line 207
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    iget-wide v0, v13, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-wide/from16 v18, v0

    const/4 v7, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v6, v0, v1, v7}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    .line 226
    .end local v4    # "addItem1":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v8    # "folderId":J
    .end local v11    # "addItem2":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v13    # "fItem":Lcom/android/launcher3/folder/FolderInfo;
    .end local v14    # "hItem":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v15    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v16    # "prevItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_7
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 210
    .restart local v8    # "folderId":J
    .restart local v14    # "hItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_8
    invoke-direct/range {p0 .. p3}, Lcom/android/launcher3/home/PostHomePositioner;->addShortcut(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v17

    .line 212
    .local v17, "shortcutItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v17, :cond_9

    .line 213
    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addShortcut return item is null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 216
    :cond_9
    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add item and save ready id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v18, v0

    const/4 v7, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v5, v6, v0, v1, v7}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    goto :goto_2

    .line 221
    .end local v8    # "folderId":J
    .end local v14    # "hItem":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v17    # "shortcutItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_a
    invoke-direct/range {p0 .. p3}, Lcom/android/launcher3/home/PostHomePositioner;->addShortcut(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v5

    if-nez v5, :cond_7

    .line 222
    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Child item isn\'t exist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private addShortcut(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 20
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "itemRecord"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;

    .prologue
    .line 257
    const-string v8, "PostHomePositioner"

    const-string v9, "addToHomeShortcut()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lcom/android/launcher3/home/PostHomePositioner;->performHomeNewPage(Lcom/android/launcher3/common/customer/PostPositionItemRecord;Z)J

    .line 260
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->isHomeNewPage()Z

    move-result v8

    if-nez v8, :cond_0

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/PostHomePositioner;->performHomeReplace(Lcom/android/launcher3/common/customer/PostPositionItemRecord;)V

    .line 264
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v6

    .line 265
    .local v6, "screenId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_1

    .line 266
    const-string v8, "PostHomePositioner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not exist page : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v13, 0x0

    .line 316
    :goto_0
    return-object v13

    .line 270
    :cond_1
    const/4 v8, 0x2

    new-array v5, v8, [I

    .line 271
    .local v5, "emptyCell":[I
    const/4 v8, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeCellX()I

    move-result v9

    aput v9, v5, v8

    .line 272
    const/4 v8, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeCellY()I

    move-result v9

    aput v9, v5, v8

    .line 274
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v4

    .line 275
    .local v4, "itemPositionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    const/4 v12, 0x0

    .line 277
    .local v12, "find":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->isHomeReplace()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 278
    const/4 v12, 0x1

    .line 286
    :cond_2
    :goto_1
    if-nez v12, :cond_6

    .line 287
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v15

    .line 289
    .local v15, "screenCount":I
    const/16 v16, 0x0

    .line 291
    .local v16, "startPage":I
    move/from16 v14, v16

    .local v14, "i":I
    :goto_2
    if-ge v14, v15, :cond_5

    if-nez v12, :cond_5

    .line 292
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v8, v14}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v6

    .line 293
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeIndex()I

    move-result v8

    if-eq v14, v8, :cond_3

    .line 294
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJIIZ)Z

    move-result v12

    .line 295
    if-nez v12, :cond_3

    .line 296
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeCellX()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeCellY()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNearEmptyCell([IJII)Z

    move-result v12

    .line 291
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 280
    .end local v14    # "i":I
    .end local v15    # "screenCount":I
    .end local v16    # "startPage":I
    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJIIZ)Z

    move-result v12

    .line 281
    if-nez v12, :cond_2

    .line 282
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeCellX()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeCellY()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNearEmptyCell([IJII)Z

    move-result v12

    goto :goto_1

    .line 301
    .restart local v14    # "i":I
    .restart local v15    # "screenCount":I
    .restart local v16    # "startPage":I
    :cond_5
    if-nez v12, :cond_6

    .line 302
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    invoke-virtual {v8, v9, v15, v0, v1}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    move-result-wide v6

    .line 306
    .end local v14    # "i":I
    .end local v15    # "screenCount":I
    .end local v16    # "startPage":I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/PostHomePositioner;->createIconInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v13

    .line 307
    .local v13, "hItem":Lcom/android/launcher3/common/base/item/IconInfo;
    iput-wide v6, v13, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 308
    const/4 v8, 0x0

    aget v8, v5, v8

    iput v8, v13, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 309
    const/4 v8, 0x1

    aget v8, v5, v8

    iput v8, v13, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 310
    const/4 v8, 0x1

    iput v8, v13, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    iput v8, v13, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    .line 312
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v11, "addShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v11, v10}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    goto/16 :goto_0
.end method

.method private addToFolder(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;JLcom/android/launcher3/common/customer/PostPositionItemRecord;)Z
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "folderId"    # J
    .param p5, "itemRecord"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-object v4, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HomeLoader;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    .line 234
    .local v1, "fItem":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v1, :cond_0

    .line 235
    const-string v4, "PostHomePositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToHomeFolder() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v0, "addShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0, p1, p5}, Lcom/android/launcher3/home/PostHomePositioner;->createIconInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v2

    .line 239
    .local v2, "hItem":Lcom/android/launcher3/common/base/item/IconInfo;
    iput-wide p3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 240
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 241
    iput v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 242
    iput v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 243
    iget-object v4, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 245
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v4, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v5, p0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v0, v3}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 247
    const/4 v3, 0x1

    .line 249
    .end local v0    # "addShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v2    # "hItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    return v3
.end method

.method private addWidget(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)V
    .locals 18
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "itemRecord"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;

    .prologue
    .line 325
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v16

    .line 326
    .local v16, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 327
    const-string v6, "PostHomePositioner"

    const-string v7, "already exist widget on workspace."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return-void

    .line 331
    :cond_0
    const-string v6, "PostHomePositioner"

    const-string v7, "addToHomeWidget()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/home/PostHomePositioner;->performHomeNewPage(Lcom/android/launcher3/common/customer/PostPositionItemRecord;Z)J

    .line 334
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->isHomeNewPage()Z

    move-result v6

    if-nez v6, :cond_1

    .line 335
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/PostHomePositioner;->performHomeReplace(Lcom/android/launcher3/common/customer/PostPositionItemRecord;)V

    .line 338
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v2

    .line 339
    .local v2, "itemPositionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v4

    .line 340
    .local v4, "screenId":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 341
    const-string v6, "PostHomePositioner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not exist page : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_2
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 346
    .local v3, "emptyCell":[I
    const/4 v13, 0x0

    .line 347
    .local v13, "find":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->isHomeReplace()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 348
    const/4 v13, 0x1

    .line 357
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v11

    .line 358
    .local v11, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const/4 v10, -0x1

    .line 360
    .local v10, "appWidgetId":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v10

    .line 361
    move-object/from16 v0, p1

    invoke-virtual {v11, v10, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 362
    const-string v6, "PostHomePositioner"

    const-string v7, "Failed to initialize external widget"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v12

    .line 366
    .local v12, "e":Ljava/lang/RuntimeException;
    const-string v6, "PostHomePositioner"

    const-string v7, "Failed to initialize external widget"

    invoke-static {v6, v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 350
    .end local v10    # "appWidgetId":I
    .end local v11    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v12    # "e":Ljava/lang/RuntimeException;
    :cond_3
    const/4 v6, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeCellX()I

    move-result v7

    aput v7, v3, v6

    .line 351
    const/4 v6, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeCellY()I

    move-result v7

    aput v7, v3, v6

    .line 354
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getWidgetSpanX()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getWidgetSpanY()I

    move-result v7

    const/4 v8, 0x1

    .line 353
    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJIIZ)Z

    move-result v13

    goto :goto_1

    .line 370
    .restart local v10    # "appWidgetId":I
    .restart local v11    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v17

    .line 371
    .local v17, "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    .line 372
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    .line 371
    invoke-static {v6, v7}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v14

    .line 375
    .local v14, "info":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    new-instance v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v0, p1

    invoke-direct {v15, v10, v0}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 376
    .local v15, "launcherInfo":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getWidgetSpanX()I

    move-result v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    .line 377
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getWidgetSpanY()I

    move-result v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    .line 378
    invoke-virtual {v14}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanX:I

    .line 379
    invoke-virtual {v14}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanY:I

    .line 380
    invoke-virtual {v14}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    iput-object v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 382
    iput-wide v4, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    .line 383
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeCellX()I

    move-result v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellX:I

    .line 384
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeCellY()I

    move-result v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellY:I

    .line 386
    if-nez v13, :cond_5

    .line 388
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getWidgetSpanX()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getWidgetSpanY()I

    move-result v7

    const/4 v8, 0x1

    .line 387
    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJIIZ)Z

    move-result v13

    .line 389
    if-eqz v13, :cond_6

    .line 390
    const/4 v6, 0x0

    aget v6, v3, v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellX:I

    .line 391
    const/4 v6, 0x1

    aget v6, v3, v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellY:I

    .line 400
    :cond_5
    :goto_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v9, "addWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v9, v8}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    goto/16 :goto_0

    .line 393
    .end local v9    # "addWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_6
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/home/PostHomePositioner;->performHomeNewPage(Lcom/android/launcher3/common/customer/PostPositionItemRecord;Z)J

    move-result-wide v4

    .line 394
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_5

    .line 395
    iput-wide v4, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    goto :goto_2
.end method

.method private checkAndUpdatePositionInfo(Lcom/android/launcher3/common/customer/PostPositionItemRecord;)V
    .locals 12
    .param p1, "itemRecord"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    .line 408
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeIndex()I

    move-result v3

    .line 409
    .local v3, "index":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeCellX()I

    move-result v4

    .line 410
    .local v4, "x":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeCellY()I

    move-result v5

    .line 411
    .local v5, "y":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getWidgetSpanX()I

    move-result v9

    .line 412
    .local v9, "spanX":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getWidgetSpanY()I

    move-result v10

    .line 415
    .local v10, "spanY":I
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v0

    if-lt v3, v0, :cond_e

    .line 416
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 421
    :cond_0
    :goto_0
    if-gez v4, :cond_1

    .line 422
    const/4 v4, 0x0

    .line 424
    :cond_1
    if-gez v5, :cond_2

    .line 425
    const/4 v5, 0x0

    .line 428
    :cond_2
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 429
    .local v6, "gridSize":[I
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    aput v0, v6, v11

    .line 430
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    aput v0, v6, v2

    .line 432
    aget v0, v6, v11

    add-int/lit8 v0, v0, -0x1

    if-le v4, v0, :cond_3

    .line 433
    aget v0, v6, v11

    add-int/lit8 v4, v0, -0x1

    .line 435
    :cond_3
    aget v0, v6, v2

    add-int/lit8 v0, v0, -0x1

    if-le v5, v0, :cond_4

    .line 436
    aget v0, v6, v2

    add-int/lit8 v5, v0, -0x1

    .line 439
    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v0, v1, :cond_f

    .line 440
    if-ge v9, v2, :cond_5

    .line 441
    const/4 v9, 0x1

    .line 443
    :cond_5
    if-ge v10, v2, :cond_6

    .line 444
    const/4 v10, 0x1

    .line 447
    :cond_6
    aget v0, v6, v11

    if-le v9, v0, :cond_7

    .line 448
    aget v9, v6, v11

    .line 450
    :cond_7
    aget v0, v6, v2

    if-le v10, v0, :cond_8

    .line 451
    aget v10, v6, v2

    .line 454
    :cond_8
    add-int v0, v4, v9

    aget v1, v6, v11

    if-le v0, v1, :cond_9

    .line 455
    aget v0, v6, v11

    sub-int v9, v0, v4

    .line 457
    :cond_9
    add-int v0, v5, v10

    aget v1, v6, v2

    if-le v0, v1, :cond_a

    .line 458
    aget v0, v6, v2

    sub-int v10, v0, v5

    .line 461
    :cond_a
    invoke-virtual {p1, v9, v10}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->setWidgetSpanXY(II)V

    .line 467
    :goto_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->SHORTCUT:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v0, v1, :cond_d

    .line 468
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeShortcutTitle()Ljava/lang/String;

    move-result-object v8

    .line 469
    .local v8, "shortcutTitle":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeShortcutIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 471
    .local v7, "shortcutIcon":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_b

    if-nez v7, :cond_c

    .line 472
    :cond_b
    const-string v8, "Untitled"

    .line 473
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 476
    :cond_c
    invoke-virtual {p1, v8, v7}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->setShortcutInfo(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 480
    .end local v7    # "shortcutIcon":Landroid/graphics/Bitmap;
    .end local v8    # "shortcutTitle":Ljava/lang/String;
    :cond_d
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->isHomeNewPage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->isHomeReplace()Z

    move-result v2

    move-object v0, p1

    .line 479
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->setHomePosition(ZZIII)V

    .line 482
    return-void

    .line 417
    .end local v6    # "gridSize":[I
    :cond_e
    if-gez v3, :cond_0

    .line 418
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 463
    .restart local v6    # "gridSize":[I
    :cond_f
    const/4 v9, 0x1

    .line 464
    const/4 v10, 0x1

    goto :goto_1
.end method

.method private createIconInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/customer/PostPositionItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "itemRecord"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "hItem":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v1, v2, :cond_1

    .line 487
    iget-object v1, p0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->fromActivityInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    .line 492
    :cond_0
    :goto_0
    return-object v0

    .line 488
    :cond_1
    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->SHORTCUT:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v1, v2, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getShorcutIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private inArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "A"    # Landroid/graphics/Rect;
    .param p2, "B"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 533
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 534
    .local v0, "gridSize":[I
    iget-object v6, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v6

    aput v6, v0, v5

    .line 535
    iget-object v6, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v6

    aput v6, v0, v4

    .line 537
    aget v6, v0, v5

    aget v7, v0, v4

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    .line 539
    .local v1, "occupied":[[Z
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .local v2, "x":I
    :goto_0
    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-gt v2, v6, :cond_1

    aget v6, v0, v5

    if-ge v2, v6, :cond_1

    .line 540
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .local v3, "y":I
    :goto_1
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v6, :cond_0

    aget v6, v0, v4

    if-ge v3, v6, :cond_0

    .line 541
    aget-object v6, v1, v2

    aput-boolean v4, v6, v3

    .line 540
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 539
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    .end local v3    # "y":I
    :cond_1
    iget v2, p2, Landroid/graphics/Rect;->left:I

    :goto_2
    iget v6, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v6, :cond_4

    aget v6, v0, v5

    if-ge v2, v6, :cond_4

    .line 546
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .restart local v3    # "y":I
    :goto_3
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v6, :cond_3

    aget v6, v0, v4

    if-ge v3, v6, :cond_3

    .line 547
    aget-object v6, v1, v2

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_2

    .line 553
    .end local v3    # "y":I
    :goto_4
    return v4

    .line 546
    .restart local v3    # "y":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 545
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v3    # "y":I
    :cond_4
    move v4, v5

    .line 553
    goto :goto_4
.end method

.method private performHomeNewPage(Lcom/android/launcher3/common/customer/PostPositionItemRecord;Z)J
    .locals 5
    .param p1, "itemRecord"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;
    .param p2, "force"    # Z

    .prologue
    const-wide/16 v0, -0x1

    .line 496
    if-nez p2, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-wide v0

    .line 499
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->isHomeNewPage()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_0

    .line 504
    :cond_2
    const-string v2, "PostHomePositioner"

    const-string v3, "performHomeNewPage()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/customer/PostPositionProvider;->disableHomeNewPage(I)V

    .line 508
    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v3, p0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getHomeIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private performHomeReplace(Lcom/android/launcher3/common/customer/PostPositionItemRecord;)V
    .locals 0
    .param p1, "itemRecord"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;

    .prologue
    .line 514
    return-void
.end method


# virtual methods
.method public declared-synchronized addItem(Lcom/android/launcher3/common/customer/PostPositionItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 4
    .param p1, "itemRecord"    # Lcom/android/launcher3/common/customer/PostPositionItemRecord;
    .param p2, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v0, 0x0

    .line 93
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->isHomeAdd()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 113
    :goto_0
    monitor-exit p0

    return v0

    .line 95
    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v1, v2, :cond_1

    .line 96
    const-string v1, "PostHomePositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addHomeItem() : info is null. - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 100
    :cond_1
    :try_start_2
    const-string v0, "PostHomePositioner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addHomeItem() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mModelWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/home/PostHomePositioner$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher3/home/PostHomePositioner$1;-><init>(Lcom/android/launcher3/home/PostHomePositioner;Lcom/android/launcher3/common/customer/PostPositionItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    const/4 v0, 0x1

    goto :goto_0
.end method

.method deleteHomeArea(ILandroid/graphics/Rect;)V
    .locals 19
    .param p1, "homeIndex"    # I
    .param p2, "rectB"    # Landroid/graphics/Rect;

    .prologue
    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v16

    .line 559
    .local v16, "screenId":J
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v14, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "container"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, -0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, "whereCondition":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 564
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "itemType"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "cellX"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "cellY"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "spanX"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "spanY"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 570
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 572
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 575
    .local v12, "itemId":J
    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 576
    .local v9, "cellX":I
    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 577
    .local v10, "cellY":I
    const/4 v3, 0x4

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 578
    .local v15, "spanX":I
    const/4 v3, 0x5

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 580
    .local v18, "spanY":I
    new-instance v11, Landroid/graphics/Rect;

    add-int v3, v9, v15

    add-int/lit8 v3, v3, -0x1

    add-int v4, v10, v18

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v11, v9, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 581
    .local v11, "rectA":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/launcher3/home/PostHomePositioner;->inArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v3, v12, v13}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 586
    .end local v9    # "cellX":I
    .end local v10    # "cellY":I
    .end local v11    # "rectA":Landroid/graphics/Rect;
    .end local v12    # "itemId":J
    .end local v15    # "spanX":I
    .end local v18    # "spanY":I
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 590
    :cond_2
    const-string v3, "PostHomePositioner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteHomeArea() - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " items removed."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v3, v14}, Lcom/android/launcher3/home/HomeLoader;->removeWorkspaceItem(Ljava/util/ArrayList;)V

    .line 594
    :cond_3
    return-void
.end method

.method protected hasItem(JZ)Z
    .locals 5
    .param p1, "id"    # J
    .param p3, "isFolder"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 598
    if-eqz p3, :cond_2

    .line 599
    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/HomeLoader;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 601
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 599
    goto :goto_0

    .line 601
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    if-nez v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    .line 79
    :cond_2
    return-void
.end method

.method protected setup()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->setContainer(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/home/PostHomePositioner;->init()V

    .line 86
    return-void
.end method
