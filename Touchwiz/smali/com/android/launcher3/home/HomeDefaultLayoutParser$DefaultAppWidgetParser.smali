.class Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;
.source "HomeDefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeDefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultAppWidgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 17
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v14}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$2200(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v14

    const-string v15, "container"

    const/16 v16, -0x64

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    const-string v14, "screen"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 533
    .local v9, "screen":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v14}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$2300(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v14

    const-string v15, "screen"

    invoke-virtual {v14, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v14, "x"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "cellX":Ljava/lang/String;
    const-string v14, "y"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "cellY":Ljava/lang/String;
    const-string v14, "spanX"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 538
    .local v12, "spanX":Ljava/lang/String;
    const-string v14, "spanY"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 539
    .local v13, "spanY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v14}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$2400(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v14

    const-string v15, "cellX"

    invoke-virtual {v14, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v14}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$2500(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v14

    const-string v15, "cellY"

    invoke-virtual {v14, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v14}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$2600(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v14

    const-string v15, "spanX"

    invoke-virtual {v14, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v14}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$2700(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;

    move-result-object v14

    const-string v15, "spanY"

    invoke-virtual {v14, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-super/range {p0 .. p2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .line 546
    .local v10, "result":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-ltz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v14}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)I

    move-result v14

    const/16 v15, -0x64

    if-ne v14, v15, :cond_1

    .line 547
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v14, v2, v3, v12, v13}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$600(Lcom/android/launcher3/home/HomeDefaultLayoutParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_0
    :goto_0
    return-wide v10

    .line 548
    :cond_1
    const-string v14, "true"

    const-string v15, "postPosition"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 549
    const-string v14, "packageName"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 550
    .local v7, "packageName":Ljava/lang/String;
    const-string v14, "className"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, "className":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 553
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .local v5, "cn":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 555
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v14, "componentName"

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v14, "itemType"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    const-string v14, "isHomeAdd"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 559
    const-string v14, "homeIndex"

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    const-string v14, "homeCellX"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    const-string v14, "homeCellY"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    const-string v14, "homeWidgetSpanX"

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    const-string v14, "homeWidgetSpanY"

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v14}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$2800(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v8

    .line 567
    .local v8, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    invoke-virtual {v8}, Lcom/android/launcher3/common/customer/PostPositionController;->getProvider()Lcom/android/launcher3/common/customer/PostPositionProvider;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/android/launcher3/common/customer/PostPositionProvider;->dbInsertOrUpdate(Landroid/content/ContentValues;)J

    goto/16 :goto_0
.end method
