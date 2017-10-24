.class Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemFontChanger"
.end annotation


# static fields
.field public static final KEY_PREFERENCE:Ljava/lang/String; = "MONOTYPE"


# instance fields
.field mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

.field final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/enterprise/general/MiscPolicy;

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    .line 1409
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/general/MiscPolicy;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    return-void
.end method

.method private changeFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 24
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 1470
    const/4 v15, 0x0

    .line 1490
    .local v15, "ret":Z
    new-instance v7, Lcom/android/server/enterprise/general/FontWriter;

    invoke-direct {v7}, Lcom/android/server/enterprise/general/FontWriter;-><init>()V

    .line 1491
    .local v7, "fontWriter":Lcom/android/server/enterprise/general/FontWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/general/MiscPolicy;->-get0(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1494
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .line 1495
    .local v11, "index":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v12

    .line 1497
    .local v12, "installedFontList":[Ljava/lang/String;
    if-nez v12, :cond_0

    .line 1498
    const-string/jumbo v21, "MiscPolicy"

    const-string/jumbo v22, "changeFont():Installed font list is null"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    return v15

    .line 1502
    :cond_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_1

    .line 1503
    aget-object v21, v12, v9

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1504
    move v11, v9

    .line 1505
    const-string/jumbo v21, "MiscPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "index"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    :cond_1
    const-string/jumbo v21, "default"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/general/MiscPolicy;->-get0(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v21

    const-string/jumbo v22, "sans.loc"

    .line 1513
    const-string/jumbo v23, "default"

    .line 1512
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    aget-object v21, v12, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    .line 1515
    const-string/jumbo v21, "MiscPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "default font is selected..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    const/16 v21, 0x1

    return v21

    .line 1502
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1519
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/TypefaceFinder;->findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;

    move-result-object v16

    .line 1520
    .local v16, "sansTypeface":Lcom/android/server/enterprise/general/Typeface;
    if-nez v16, :cond_4

    .line 1521
    const-string/jumbo v21, "MiscPolicy"

    const-string/jumbo v22, "change font failed"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    return v15

    .line 1525
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object p2

    .line 1526
    if-eqz p2, :cond_5

    const-string/jumbo v21, "com.monotype.android.font."

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1529
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v17

    .line 1532
    .local v17, "selectedFont":Ljava/lang/String;
    const-string/jumbo v21, ".xml"

    const-string/jumbo v22, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1534
    .local v8, "fontdir":Ljava/lang/String;
    const-string/jumbo v21, " "

    const-string/jumbo v22, "-"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/general/MiscPolicy;->-get0(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v8}, Lcom/android/server/enterprise/general/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 1537
    .local v6, "fontDir":Ljava/io/File;
    if-nez v6, :cond_7

    .line 1538
    const-string/jumbo v21, "MiscPolicy"

    const-string/jumbo v22, "create fontDir object is null "

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const/16 v21, 0x0

    return v21

    .line 1527
    .end local v6    # "fontDir":Ljava/io/File;
    .end local v8    # "fontdir":Ljava/lang/String;
    .end local v17    # "selectedFont":Ljava/lang/String;
    :cond_6
    return v15

    .line 1544
    .restart local v6    # "fontDir":Ljava/io/File;
    .restart local v8    # "fontdir":Ljava/lang/String;
    .restart local v17    # "selectedFont":Ljava/lang/String;
    :cond_7
    const/16 v20, 0x0

    .line 1545
    .local v20, "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    if-eqz v16, :cond_9

    .line 1546
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1547
    .local v18, "token":J
    const/4 v9, 0x0

    .end local v20    # "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    :goto_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_8

    .line 1548
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/enterprise/general/TypefaceFile;

    .line 1552
    .local v20, "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    .line 1553
    .local v14, "res":Landroid/content/res/Resources;
    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 1555
    .local v4, "assetManager":Landroid/content/res/AssetManager;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "fonts/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/general/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 1556
    .local v10, "in":Ljava/io/InputStream;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/general/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v6, v10, v0}, Lcom/android/server/enterprise/general/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1547
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1558
    .end local v4    # "assetManager":Landroid/content/res/AssetManager;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v14    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v5

    .line 1559
    .local v5, "ex":Ljava/lang/Exception;
    const-string/jumbo v21, "MiscPolicy"

    const-string/jumbo v22, "changeFont():Exception"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    const-string/jumbo v21, "MiscPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1562
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    return v15

    .line 1566
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v20    # "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    :cond_8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1569
    .end local v18    # "token":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/general/MiscPolicy;->-get0(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v21

    const-string/jumbo v22, "sans.loc"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    .line 1571
    const-string/jumbo v21, "MiscPolicy"

    const-string/jumbo v22, "change font:Done"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    const/16 v21, 0x1

    return v21
.end method

.method private getFontString()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1649
    const/4 v2, 0x0

    .line 1650
    .local v2, "retString":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontsVector()Ljava/util/Vector;

    move-result-object v0

    .line 1651
    .local v0, "fontNames":Ljava/util/Vector;
    if-nez v0, :cond_0

    .line 1652
    return-object v3

    .line 1653
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 1656
    .local v2, "retString":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1657
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1659
    :cond_1
    return-object v2
.end method

.method private getFontsVector()Ljava/util/Vector;
    .locals 13

    .prologue
    .line 1663
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    .line 1664
    new-instance v12, Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-direct {v12}, Lcom/android/server/enterprise/general/TypefaceFinder;-><init>()V

    iput-object v12, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    .line 1666
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1668
    .local v4, "fontPackageNames":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1670
    .local v2, "fontNames":Ljava/util/Vector;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 1671
    .local v9, "typefaceFiles":Ljava/util/Vector;
    const/4 v1, 0x0

    .line 1673
    .local v1, "fontAssetManager":Landroid/content/res/AssetManager;
    const/4 v7, 0x0

    .line 1674
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 1675
    .local v6, "installedApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v12, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v12}, Lcom/android/server/enterprise/general/MiscPolicy;->-get0(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1676
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1679
    .local v10, "token":J
    const/16 v12, 0x80

    .line 1678
    :try_start_0
    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 1681
    .local v6, "installedApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .line 1682
    .local v3, "fontPackageName":Ljava/lang/String;
    const/4 v5, 0x0

    .end local v1    # "fontAssetManager":Landroid/content/res/AssetManager;
    .end local v3    # "fontPackageName":Ljava/lang/String;
    .local v5, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_2

    .line 1683
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1684
    .local v3, "fontPackageName":Ljava/lang/String;
    const-string/jumbo v12, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1682
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1687
    :cond_1
    const-string/jumbo v12, "com.monotype.android.font."

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1688
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1689
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 1690
    .local v1, "fontAssetManager":Landroid/content/res/AssetManager;
    iget-object v12, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v12, v1, v3}, Lcom/android/server/enterprise/general/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1695
    .end local v1    # "fontAssetManager":Landroid/content/res/AssetManager;
    .end local v3    # "fontPackageName":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "installedApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1696
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1697
    const/4 v2, 0x0

    .line 1699
    .local v2, "fontNames":Ljava/util/Vector;
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1701
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fontNames":Ljava/util/Vector;
    :goto_2
    return-object v2

    .line 1693
    .local v2, "fontNames":Ljava/util/Vector;
    .restart local v5    # "i":I
    .restart local v6    # "installedApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_2
    :try_start_2
    iget-object v12, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v12, v2, v9, v4}, Lcom/android/server/enterprise/general/TypefaceFinder;->getSansEntries(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1699
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 1698
    .end local v5    # "i":I
    .end local v6    # "installedApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_0
    move-exception v12

    .line 1699
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1698
    throw v12
.end method


# virtual methods
.method public getActiveFontPosition()I
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 1611
    const/4 v3, 0x0

    .line 1612
    .local v3, "map":Ljava/util/Map;
    const/4 v5, 0x0

    .line 1615
    .local v5, "str":Ljava/io/BufferedInputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v9}, Lcom/android/server/enterprise/general/MiscPolicy;->-get0(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "com.android.settings"

    .line 1616
    const/4 v11, 0x2

    .line 1615
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 1617
    .local v4, "settingContext":Landroid/content/Context;
    const-string/jumbo v9, "prefs"

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1619
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1620
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v10, 0x4000

    invoke-direct {v6, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .local v6, "str":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .local v3, "map":Ljava/util/Map;
    move-object v5, v6

    .line 1627
    .end local v3    # "map":Ljava/util/Map;
    .end local v6    # "str":Ljava/io/BufferedInputStream;
    :cond_0
    if-eqz v5, :cond_1

    .line 1628
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1635
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "settingContext":Landroid/content/Context;
    :cond_1
    :goto_0
    if-eqz v3, :cond_4

    .line 1636
    const-string/jumbo v9, "SavedClickedItem"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1637
    .local v7, "v":Ljava/lang/Integer;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_2
    return v8

    .line 1630
    .end local v7    # "v":Ljava/lang/Integer;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "settingContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1623
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "settingContext":Landroid/content/Context;
    .local v3, "map":Ljava/util/Map;
    .restart local v5    # "str":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v1

    .line 1624
    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1627
    if-eqz v5, :cond_1

    .line 1628
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1630
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1625
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1627
    :goto_2
    if-eqz v5, :cond_3

    .line 1628
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1625
    :cond_3
    :goto_3
    throw v8

    .line 1630
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 1640
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "map":Ljava/util/Map;
    :cond_4
    return v8

    .line 1625
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "map":Ljava/util/Map;
    .restart local v4    # "settingContext":Landroid/content/Context;
    .restart local v6    # "str":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "str":Ljava/io/BufferedInputStream;
    .local v5, "str":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 1623
    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .restart local v6    # "str":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "str":Ljava/io/BufferedInputStream;
    .restart local v5    # "str":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1576
    const-string/jumbo v2, "MiscPolicy"

    const-string/jumbo v3, "getSystemActiveFont():getting active system font:"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getActiveFontPosition()I

    move-result v1

    .line 1578
    .local v1, "position":I
    const-string/jumbo v2, "MiscPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getActiveFontPosition():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    .line 1580
    .local v0, "fonts":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1581
    aget-object v2, v0, v1

    return-object v2

    .line 1583
    :cond_0
    return-object v5
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1644
    const-string/jumbo v0, "MiscPolicy"

    const-string/jumbo v1, "getSystemFonts():getting all system fonts"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected savePreferences(Ljava/lang/String;I)V
    .locals 10
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 1705
    const/4 v3, 0x0

    .line 1706
    .local v3, "mode":I
    const/4 v6, 0x0

    .line 1709
    .local v6, "settingContext":Landroid/content/Context;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v7}, Lcom/android/server/enterprise/general/MiscPolicy;->-get0(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.android.settings"

    .line 1710
    const/4 v9, 0x2

    .line 1709
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1715
    .end local v6    # "settingContext":Landroid/content/Context;
    :goto_0
    if-nez v6, :cond_0

    .line 1716
    const-string/jumbo v7, "MiscPolicy"

    const-string/jumbo v8, "Setting Context is Null"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    return-void

    .line 1711
    .restart local v6    # "settingContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 1712
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1720
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "settingContext":Landroid/content/Context;
    :cond_0
    const-string/jumbo v7, "prefs"

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1723
    .local v4, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1724
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "SavedClickedItem"

    invoke-interface {v1, v7, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1725
    const-string/jumbo v7, "selectedFont"

    invoke-interface {v1, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1727
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1729
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_preferences"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1730
    .local v5, "prefName":Ljava/lang/String;
    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1731
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1732
    .local v2, "editor1":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "MONOTYPE"

    invoke-interface {v2, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1733
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1704
    return-void
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 1413
    const-string/jumbo v18, "MiscPolicy"

    const-string/jumbo v19, "setSystemActiveFont():Start"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const/4 v14, 0x0

    .line 1416
    .local v14, "ret":Z
    if-nez p1, :cond_0

    .line 1417
    const-string/jumbo v18, "MiscPolicy"

    const-string/jumbo v19, "setSystemActiveFont():Invalid input"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    return v14

    .line 1421
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->changeFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 1422
    .local v14, "ret":Z
    if-nez v14, :cond_1

    .line 1423
    const/16 v18, 0x0

    return v18

    .line 1425
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1427
    .local v16, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 1428
    .local v6, "am":Landroid/app/IActivityManager;
    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 1429
    .local v7, "config":Landroid/content/res/Configuration;
    new-instance v13, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v13, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 1430
    .local v13, "randomizer":Ljava/util/Random;
    const/4 v12, 0x0

    .line 1431
    .local v12, "min":I
    const/16 v9, 0x2710

    .line 1435
    .local v9, "max":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v7, Landroid/content/res/Configuration;->FlipFont:I

    .line 1436
    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1449
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1450
    .local v10, "identity":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/general/MiscPolicy;->-get0(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v18

    .line 1451
    const-string/jumbo v19, "activity"

    .line 1450
    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 1452
    .local v4, "activityManager":Landroid/app/ActivityManager;
    const/16 v18, 0x32

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 1454
    .local v5, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v5, :cond_2

    .line 1455
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "aTask$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1456
    .local v2, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 1460
    .local v15, "s":Ljava/lang/String;
    invoke-virtual {v4, v15}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 1440
    .end local v2    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "aTask$iterator":Ljava/util/Iterator;
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v5    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6    # "am":Landroid/app/IActivityManager;
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v9    # "max":I
    .end local v10    # "identity":J
    .end local v12    # "min":I
    .end local v13    # "randomizer":Ljava/util/Random;
    .end local v15    # "s":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1441
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v18, "MiscPolicy"

    const-string/jumbo v19, "setSystemActiveFont():Exception"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1442
    const/16 v18, 0x0

    .line 1444
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1442
    return v18

    .line 1443
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 1444
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1443
    throw v18

    .line 1465
    .restart local v4    # "activityManager":Landroid/app/ActivityManager;
    .restart local v5    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v6    # "am":Landroid/app/IActivityManager;
    .restart local v7    # "config":Landroid/content/res/Configuration;
    .restart local v9    # "max":I
    .restart local v10    # "identity":J
    .restart local v12    # "min":I
    .restart local v13    # "randomizer":Ljava/util/Random;
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1466
    return v14
.end method
