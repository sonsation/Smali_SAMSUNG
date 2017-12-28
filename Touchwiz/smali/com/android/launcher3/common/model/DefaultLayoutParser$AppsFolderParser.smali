.class public Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;
.super Ljava/lang/Object;
.source "DefaultLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppsFolderParser"
.end annotation


# instance fields
.field private final mAppsFolderElements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCSC:Z

.field final synthetic this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 888
    invoke-virtual {p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getFolderElementsMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;Ljava/util/HashMap;)V

    .line 889
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 891
    .local p2, "elements":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    iput-object p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->mIsCSC:Z

    .line 892
    iput-object p2, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->mAppsFolderElements:Ljava/util/HashMap;

    .line 893
    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 30
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->mIsCSC:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    const-string v26, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getCSCFolderTitleWithTranslation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 921
    .local v21, "title":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v25, "carrier"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 922
    .local v8, "carrier":Ljava/lang/String;
    const-string v25, "true"

    const-string v26, "postPosition"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 924
    .local v17, "postPosition":Z
    const-wide/16 v12, -0x1

    .line 925
    .local v12, "folderId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "title"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "itemType"

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$200(Lcom/android/launcher3/common/model/DefaultLayoutParser;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 930
    const-wide/16 v26, 0x0

    cmp-long v25, v12, v26

    if-gez v25, :cond_5

    .line 931
    const-string v25, "DefaultLayoutParser"

    const-string v26, "Unable to add folder"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const-wide/16 v4, -0x1

    .line 1012
    :cond_1
    :goto_1
    return-wide v4

    .line 907
    .end local v8    # "carrier":Ljava/lang/String;
    .end local v12    # "folderId":J
    .end local v17    # "postPosition":Z
    .end local v21    # "title":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v25, p1

    .line 908
    check-cast v25, Landroid/content/res/XmlResourceParser;

    const-string v26, "title"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v22

    .line 909
    .local v22, "titleResId":I
    if-eqz v22, :cond_3

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 917
    .end local v22    # "titleResId":I
    .restart local v21    # "title":Ljava/lang/String;
    :goto_2
    if-nez v21, :cond_0

    .line 918
    const-string v21, ""

    goto/16 :goto_0

    .line 912
    .end local v21    # "title":Ljava/lang/String;
    .restart local v22    # "titleResId":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    const-string v26, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getCSCFolderTitleWithTranslation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "title":Ljava/lang/String;
    goto :goto_2

    .line 915
    .end local v21    # "title":Ljava/lang/String;
    .end local v22    # "titleResId":I
    :cond_4
    const-string v25, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "title":Ljava/lang/String;
    goto :goto_2

    .line 936
    .restart local v8    # "carrier":Ljava/lang/String;
    .restart local v12    # "folderId":J
    .restart local v17    # "postPosition":Z
    :cond_5
    new-instance v16, Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 937
    .local v16, "myValues":Landroid/content/ContentValues;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v11, "folderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 941
    .local v10, "folderDepth":I
    const/16 v19, 0x0

    .line 942
    .local v19, "rank":I
    :cond_6
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v23

    .local v23, "type":I
    const/16 v25, 0x3

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 943
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v25

    move/from16 v0, v25

    if-le v0, v10, :cond_a

    .line 944
    :cond_7
    const/16 v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "container"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "rank"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->mAppsFolderElements:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    .line 952
    .local v20, "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    if-eqz v20, :cond_9

    .line 953
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;

    move/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v6, v20

    .line 954
    check-cast v6, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;

    .line 955
    .local v6, "appsTag":Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->setFolderInfo(Landroid/content/ContentValues;)V

    .line 956
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->setPostPositionTag(Z)V

    .line 959
    .end local v6    # "appsTag":Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .line 960
    .local v14, "id":J
    const-wide/16 v26, 0x0

    cmp-long v25, v14, v26

    if-ltz v25, :cond_6

    .line 961
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 965
    .end local v14    # "id":J
    :cond_9
    new-instance v25, Ljava/lang/RuntimeException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Invalid folder item "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 969
    .end local v20    # "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$200(Lcom/android/launcher3/common/model/DefaultLayoutParser;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 970
    const-wide/16 v4, -0x1

    goto/16 :goto_1

    .line 973
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    .line 974
    invoke-static/range {v25 .. v25}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v25

    const-wide/16 v26, -0x66

    invoke-virtual/range {v25 .. v27}, Lcom/android/launcher3/common/customer/PostPositionController;->getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v18

    .line 976
    .local v18, "ppPref":Lcom/android/launcher3/common/customer/PostPositionSharedPref;
    move-wide v4, v12

    .line 981
    .local v4, "addedId":J
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 983
    invoke-static {v12, v13}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v24

    .line 984
    .local v24, "uri":Landroid/net/Uri;
    new-instance v7, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v7, v0, v1, v2}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 985
    .local v7, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v25, v0

    iget-object v0, v7, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    move-object/from16 v26, v0

    iget-object v0, v7, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v7, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 986
    const-wide/16 v4, -0x1

    .line 990
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 991
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 992
    .local v9, "childValues":Landroid/content/ContentValues;
    const-string v25, "container"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-static {v0, v9, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 993
    const-string v25, "screen"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-static {v0, v9, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 994
    const-string v25, "rank"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-static {v0, v9, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 996
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v25, v0

    const-string v26, "favorites"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_id="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1000
    if-eqz v18, :cond_1

    .line 1001
    const/16 v25, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    goto/16 :goto_1

    .line 1005
    .end local v7    # "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    .end local v9    # "childValues":Landroid/content/ContentValues;
    .end local v24    # "uri":Landroid/net/Uri;
    :cond_c
    if-eqz v18, :cond_1

    .line 1006
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writePreloadedFolderId(Ljava/lang/String;J)V

    goto/16 :goto_1
.end method

.method public setIsCSC(Z)V
    .locals 0
    .param p1, "isCSC"    # Z

    .prologue
    .line 896
    iput-boolean p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;->mIsCSC:Z

    .line 897
    return-void
.end method
