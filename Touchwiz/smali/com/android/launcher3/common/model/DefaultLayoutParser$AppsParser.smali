.class public Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;
.source "DefaultLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppsParser"
.end annotation


# instance fields
.field protected mIsRestore:Z

.field final synthetic this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser$1;)V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->mIsRestore:Z

    return-void
.end method


# virtual methods
.method protected getComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 461
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;)J
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 455
    const-string v0, "DefaultLayoutParser"

    const-string v1, "Skipping invalid <favorite> with no component"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 399
    const-string v8, "packageName"

    invoke-static {p1, v8}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "packageName":Ljava/lang/String;
    const-string v8, "className"

    invoke-static {p1, v8}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "className":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 403
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->getComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 404
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 405
    const-wide/16 v8, -0x1

    .line 447
    .end local v1    # "cn":Landroid/content/ComponentName;
    :goto_0
    return-wide v8

    .line 408
    .restart local v1    # "cn":Landroid/content/ComponentName;
    :cond_0
    const-string v5, ""

    .line 409
    .local v5, "title":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->mIsRestore:Z

    if-nez v8, :cond_3

    invoke-static {v3, v0}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->isAutoInstallApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 410
    iget-object v8, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v8, v8, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v9, "restored"

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    :cond_1
    :goto_1
    const-string v8, "hidden"

    invoke-static {p1, v8}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 443
    iget-object v8, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v8, v8, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v9, "hidden"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    const/4 v9, 0x0

    invoke-virtual {v8, p2, v5, v1, v9}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->addApps(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;I)J

    move-result-wide v8

    goto :goto_0

    .line 411
    :cond_3
    iget-boolean v8, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->mIsRestore:Z

    if-nez v8, :cond_4

    invoke-static {}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$100()Ljava/util/HashMap;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 412
    invoke-static {}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$100()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 413
    invoke-static {}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$100()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;

    .line 414
    .local v6, "update":Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;
    iget-object v8, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v8, v8, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v9, "restored"

    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    iget-object v8, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v8, v8, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v9, "icon"

    iget-object v10, v6, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->icon:[B

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 416
    iget-object v5, v6, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->title:Ljava/lang/String;

    .line 417
    const-string v8, "DefaultLayoutParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update omc title and icon "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->iconPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 420
    .end local v6    # "update":Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;
    :cond_4
    iget-boolean v8, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->mIsPostPosition:Z

    if-nez v8, :cond_5

    const-string v8, "true"

    const-string v9, "postPosition"

    invoke-static {p1, v9}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    const/4 v7, 0x1

    .line 423
    .local v7, "usePostPosition":Z
    :goto_2
    if-eqz v7, :cond_1

    iget-object v8, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    invoke-virtual {v8, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->isPostPositionInsertCondition(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 425
    iget-object v8, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->mFolderTitle:Ljava/lang/String;

    if-eqz v8, :cond_1

    const-string v8, ""

    iget-object v9, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->mFolderTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 426
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 427
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v8, "componentName"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v8, "itemType"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    const-string v8, "isAppsAdd"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 431
    const-string v8, "isAppsPreloadedFolder"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 432
    const-string v8, "appsFolderName"

    iget-object v9, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->mFolderTitle:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v8, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v8, v8, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v4

    .line 435
    .local v4, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    invoke-virtual {v4}, Lcom/android/launcher3/common/customer/PostPositionController;->getProvider()Lcom/android/launcher3/common/customer/PostPositionProvider;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/launcher3/common/customer/PostPositionProvider;->dbInsertOrUpdate(Landroid/content/ContentValues;)J

    .line 437
    const-wide/16 v8, -0x1

    goto/16 :goto_0

    .line 420
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    .end local v7    # "usePostPosition":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 447
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v5    # "title":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v8

    goto/16 :goto_0
.end method
