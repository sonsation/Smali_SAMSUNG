.class public Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;
.super Ljava/lang/Object;
.source "DefaultLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppWidgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected bindAppWidget(ILandroid/content/ComponentName;JLjava/lang/String;)Z
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "dbId"    # J
    .param p5, "tableName"    # Ljava/lang/String;

    .prologue
    .line 717
    iget-object v1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v1, v1, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 719
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, p1, p2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    const-string v1, "DefaultLayoutParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to bind app widget id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v1, 0x0

    .line 724
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getAppWidgetId()I
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    return v0
.end method

.method protected getWidgetComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 693
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v4, v4, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v0

    .line 708
    :goto_1
    return-object v4

    .line 696
    :catch_0
    move-exception v1

    .line 697
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v4, v4, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, "packages":[Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    aget-object v4, v3, v6

    invoke-direct {v0, v4, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    .restart local v0    # "cn":Landroid/content/ComponentName;
    :try_start_1
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v4, v4, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 702
    :catch_1
    move-exception v2

    .line 703
    .local v2, "e1":Ljava/lang/Exception;
    const-string v4, "DefaultLayoutParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find widget provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 22
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    invoke-static {v3}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$200(Lcom/android/launcher3/common/model/DefaultLayoutParser;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 619
    const-wide/16 v12, -0x1

    .line 689
    :cond_0
    :goto_0
    return-wide v12

    .line 622
    :cond_1
    const-string v3, "packageName"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 623
    .local v15, "packageName":Ljava/lang/String;
    const-string v3, "className"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "className":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 626
    :cond_2
    const-string v3, "DefaultLayoutParser"

    const-string v8, "Skipping invalid <favorite> with no component"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-wide/16 v12, -0x1

    goto :goto_0

    .line 630
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->getWidgetComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 631
    .local v5, "cn":Landroid/content/ComponentName;
    if-nez v5, :cond_4

    .line 632
    const-wide/16 v12, -0x1

    goto :goto_0

    .line 636
    :cond_4
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 637
    .local v10, "extras":Landroid/os/Bundle;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    .line 639
    .local v18, "widgetDepth":I
    :cond_5
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, "type":I
    const/4 v3, 0x3

    move/from16 v0, v16

    if-ne v0, v3, :cond_6

    .line 640
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v18

    if-le v3, v0, :cond_9

    .line 641
    :cond_6
    const/4 v3, 0x2

    move/from16 v0, v16

    if-ne v0, v3, :cond_5

    .line 645
    const-string v3, "extra"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 646
    const-string v3, "key"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 647
    .local v14, "key":Ljava/lang/String;
    const-string v3, "value"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 648
    .local v17, "value":Ljava/lang/String;
    if-eqz v14, :cond_7

    if-eqz v17, :cond_7

    .line 649
    move-object/from16 v0, v17

    invoke-virtual {v10, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 651
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v8, "Widget extras must have a key and value"

    invoke-direct {v3, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 654
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v8, "Widgets can contain only extras"

    invoke-direct {v3, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 658
    :cond_9
    const-wide/16 v12, -0x1

    .line 660
    .local v12, "insertedId":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->getAppWidgetId()I

    move-result v4

    .line 661
    .local v4, "appWidgetId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;

    invoke-interface {v3}, Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v6

    .local v6, "dbId":J
    move-object/from16 v3, p0

    move-object/from16 v8, p2

    .line 663
    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->bindAppWidget(ILandroid/content/ComponentName;JLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 664
    const-wide/16 v12, -0x1

    goto/16 :goto_0

    .line 667
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v8, "itemType"

    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v8, "appWidgetId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v8, "appWidgetProvider"

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v8, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v8, v8, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v3, v8, v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 672
    const-wide/16 v20, 0x0

    cmp-long v3, v12, v20

    if-gez v3, :cond_b

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 685
    .end local v4    # "appWidgetId":I
    .end local v6    # "dbId":J
    :catch_0
    move-exception v9

    .line 686
    .local v9, "ex":Ljava/lang/RuntimeException;
    const-string v3, "DefaultLayoutParser"

    const-string v8, "Problem allocating appWidgetId"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 678
    .end local v9    # "ex":Ljava/lang/RuntimeException;
    .restart local v4    # "appWidgetId":I
    .restart local v6    # "dbId":J
    :cond_b
    :try_start_1
    invoke-virtual {v10}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 679
    new-instance v11, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual {v11, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 681
    invoke-virtual {v11, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 682
    const-string v3, "appWidgetId"

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
