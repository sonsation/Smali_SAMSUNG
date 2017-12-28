.class public Lcom/android/launcher3/home/HomeBnrHelper;
.super Ljava/lang/Object;
.source "HomeBnrHelper.java"

# interfaces
.implements Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.HomeBnr"


# instance fields
.field private isPossibleHomeBackup:Z

.field private isPossibleHomeOnlyBackup:Z

.field private mContext:Landroid/content/Context;

.field private mLauncherPrefix:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mLauncherPrefix:Z

    return-void
.end method

.method private backupApplicationItem(Landroid/content/ComponentName;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 15
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    const-string v12, "LCExtractorHome"

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 431
    .local v8, "isLCExtractor":Z
    if-eqz v8, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    iget-boolean v14, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mLauncherPrefix:Z

    invoke-static {v13, v14}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "attrPrefix":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 434
    .local v6, "containerType":J
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 435
    .local v11, "screen":I
    const-wide/16 v12, -0x64

    cmp-long v12, v6, v12

    if-nez v12, :cond_0

    .line 436
    const-string v12, "screenRank"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 438
    :cond_0
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "cellX":Ljava/lang/String;
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "cellY":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 442
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "className":Ljava/lang/String;
    const-string v12, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    if-eqz v8, :cond_1

    .line 446
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    invoke-static {v13, v9}, Lcom/android/launcher3/Utilities;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 448
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    :cond_1
    const/4 v12, 0x0

    const-string v13, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "screen"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 453
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "packageName"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 456
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "className"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    :cond_3
    const-wide/16 v12, -0x64

    cmp-long v12, v6, v12

    if-nez v12, :cond_5

    .line 460
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 461
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 463
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 464
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "y"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    :cond_5
    const-string v12, "SCLOUD"

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 469
    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 470
    .local v10, "restored":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "restored"

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    .end local v10    # "restored":Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    const-string v13, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    return-void

    .line 431
    .end local v2    # "attrPrefix":Ljava/lang/String;
    .end local v3    # "cellX":Ljava/lang/String;
    .end local v4    # "cellY":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "containerType":J
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "screen":I
    :cond_7
    const-string v2, ""

    goto/16 :goto_0
.end method

.method private backupAppsButton(ILorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "screen"    # I
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 821
    const-string v0, "\n"

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 822
    const-string v0, "appsbutton"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 823
    const-string v0, "screen"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 824
    const-string v0, "appsbutton"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 825
    return-void
.end method

.method private backupContactShortcut(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 10
    .param p1, "intentDescription"    # Ljava/lang/String;
    .param p2, "serialize"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 831
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 837
    .local v8, "intent":Landroid/content/Intent;
    if-nez v8, :cond_1

    .line 873
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v7

    .line 833
    .local v7, "e":Ljava/net/URISyntaxException;
    const-string v2, "Launcher.HomeBnr"

    const-string v3, "return Intent.parseUri, URISyntaxException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 841
    .end local v7    # "e":Ljava/net/URISyntaxException;
    .restart local v8    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 842
    .local v1, "lookupUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    const-string v2, "com.android.contacts"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    const-string v2, "Launcher.HomeBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vcf file making... lookup Uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v6, 0x0

    .line 846
    .local v6, "composer":Lcom/android/vcard/VCardComposer;
    :try_start_1
    sget-object v2, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 847
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "for_export_only"

    const-string v4, "1"

    .line 848
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 850
    .local v5, "contentUriForRawContactsEntity":Landroid/net/Uri;
    const-string v2, "default"

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v9

    .line 851
    .local v9, "vCardType":I
    new-instance v0, Lcom/android/vcard/VCardComposer;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v9, v3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    .end local v6    # "composer":Lcom/android/vcard/VCardComposer;
    .local v0, "composer":Lcom/android/vcard/VCardComposer;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 854
    const-string v2, "Launcher.HomeBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialization failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 868
    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    goto/16 :goto_0

    .line 858
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    .line 859
    const/4 v2, 0x0

    const-string v3, "vcf"

    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 860
    const-string v2, "Launcher.HomeBnr"

    const-string v3, "vcf file make success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 868
    :goto_1
    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    goto/16 :goto_0

    .line 862
    :cond_3
    :try_start_4
    const-string v2, "Launcher.HomeBnr"

    const-string v3, "not have composer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 864
    :catch_1
    move-exception v7

    .line 865
    .end local v5    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .end local v9    # "vCardType":I
    .local v7, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v2, 0x1

    :try_start_5
    iput v2, p3, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 866
    const-string v2, "Launcher.HomeBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupContactShortcut Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 868
    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    goto/16 :goto_0

    .line 868
    .end local v0    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "composer":Lcom/android/vcard/VCardComposer;
    :catchall_0
    move-exception v2

    move-object v0, v6

    .end local v6    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v0    # "composer":Lcom/android/vcard/VCardComposer;
    :goto_3
    if-eqz v0, :cond_4

    .line 869
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    :cond_4
    throw v2

    .line 868
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 864
    .end local v0    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v6    # "composer":Lcom/android/vcard/VCardComposer;
    :catch_2
    move-exception v7

    move-object v0, v6

    .end local v6    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v0    # "composer":Lcom/android/vcard/VCardComposer;
    goto :goto_2
.end method

.method private backupFolderItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Landroid/content/ContentResolver;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p3, "cr"    # Landroid/content/ContentResolver;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    const-string v3, "LCExtractorHome"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 633
    .local v11, "isLCExtractor":Z
    if-eqz v11, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mLauncherPrefix:Z

    invoke-static {v6, v7}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, "attrPrefix":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 636
    .local v4, "id":J
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 637
    .local v14, "containerType":J
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 638
    .local v16, "screen":I
    const-wide/16 v6, -0x64

    cmp-long v3, v14, v6

    if-nez v3, :cond_0

    .line 639
    const-string v3, "screenRank"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 641
    :cond_0
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 642
    .local v12, "cellX":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 643
    .local v13, "cellY":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 645
    .local v17, "title":Ljava/lang/String;
    const-string v3, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 646
    if-eqz v11, :cond_1

    .line 647
    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " folder : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 651
    :cond_1
    const/4 v3, 0x0

    const-string v6, "folder"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 652
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "screen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 654
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 657
    :cond_2
    const-wide/16 v6, -0x64

    cmp-long v3, v14, v6

    if-nez v3, :cond_4

    .line 658
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 659
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 661
    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 662
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "y"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    move-object/from16 v3, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 666
    invoke-direct/range {v3 .. v11}, Lcom/android/launcher3/home/HomeBnrHelper;->backupFolderItemById(JLjava/lang/String;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Z)V

    .line 668
    if-eqz v11, :cond_5

    .line 669
    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 671
    :cond_5
    const/4 v3, 0x0

    const-string v6, "folder"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 672
    return-void

    .line 633
    .end local v2    # "attrPrefix":Ljava/lang/String;
    .end local v4    # "id":J
    .end local v12    # "cellX":Ljava/lang/String;
    .end local v13    # "cellY":Ljava/lang/String;
    .end local v14    # "containerType":J
    .end local v16    # "screen":I
    .end local v17    # "title":Ljava/lang/String;
    :cond_6
    const-string v2, ""

    goto/16 :goto_0
.end method

.method private backupFolderItemById(JLjava/lang/String;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Z)V
    .locals 31
    .param p1, "folderId"    # J
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "cr"    # Landroid/content/ContentResolver;
    .param p5, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .param p8, "isLCExtractor"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    .line 678
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 679
    .local v7, "selection":Ljava/lang/String;
    const-string v9, "rank"

    .line 680
    .local v9, "sortOrder":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 682
    .local v13, "cursor":Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 683
    const/4 v4, 0x1

    move-object/from16 v0, p7

    iput v4, v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 684
    const-string v4, "Launcher.HomeBnr"

    const-string v5, "backupFolderItemById, fail to open cursor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :goto_0
    return-void

    .line 688
    :cond_0
    if-eqz p8, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mLauncherPrefix:Z

    invoke-static {v5, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 690
    .local v10, "attrPrefix":Ljava/lang/String;
    :goto_1
    new-instance v14, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v14, v13}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 692
    .local v14, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :cond_1
    :goto_2
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 693
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 694
    .local v23, "itemType":I
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 695
    .local v25, "rank":I
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 696
    .local v29, "title":Ljava/lang/String;
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 697
    .local v21, "intent":Ljava/lang/String;
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 698
    .local v17, "hidden":I
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 700
    .local v26, "restore":I
    if-nez v17, :cond_1

    if-nez v26, :cond_1

    .line 704
    const/4 v12, 0x0

    .line 706
    .local v12, "componentName":Landroid/content/ComponentName;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 708
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v21

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v22

    .line 712
    .local v22, "intentInfo":Landroid/content/Intent;
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 715
    .end local v22    # "intentInfo":Landroid/content/Intent;
    :cond_2
    const/16 v24, 0x0

    .line 716
    .local v24, "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 717
    .local v11, "className":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 718
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 719
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 722
    :cond_3
    sparse-switch v23, :sswitch_data_0

    goto :goto_2

    .line 724
    :sswitch_0
    if-eqz v12, :cond_1

    .line 727
    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 728
    if-eqz p8, :cond_4

    .line 729
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/android/launcher3/Utilities;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 731
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 733
    :cond_4
    const/4 v4, 0x0

    const-string v5, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 734
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "screen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 735
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 734
    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 736
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 737
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "packageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 740
    :cond_5
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 741
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "className"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 745
    :cond_6
    const-string v4, "SCLOUD"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 746
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    .line 747
    .local v27, "restored":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "restored"

    move-object/from16 v0, p5

    move-object/from16 v1, v27

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 749
    .end local v27    # "restored":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    const-string v5, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 812
    .end local v11    # "className":Ljava/lang/String;
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v17    # "hidden":I
    .end local v21    # "intent":Ljava/lang/String;
    .end local v23    # "itemType":I
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v25    # "rank":I
    .end local v26    # "restore":I
    .end local v29    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    .line 813
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    .line 688
    .end local v10    # "attrPrefix":Ljava/lang/String;
    .end local v14    # "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :cond_9
    const-string v10, ""

    goto/16 :goto_1

    .line 709
    .restart local v10    # "attrPrefix":Ljava/lang/String;
    .restart local v12    # "componentName":Landroid/content/ComponentName;
    .restart local v14    # "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    .restart local v17    # "hidden":I
    .restart local v21    # "intent":Ljava/lang/String;
    .restart local v23    # "itemType":I
    .restart local v25    # "rank":I
    .restart local v26    # "restore":I
    .restart local v29    # "title":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 710
    .local v16, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_2

    .line 754
    .end local v16    # "e":Ljava/net/URISyntaxException;
    .restart local v11    # "className":Ljava/lang/String;
    .restart local v24    # "packageName":Ljava/lang/String;
    :sswitch_1
    :try_start_3
    const-string v4, "com.samsung.knox.rcp.components"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 758
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_12

    const-string v28, "shortcut"

    .line 760
    .local v28, "tag":Ljava/lang/String;
    :goto_3
    if-eqz p8, :cond_a

    .line 761
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 766
    :cond_a
    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 767
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 768
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "screen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 769
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 768
    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 770
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->iconTypeIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 771
    .local v20, "iconType":I
    if-nez v20, :cond_c

    .line 772
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->iconPackageIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 773
    .local v18, "iconPackage":Ljava/lang/String;
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->iconResourceIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 774
    .local v19, "iconResource":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 775
    const/4 v4, 0x0

    const-string v5, "iconPackage"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 777
    :cond_b
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 778
    const/4 v4, 0x0

    const-string v5, "iconResource"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 782
    .end local v18    # "iconPackage":Ljava/lang/String;
    .end local v19    # "iconResource":Ljava/lang/String;
    :cond_c
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 783
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    move-object/from16 v1, v29

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 786
    :cond_d
    const-string v4, "SCLOUD"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 787
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    .line 788
    .restart local v27    # "restored":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "restored"

    move-object/from16 v0, p5

    move-object/from16 v1, v27

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 791
    .end local v27    # "restored":Ljava/lang/String;
    :cond_e
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 792
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "uri"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 795
    :cond_f
    iget v4, v14, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 796
    .local v15, "data":[B
    if-eqz v15, :cond_10

    array-length v4, v15

    if-lez v4, :cond_10

    if-nez p8, :cond_10

    .line 797
    const/4 v4, 0x0

    const-string v5, "icon"

    const/4 v6, 0x2

    .line 798
    invoke-static {v15, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 797
    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    :cond_10
    const-string v4, "SCLOUD"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 802
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeBnrHelper;->backupContactShortcut(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 804
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    .line 758
    .end local v15    # "data":[B
    .end local v20    # "iconType":I
    .end local v28    # "tag":Ljava/lang/String;
    :cond_12
    const-string v28, "deepshortcut"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 812
    .end local v11    # "className":Ljava/lang/String;
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v17    # "hidden":I
    .end local v21    # "intent":Ljava/lang/String;
    .end local v23    # "itemType":I
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v25    # "rank":I
    .end local v26    # "restore":I
    .end local v29    # "title":Ljava/lang/String;
    :cond_13
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_14

    .line 813
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 817
    :cond_14
    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 722
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private backupHomeScreenContent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 270
    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeOnlyBackup:Z

    if-nez v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 274
    :cond_0
    const-string v1, "Launcher.HomeBnr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sIsHomeOnly : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    const-string v1, "\n"

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    const-string v1, "\n"

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    const/4 v1, 0x0

    const-string v2, "screenContent"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    const/4 v1, 0x0

    const-string v2, "screenContent"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    iput v1, p2, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 283
    const-string v1, "Launcher.HomeBnr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupHomeScreenContent Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private backupHotseat(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 15
    .param p1, "container"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p4, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 320
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 321
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container=-101 and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    .line 322
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "selection":Ljava/lang/String;
    const-string v14, "container desc, screen"

    .line 325
    .local v14, "sortOrder":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 326
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "container desc, screen"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 328
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 329
    const/4 v3, 0x1

    move-object/from16 v0, p4

    iput v3, v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 330
    const-string v3, "Launcher.HomeBnr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backupHotseat, fail to open cursor, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v9, v1

    move-object/from16 v10, p3

    move-object v11, v2

    move-object/from16 v12, p4

    .line 336
    invoke-direct/range {v5 .. v12}, Lcom/android/launcher3/home/HomeBnrHelper;->backupItem(Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 343
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 338
    :catch_0
    move-exception v13

    .line 339
    .local v13, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, p4

    iput v3, v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 340
    const-string v3, "Launcher.HomeBnr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backupHotseat Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 343
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 342
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 343
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method private backupItem(Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 28
    .param p1, "container"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cr"    # Landroid/content/ContentResolver;
    .param p5, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    const-string v4, "LCExtractorHome"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 353
    .local v24, "isLCExtractor":Z
    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    if-eqz v24, :cond_0

    .line 355
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    new-instance v7, Lcom/android/launcher3/common/model/CursorInfo;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 361
    .local v7, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :cond_1
    iget v4, v7, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 362
    .local v25, "itemType":I
    iget v4, v7, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 363
    .local v9, "intent":Ljava/lang/String;
    iget v4, v7, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 364
    .local v23, "hidden":I
    iget v4, v7, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 366
    .local v27, "restore":I
    if-nez v23, :cond_2

    if-eqz v27, :cond_5

    .line 415
    .end local v9    # "intent":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 417
    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    if-eqz v24, :cond_3

    .line 419
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    const-string v4, "home"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v24, :cond_4

    .line 423
    const-string v4, "\n\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    :cond_4
    return-void

    .line 370
    .restart local v9    # "intent":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .line 371
    .local v5, "componentName":Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 372
    .local v10, "intentInfo":Landroid/content/Intent;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 374
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v9, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 378
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 381
    :cond_6
    packed-switch v25, :pswitch_data_0

    .line 412
    .end local v9    # "intent":Ljava/lang/String;
    :cond_7
    :goto_1
    :pswitch_0
    if-eqz v24, :cond_2

    .line 413
    const-string v4, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 375
    .restart local v9    # "intent":Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 376
    .local v22, "e":Ljava/net/URISyntaxException;
    goto :goto_0

    .line 383
    .end local v22    # "e":Ljava/net/URISyntaxException;
    :pswitch_1
    if-eqz v5, :cond_7

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    .line 386
    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/HomeBnrHelper;->backupApplicationItem(Landroid/content/ComponentName;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    .line 391
    :pswitch_2
    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_8

    const-string v13, "shortcut"

    .line 393
    .local v13, "tag":Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    .line 394
    .local v26, "packageName":Ljava/lang/String;
    :goto_3
    const-string v4, "com.samsung.knox.rcp.components"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v8, p0

    move-object/from16 v11, p3

    move-object v12, v7

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    move-object/from16 v16, p7

    .line 397
    invoke-direct/range {v8 .. v16}, Lcom/android/launcher3/home/HomeBnrHelper;->backupShortcutItem(Ljava/lang/String;Landroid/content/Intent;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    goto :goto_1

    .line 391
    .end local v13    # "tag":Ljava/lang/String;
    .end local v26    # "packageName":Ljava/lang/String;
    :cond_8
    const-string v13, "deepshortcut"

    goto :goto_2

    .line 393
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_9
    const/16 v26, 0x0

    goto :goto_3

    .line 401
    .end local v13    # "tag":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/launcher3/home/HomeBnrHelper;->backupWidgetItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    :pswitch_4
    move-object/from16 v14, p0

    move-object/from16 v15, p3

    move-object/from16 v16, v7

    move-object/from16 v17, p4

    move-object/from16 v18, p2

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, p7

    .line 405
    invoke-direct/range {v14 .. v21}, Lcom/android/launcher3/home/HomeBnrHelper;->backupFolderItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Landroid/content/ContentResolver;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    goto :goto_1

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private backupPageSetting(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 11
    .param p1, "container"    # Ljava/lang/String;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 171
    const-string v8, "homeOnly"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeOnlyBackup:Z

    if-nez v8, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v8, "home"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeBackup:Z

    if-eqz v8, :cond_0

    .line 177
    :cond_2
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 178
    .local v0, "cellXY":[I
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v0, v9

    aput v10, v0, v8

    .line 181
    const-string v8, "easy"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x5f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "suffix":Ljava/lang/String;
    const-string v8, "home_easy"

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getWorkspaceScreenTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "tableName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    const-string v9, "com.sec.android.app.launcher.homeeasy.defaultpage.prefs"

    invoke-static {v8, v9}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 201
    .local v5, "screenIndex":I
    :goto_1
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->getItemCount(Ljava/lang/String;)I

    move-result v4

    .line 202
    .local v4, "pageCount":I
    const-string v8, "Launcher.HomeBnr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "backupPageSetting container : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pageCount : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :try_start_0
    const-string v8, "\n"

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    const-string v8, "easy"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 208
    const/4 v8, 0x0

    aget v1, v0, v8

    .line 209
    .local v1, "countX":I
    const/4 v8, 0x1

    aget v2, v0, v8

    .line 211
    .local v2, "countY":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_3

    const/4 v8, -0x1

    if-ne v2, v8, :cond_4

    .line 212
    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 213
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 215
    :cond_4
    const-string v8, "Launcher.HomeBnr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "backupPageSetting home grid x = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", y = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v8, "\n"

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rows"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rows"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    const-string v8, "\n"

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Columns"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Columns"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    .end local v1    # "countX":I
    .end local v2    # "countY":I
    :cond_5
    const-string v8, "\n"

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PageCount"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PageCount"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    const-string v8, "\n"

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ScreenIndex"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ScreenIndex"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 241
    :catch_0
    move-exception v3

    .line 242
    .local v3, "e":Ljava/lang/Exception;
    const/4 v8, 0x1

    iput v8, p3, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 243
    const-string v8, "Launcher.HomeBnr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "backupPageSetting Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 187
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "pageCount":I
    .end local v5    # "screenIndex":I
    .end local v6    # "suffix":Ljava/lang/String;
    .end local v7    # "tableName":Ljava/lang/String;
    :cond_6
    const-string v8, "homeOnly"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x5f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 189
    .restart local v6    # "suffix":Ljava/lang/String;
    const-string v8, "homeOnly"

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getWorkspaceScreenTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 190
    .restart local v7    # "tableName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v0, v9}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentGridSize(Landroid/content/Context;[IZ)V

    .line 191
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    const-string v9, "com.sec.android.app.launcher.homeonly.defaultpage.prefs"

    invoke-static {v8, v9}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "screenIndex":I
    goto/16 :goto_1

    .line 194
    .end local v5    # "screenIndex":I
    .end local v6    # "suffix":Ljava/lang/String;
    .end local v7    # "tableName":Ljava/lang/String;
    :cond_7
    const-string v6, ""

    .line 195
    .restart local v6    # "suffix":Ljava/lang/String;
    const-string v8, "home"

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getWorkspaceScreenTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 196
    .restart local v7    # "tableName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v0, v9}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentGridSize(Landroid/content/Context;[IZ)V

    .line 197
    iget-object v8, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    const-string v9, "com.sec.android.app.launcher.home.defaultpage.prefs"

    invoke-static {v8, v9}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "screenIndex":I
    goto/16 :goto_1
.end method

.method private backupShortcutItem(Ljava/lang/String;Landroid/content/Intent;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 20
    .param p1, "intent"    # Ljava/lang/String;
    .param p2, "intentInfo"    # Landroid/content/Intent;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p8, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    const-string v17, "LCExtractorHome"

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 480
    .local v13, "isLCExtractor":Z
    if-eqz v13, :cond_2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mLauncherPrefix:Z

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, "attrPrefix":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 483
    .local v8, "containerType":J
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 484
    .local v15, "screen":I
    const-wide/16 v18, -0x64

    cmp-long v17, v8, v18

    if-nez v17, :cond_0

    .line 485
    const-string v17, "screenRank"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 487
    :cond_0
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 488
    .local v5, "cellX":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 489
    .local v6, "cellY":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 492
    .local v16, "title":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 494
    if-nez v13, :cond_1

    .line 495
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v15, v1}, Lcom/android/launcher3/home/HomeBnrHelper;->backupAppsButton(ILorg/xmlpull/v1/XmlSerializer;)V

    .line 558
    :cond_1
    :goto_1
    return-void

    .line 480
    .end local v4    # "attrPrefix":Ljava/lang/String;
    .end local v5    # "cellX":Ljava/lang/String;
    .end local v6    # "cellY":Ljava/lang/String;
    .end local v8    # "containerType":J
    .end local v15    # "screen":I
    .end local v16    # "title":Ljava/lang/String;
    :cond_2
    const-string v4, ""

    goto/16 :goto_0

    .line 500
    .restart local v4    # "attrPrefix":Ljava/lang/String;
    .restart local v5    # "cellX":Ljava/lang/String;
    .restart local v6    # "cellY":Ljava/lang/String;
    .restart local v8    # "containerType":J
    .restart local v15    # "screen":I
    .restart local v16    # "title":Ljava/lang/String;
    :cond_3
    const-string v17, "\n"

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    if-eqz v13, :cond_4

    .line 502
    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 504
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 507
    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "screen"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->iconTypeIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 510
    .local v12, "iconType":I
    if-nez v12, :cond_6

    .line 511
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->iconPackageIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 512
    .local v10, "iconPackage":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->iconResourceIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 513
    .local v11, "iconResource":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    if-nez v13, :cond_5

    .line 514
    const/16 v17, 0x0

    const-string v18, "iconPackage"

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 517
    :cond_5
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    if-nez v13, :cond_6

    .line 518
    const/16 v17, 0x0

    const-string v18, "iconResource"

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 523
    .end local v10    # "iconPackage":Ljava/lang/String;
    .end local v11    # "iconResource":Ljava/lang/String;
    :cond_6
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 524
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "title"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 527
    :cond_7
    const-wide/16 v18, -0x64

    cmp-long v17, v8, v18

    if-nez v17, :cond_9

    .line 528
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 529
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 531
    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 532
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "y"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 536
    :cond_9
    const-string v17, "SCLOUD"

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 537
    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 538
    .local v14, "restored":Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "restored"

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 541
    .end local v14    # "restored":Ljava/lang/String;
    :cond_a
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 542
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "uri"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    :cond_b
    if-nez v13, :cond_c

    .line 546
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 547
    .local v7, "data":[B
    if-eqz v7, :cond_c

    array-length v0, v7

    move/from16 v17, v0

    if-lez v17, :cond_c

    .line 548
    const/16 v17, 0x0

    const-string v18, "icon"

    const/16 v19, 0x2

    .line 549
    move/from16 v0, v19

    invoke-static {v7, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v19

    .line 548
    move-object/from16 v0, p7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 553
    .end local v7    # "data":[B
    :cond_c
    const-string v17, "SCLOUD"

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeBnrHelper;->backupContactShortcut(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 557
    :cond_d
    const/16 v17, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1
.end method

.method private backupWidgetItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 22
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    const-string v19, "LCExtractorHome"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 564
    .local v9, "isLCExtractor":Z
    if-eqz v9, :cond_b

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mLauncherPrefix:Z

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 566
    .local v5, "attrPrefix":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v18

    .line 567
    .local v18, "widgets":Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->appWidgetIdIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 568
    .local v4, "appWidgetId":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v17

    .line 570
    .local v17, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 571
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 572
    .local v12, "packageName":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 577
    .local v8, "className":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 578
    .local v10, "containerType":J
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 579
    .local v14, "screen":I
    const-wide/16 v20, -0x64

    cmp-long v19, v10, v20

    if-nez v19, :cond_0

    .line 580
    const-string v19, "screenRank"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 582
    :cond_0
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 583
    .local v6, "cellX":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 584
    .local v7, "cellY":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->spanXIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 585
    .local v15, "spanX":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->spanYIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 587
    .local v16, "spanY":Ljava/lang/String;
    const-string v19, "\n"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 588
    if-eqz v9, :cond_1

    .line 589
    const/16 v19, 0x2

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " appwidget : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 591
    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/launcher3/Utilities;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 590
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 592
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 594
    :cond_1
    const/16 v19, 0x0

    const-string v20, "appwidget"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 595
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "screen"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 597
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "packageName"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 599
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 600
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "className"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 603
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 604
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 606
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 607
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "y"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 610
    :cond_5
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 611
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "spanX"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 613
    :cond_6
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 614
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "spanY"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 617
    :cond_7
    if-nez v9, :cond_8

    .line 618
    const/16 v19, 0x0

    const-string v20, "appWidgetID"

    .line 619
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 618
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 622
    :cond_8
    const-string v19, "SCLOUD"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 623
    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 624
    .local v13, "restored":Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "restored"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 626
    .end local v13    # "restored":Ljava/lang/String;
    :cond_9
    const/16 v19, 0x0

    const-string v20, "appwidget"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    .end local v6    # "cellX":Ljava/lang/String;
    .end local v7    # "cellY":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v10    # "containerType":J
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "screen":I
    .end local v15    # "spanX":Ljava/lang/String;
    .end local v16    # "spanY":Ljava/lang/String;
    :cond_a
    return-void

    .line 564
    .end local v4    # "appWidgetId":I
    .end local v5    # "attrPrefix":Ljava/lang/String;
    .end local v17    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v18    # "widgets":Landroid/appwidget/AppWidgetManager;
    :cond_b
    const-string v5, ""

    goto/16 :goto_0
.end method

.method private backupWorkspace(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 11
    .param p1, "container"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p4, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    const/4 v1, 0x1

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 290
    .local v4, "cr":Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 291
    .local v6, "uri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 292
    .local v9, "favoriteTable":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getWorkspaceScreenTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 294
    .local v10, "screenTable":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    .line 295
    invoke-virtual {v0, v9, v10}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadWorkspaceWithScreenRank(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 297
    .local v3, "cursor":Landroid/database/Cursor;
    if-nez v3, :cond_1

    .line 298
    iput v1, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 299
    const-string v0, "Launcher.HomeBnr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupWorkspace, fail to open cursor, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    const-string v0, "\n"

    invoke-interface {p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p4

    .line 306
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HomeBnrHelper;->backupItem(Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 308
    :catch_0
    move-exception v8

    .line 309
    .local v8, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    :try_start_1
    iput v0, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 310
    const-string v0, "Launcher.HomeBnr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupWorkspace Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 312
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 313
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private backupZeroPage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    const/4 v6, 0x1

    .line 248
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v2

    .line 249
    .local v2, "zeroPageEnable":Z
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageContents(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 250
    .local v1, "zeroPageContents":Landroid/content/ComponentName;
    const-string v3, "Launcher.HomeBnr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zeroPageEnable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :try_start_0
    const-string v3, "\n"

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    const-string v3, "\n"

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    if-eqz v1, :cond_0

    .line 255
    const/4 v3, 0x0

    const-string v4, "zeroPageContents"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    const/4 v3, 0x0

    const-string v4, "zeroPageContents"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    const-string v3, "\n"

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    :cond_0
    const/4 v3, 0x0

    const-string v4, "zeroPage"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    const/4 v3, 0x0

    const-string v4, "zeroPage"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    iput v6, p2, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 265
    const-string v3, "Launcher.HomeBnr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backupZeroPage Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public backupCategory()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x2c

    .line 73
    iput-boolean v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeBackup:Z

    .line 74
    iput-boolean v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeOnlyBackup:Z

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "category":Ljava/lang/StringBuffer;
    const-string v3, "home"

    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "tableName":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->getItemCount(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 80
    iput-boolean v5, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeBackup:Z

    .line 81
    const-string v3, "home"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    const-string v3, "hotseat"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    const-string v3, "homeOnly"

    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->getItemCount(Ljava/lang/String;)I

    move-result v1

    .line 89
    if-lez v1, :cond_2

    .line 90
    iput-boolean v5, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeOnlyBackup:Z

    .line 91
    iget-boolean v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeBackup:Z

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    :cond_1
    const-string v3, "homeOnly"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    const-string v3, "hotseat_homeOnly"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    :cond_2
    iget-boolean v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeBackup:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/launcher3/home/HomeBnrHelper;->isPossibleHomeOnlyBackup:Z

    if-eqz v3, :cond_4

    .line 101
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    const-string v3, "zeroPage"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public backupLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 111
    const-string v2, "Launcher.HomeBnr"

    const-string v3, "backupLayout"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p1, p0, Lcom/android/launcher3/home/HomeBnrHelper;->mContext:Landroid/content/Context;

    .line 115
    const-string v2, "LCExtractorHome"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const-string v2, "home"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupWorkspace(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 117
    const-string v2, "hotseat"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupHotseat(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v2, "LCExtractorApps"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    const-string v2, "home"

    invoke-direct {p0, v2, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupPageSetting(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 124
    invoke-direct {p0, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupZeroPage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 125
    const-string v2, "home"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupWorkspace(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 126
    const-string v2, "hotseat"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupHotseat(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 128
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v2, :cond_2

    .line 130
    const-string v2, "homeOnly"

    invoke-direct {p0, v2, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupPageSetting(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 131
    invoke-direct {p0, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupHomeScreenContent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 132
    const-string v2, "homeOnly"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupWorkspace(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 133
    const-string v2, "hotseat_homeOnly"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupHotseat(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 136
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v2, :cond_0

    .line 138
    const-string v2, "easy"

    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "tableName":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->getItemCount(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 143
    const-string v2, "easy"

    invoke-direct {p0, v2, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupPageSetting(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 144
    const-string v2, "home_easy"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupWorkspace(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 145
    const-string v2, "hotseat_easy"

    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/launcher3/home/HomeBnrHelper;->backupHotseat(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    goto :goto_0
.end method

.method public restoreLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "restoredTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 152
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    .line 153
    .local v0, "favoritesProvider":Lcom/android/launcher3/common/model/FavoritesProvider;
    if-nez v0, :cond_1

    .line 154
    const-string v2, "Launcher.HomeBnr"

    const-string v3, "FavoritesProvider.getInstance() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput v4, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v2, "Launcher.HomeBnr"

    const-string v3, "restoreLayout"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v1, Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/model/FavoritesProvider;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    .line 162
    .local v1, "layoutParser":Lcom/android/launcher3/common/model/DefaultLayoutParser;
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->restoreFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    move-result v2

    if-gez v2, :cond_0

    .line 163
    iput v4, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    goto :goto_0
.end method
