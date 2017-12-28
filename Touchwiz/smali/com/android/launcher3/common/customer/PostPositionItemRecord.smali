.class public Lcom/android/launcher3/common/customer/PostPositionItemRecord;
.super Ljava/lang/Object;
.source "PostPositionItemRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemRecord"


# instance fields
.field private mAppsAdd:Z

.field private mAppsCellOrder:I

.field private mAppsFolderName:Ljava/lang/String;

.field private mAppsForceAtoZ:Z

.field private mAppsIndex:I

.field private mAppsPreloadFolder:Z

.field private mComponentName:Ljava/lang/String;

.field private mHomeAdd:Z

.field private mHomeCellX:I

.field private mHomeCellY:I

.field private mHomeFolderName:Ljava/lang/String;

.field private mHomeIndex:I

.field private mHomeNewPage:Z

.field private mHomePreloadFolder:Z

.field private mHomeReplace:Z

.field private mHomeShortcutIcon:Landroid/graphics/Bitmap;

.field private mHomeShortcutTitle:Ljava/lang/String;

.field private mItemType:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

.field private mRemoveAfterPosition:Z

.field private mWidgetSpanX:I

.field private mWidgetSpanY:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1, "cmpName"    # Ljava/lang/String;
    .param p2, "itemType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mItemType:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    .line 21
    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeAdd:Z

    .line 22
    iput-boolean v3, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomePreloadFolder:Z

    .line 24
    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeNewPage:Z

    .line 25
    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeReplace:Z

    .line 26
    iput v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeIndex:I

    .line 27
    iput v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeCellX:I

    .line 28
    iput v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeCellY:I

    .line 29
    iput v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mWidgetSpanX:I

    .line 30
    iput v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mWidgetSpanY:I

    .line 32
    iput-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeShortcutTitle:Ljava/lang/String;

    .line 33
    iput-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;

    .line 35
    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsAdd:Z

    .line 36
    iput-boolean v3, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsPreloadFolder:Z

    .line 38
    iput v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsIndex:I

    .line 39
    iput v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsCellOrder:I

    .line 40
    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsForceAtoZ:Z

    .line 42
    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mRemoveAfterPosition:Z

    .line 45
    iput-object p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mComponentName:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->values()[Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v0

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mItemType:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    .line 47
    return-void
.end method


# virtual methods
.method public getAppsFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsIndex()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsIndex:I

    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeCellX()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeCellX:I

    return v0
.end method

.method public getHomeCellY()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeCellY:I

    return v0
.end method

.method public getHomeFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeIndex()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeIndex:I

    return v0
.end method

.method public getHomeShortcutIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHomeShortcutTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeShortcutTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mItemType:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    return-object v0
.end method

.method public getShorcutIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 154
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 156
    .local v1, "shortcutIntent":Landroid/content/Intent;
    :try_start_0
    const-string v2, "android.intent.extra.shortcut.INTENT"

    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mComponentName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 157
    const-string v2, "android.intent.extra.shortcut.NAME"

    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeShortcutTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v2, "android.intent.extra.shortcut.ICON"

    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public getWidgetSpanX()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mWidgetSpanX:I

    return v0
.end method

.method public getWidgetSpanY()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mWidgetSpanY:I

    return v0
.end method

.method public isAppsAdd()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsAdd:Z

    return v0
.end method

.method public isAppsPreloadFolder()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsPreloadFolder:Z

    return v0
.end method

.method public isHomeAdd()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeAdd:Z

    return v0
.end method

.method public isHomeNewPage()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeNewPage:Z

    return v0
.end method

.method public isHomePreloadFolder()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomePreloadFolder:Z

    return v0
.end method

.method public isHomeReplace()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeReplace:Z

    return v0
.end method

.method public isRemoveAfterPosition()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mRemoveAfterPosition:Z

    return v0
.end method

.method isValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 173
    iget-boolean v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeAdd:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomePreloadFolder:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeFolderName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeFolderName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeIndex:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeCellX:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeCellY:I

    if-gez v1, :cond_2

    .line 185
    :cond_1
    :goto_0
    return v0

    .line 179
    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsAdd:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsPreloadFolder:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsFolderName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsFolderName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAppsAdded(Z)V
    .locals 0
    .param p1, "added"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsAdd:Z

    .line 194
    return-void
.end method

.method public setAppsFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsFolderName:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setAppsForceAtoZ(Z)V
    .locals 0
    .param p1, "atoz"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsForceAtoZ:Z

    .line 214
    return-void
.end method

.method public setAppsPosition(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "order"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsIndex:I

    .line 169
    iput p2, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsCellOrder:I

    .line 170
    return-void
.end method

.method public setAppsPreloadFolder(Z)V
    .locals 0
    .param p1, "preload"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mAppsPreloadFolder:Z

    .line 202
    return-void
.end method

.method public setHomeAdded(Z)V
    .locals 0
    .param p1, "added"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeAdd:Z

    .line 190
    return-void
.end method

.method public setHomeFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeFolderName:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setHomePosition(ZZIII)V
    .locals 0
    .param p1, "newpage"    # Z
    .param p2, "replace"    # Z
    .param p3, "index"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeNewPage:Z

    .line 121
    iput-boolean p2, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeReplace:Z

    .line 123
    iput p3, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeIndex:I

    .line 124
    iput p4, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeCellX:I

    .line 125
    iput p5, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeCellY:I

    .line 126
    return-void
.end method

.method public setHomePreloadFolder(Z)V
    .locals 0
    .param p1, "preload"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomePreloadFolder:Z

    .line 198
    return-void
.end method

.method public setRemoveAfterPosition(Z)V
    .locals 0
    .param p1, "remove"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mRemoveAfterPosition:Z

    .line 218
    return-void
.end method

.method public setShortcutInfo(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeShortcutTitle:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;

    .line 151
    return-void
.end method

.method setShortcutInfo(Ljava/lang/String;[BLandroid/content/Context;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "icon"    # [B
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    :try_start_0
    iput-object p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeShortcutTitle:Ljava/lang/String;

    .line 136
    const/4 v1, 0x0

    array-length v2, p2

    .line 137
    invoke-static {p2, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    invoke-static {v1, p3}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;

    .line 139
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 141
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mHomeShortcutIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ItemRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShortcutInfo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWidgetSpanXY(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mWidgetSpanX:I

    .line 130
    iput p2, p0, Lcom/android/launcher3/common/customer/PostPositionItemRecord;->mWidgetSpanY:I

    .line 131
    return-void
.end method
