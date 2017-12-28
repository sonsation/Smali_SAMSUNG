.class public Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;
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
    name = "ShortcutParser"
.end annotation


# instance fields
.field private mIsCSC:Z

.field protected mIsRestore:Z

.field final synthetic this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    const/4 v0, 0x0

    .line 490
    iput-object p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->mIsCSC:Z

    .line 492
    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->mIsRestore:Z

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 21
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 501
    const/4 v14, 0x0

    .line 502
    .local v14, "title":Ljava/lang/String;
    const/4 v5, 0x0

    .line 504
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v12

    .line 505
    .local v12, "intent":Landroid/content/Intent;
    if-nez v12, :cond_0

    .line 506
    const-wide/16 v18, -0x1

    .line 590
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-wide v18

    .line 509
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    const/16 v17, 0x1

    .line 510
    .local v17, "type":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 511
    .local v13, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->mIsCSC:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 512
    const-string v18, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 513
    .local v15, "titleId":Ljava/lang/String;
    const-string v18, "icon"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 515
    .local v11, "imgId":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    .end local v14    # "title":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 517
    .restart local v14    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 520
    :cond_1
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    if-nez v5, :cond_3

    .line 521
    :cond_2
    const-string v18, "DefaultLayoutParser"

    const-string v19, "Shortcut is missing title or icon resource ID from csc resource"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-wide/16 v18, -0x1

    goto :goto_0

    .line 525
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/launcher3/common/base/item/ItemInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "iconType"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    .end local v11    # "imgId":Ljava/lang/String;
    .end local v15    # "titleId":Ljava/lang/String;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v14, v12, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->addShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v18

    goto/16 :goto_0

    .line 528
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v18, p1

    .line 529
    check-cast v18, Landroid/content/res/XmlResourceParser;

    const-string v19, "title"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v16

    .line 530
    .local v16, "titleResId":I
    check-cast p1, Landroid/content/res/XmlResourceParser;

    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v18, "icon"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v7

    .line 532
    .local v7, "iconId":I
    if-eqz v16, :cond_6

    if-nez v7, :cond_7

    .line 533
    :cond_6
    const-string v18, "DefaultLayoutParser"

    const-string v19, "Ignoring shortcut"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-wide/16 v18, -0x1

    goto/16 :goto_0

    .line 537
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 540
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_8

    if-nez v5, :cond_9

    .line 541
    :cond_8
    const-string v18, "DefaultLayoutParser"

    const-string v19, "Ignoring shortcut, can\'t load icon or title"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-wide/16 v18, -0x1

    goto/16 :goto_0

    .line 545
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/launcher3/common/base/item/ItemInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "iconType"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "iconPackage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "iconResource"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 550
    .end local v7    # "iconId":I
    .end local v16    # "titleResId":I
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_a
    const-string v18, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 551
    if-nez v14, :cond_b

    .line 552
    const-string v14, ""

    .line 554
    :cond_b
    const-string v18, "iconPackage"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 555
    .local v8, "iconPackage":Ljava/lang/String;
    const-string v18, "iconResource"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 556
    .local v9, "iconResource":Ljava/lang/String;
    if-eqz v8, :cond_c

    if-eqz v9, :cond_c

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "iconType"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "iconPackage"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "iconResource"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 561
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->mIsRestore:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    invoke-static {v12}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 562
    if-eqz v13, :cond_d

    .line 563
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v12, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    if-nez v18, :cond_d

    .line 564
    const-string v18, "DefaultLayoutParser"

    const-string v19, "App shortcut, but not exist in pm"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getChangedComponent(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v4

    .line 567
    .local v4, "cn":Landroid/content/ComponentName;
    if-eqz v4, :cond_d

    .line 568
    const-string v18, "DefaultLayoutParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "App shortcut, changecomponent : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {v12, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 574
    .end local v4    # "cn":Landroid/content/ComponentName;
    :cond_d
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportDeepShortcut()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-static {v12}, Lcom/android/launcher3/Utilities;->isDeepShortcut(Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 575
    const/16 v17, 0x6

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "iconType"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    const-string v18, "DefaultLayoutParser"

    const-string v19, "Deep shortcut, type change to deep shortcut"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 579
    :cond_e
    const-string v18, "icon"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 580
    .local v10, "image":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 581
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v10, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 582
    .local v6, "iconBytes":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "iconType"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "icon"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_1
.end method

.method protected parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 594
    const/4 v2, 0x0

    .line 596
    .local v2, "uri":Ljava/lang/String;
    :try_start_0
    const-string v3, "uri"

    invoke-static {p1, v3}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 597
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 598
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10200000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v3, "DefaultLayoutParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shortcut has malformed uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIsCSC(Z)V
    .locals 0
    .param p1, "isCSC"    # Z

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;->mIsCSC:Z

    .line 496
    return-void
.end method
