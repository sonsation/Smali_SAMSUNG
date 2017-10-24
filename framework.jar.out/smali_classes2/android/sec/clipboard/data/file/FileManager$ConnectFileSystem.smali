.class Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/file/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectFileSystem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;
    }
.end annotation


# instance fields
.field dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private fileHelper:Landroid/sec/clipboard/util/FileHelper;

.field private gcLifeCount:I

.field private infoFile:Ljava/io/File;

.field private infoTempFile:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private rootPath:Ljava/io/File;

.field final synthetic this$0:Landroid/sec/clipboard/data/file/FileManager;


# direct methods
.method static synthetic -get0(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Landroid/sec/clipboard/util/FileHelper;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    return-object v0
.end method

.method static synthetic -get1(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)I
    .locals 1

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gcLifeCount:I

    return v0
.end method

.method static synthetic -get2(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Z
    .locals 1

    invoke-direct {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->saveInfoFile()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Z
    .locals 1

    invoke-direct {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->saveTempInfoFile()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V
    .locals 3
    .param p1, "this$0"    # Landroid/sec/clipboard/data/file/FileManager;
    .param p2, "infoFile"    # Ljava/io/File;

    .prologue
    .line 391
    iput-object p1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    const/16 v0, 0x19

    iput v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gcLifeCount:I

    .line 377
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->mHandler:Landroid/os/Handler;

    .line 378
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;-><init>(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->mRunnable:Ljava/lang/Runnable;

    .line 392
    iput-object p2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    .line 393
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    .line 394
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    .line 395
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    .line 397
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->checkDir(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    goto :goto_0
.end method

.method private deleteEquals(Ljava/util/ArrayList;[Ljava/io/File;)[Ljava/io/File;
    .locals 8
    .param p2, "_result"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;[",
            "Ljava/io/File;",
            ")[",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "base":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    .line 454
    .local v2, "result":[Ljava/io/File;
    array-length v3, v2

    .line 455
    .local v3, "size":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "wrap$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 456
    .local v4, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 458
    .local v0, "base_path":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 459
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    aget-object v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v6

    if-nez v6, :cond_2

    .line 460
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v6}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v2, v1

    .line 458
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_2
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    aget-object v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v6

    if-nez v6, :cond_3

    .line 462
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v6}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v2, v1

    goto :goto_1

    .line 463
    :cond_3
    if-eqz v0, :cond_1

    .line 464
    aget-object v6, v2, v1

    invoke-virtual {v0, v6}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v6

    if-nez v6, :cond_1

    .line 465
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v6}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v2, v1

    goto :goto_1

    .line 470
    .end local v0    # "base_path":Ljava/io/File;
    .end local v1    # "i":I
    .end local v4    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_4
    return-object v2
.end method

.method private loadDataList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createDataList()Ljava/util/ArrayList;

    move-result-object v2

    .line 521
    .local v2, "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Landroid/sec/clipboard/data/file/FileManager;->-set0(Landroid/sec/clipboard/data/file/FileManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 522
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 523
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->load()Z

    move-result v3

    if-nez v3, :cond_0

    .line 524
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    invoke-static {v3}, Landroid/sec/clipboard/data/file/FileManager;->-get1(Landroid/sec/clipboard/data/file/FileManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 528
    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    return-object v2
.end method

.method private makeDataValue(Ljava/io/File;Landroid/sec/clipboard/data/file/WrapFileClipData;)Z
    .locals 22
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "wfClip"    # Landroid/sec/clipboard/data/file/WrapFileClipData;

    .prologue
    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v14

    .line 582
    .local v14, "temp_clip":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v14, :cond_12

    .line 583
    invoke-virtual {v14}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 701
    const/16 v17, 0x1

    return v17

    :sswitch_0
    move-object v15, v14

    .line 585
    check-cast v15, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    .line 586
    .local v15, "text":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    invoke-virtual {v15}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->toSave()V

    .line 587
    const/16 v17, 0x1

    return v17

    .end local v15    # "text":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    :sswitch_1
    move-object v3, v14

    .line 590
    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .line 591
    .local v3, "bitmapClip":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v11

    .line 593
    .local v11, "path":Ljava/lang/String;
    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 594
    .local v12, "separatorIndex":I
    if-gez v12, :cond_5

    move-object v8, v11

    .line 595
    .local v8, "fileName":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 597
    .local v4, "createFile":Ljava/io/File;
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 598
    .local v7, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v7, :cond_0

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v4}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 599
    :cond_0
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v17

    .line 598
    if-eqz v17, :cond_12

    .line 601
    :cond_1
    const-string/jumbo v17, "Clipboard.FileManager"

    const-string/jumbo v18, "ok path change.."

    invoke-static/range {v17 .. v18}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 603
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setImagePath(Ljava/lang/String;)Z

    .line 604
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1fd

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-static/range {v17 .. v20}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/sec/clipboard/data/file/FileManager;->-get0(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 608
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/sec/clipboard/data/file/FileManager;->-get0(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501f4

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/clipboard/data/file/FileManager;->-get0(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10501f3

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 608
    invoke-virtual/range {v17 .. v20}, Landroid/sec/clipboard/util/FileHelper;->createThumnailImage(Ljava/lang/String;II)Z

    .line 616
    :goto_1
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->HasExtraData()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 617
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "ExtraDataPath":Ljava/lang/String;
    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 619
    .local v13, "separatorIndexForExtraData":I
    if-gez v13, :cond_7

    move-object v9, v2

    .line 620
    .local v9, "fileNameForExtraData":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 622
    .local v5, "createFileForExtraData":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 623
    .local v6, "extraFD":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_2

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v5}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 624
    :cond_2
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v17

    .line 623
    if-eqz v17, :cond_4

    .line 625
    :cond_3
    const-string/jumbo v17, "Clipboard.FileManager"

    const-string/jumbo v18, "ok ExtraDataPath change.."

    invoke-static/range {v17 .. v18}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 628
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setExtraDataPath(Ljava/lang/String;)Z

    .line 629
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1fd

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-static/range {v17 .. v20}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 632
    .end local v2    # "ExtraDataPath":Ljava/lang/String;
    .end local v5    # "createFileForExtraData":Ljava/io/File;
    .end local v6    # "extraFD":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "fileNameForExtraData":Ljava/lang/String;
    .end local v13    # "separatorIndexForExtraData":I
    :cond_4
    const/16 v17, 0x1

    return v17

    .line 594
    .end local v4    # "createFile":Ljava/io/File;
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v17, v12, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "fileName":Ljava/lang/String;
    goto/16 :goto_0

    .line 612
    .restart local v4    # "createFile":Ljava/io/File;
    .restart local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_6
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/sec/clipboard/util/FileHelper;->createThumnailImage(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 619
    .restart local v2    # "ExtraDataPath":Ljava/lang/String;
    .restart local v13    # "separatorIndexForExtraData":I
    :cond_7
    add-int/lit8 v17, v13, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "fileNameForExtraData":Ljava/lang/String;
    goto/16 :goto_2

    .end local v2    # "ExtraDataPath":Ljava/lang/String;
    .end local v3    # "bitmapClip":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    .end local v4    # "createFile":Ljava/io/File;
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "fileNameForExtraData":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "separatorIndex":I
    .end local v13    # "separatorIndexForExtraData":I
    :sswitch_2
    move-object v10, v14

    .line 637
    check-cast v10, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 638
    .local v10, "htmlClip":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    invoke-virtual {v10}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v11

    .line 639
    .restart local v11    # "path":Ljava/lang/String;
    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    if-eq v11, v0, :cond_d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_d

    .line 641
    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 642
    .restart local v12    # "separatorIndex":I
    if-gez v12, :cond_b

    move-object v8, v11

    .line 643
    .restart local v8    # "fileName":Ljava/lang/String;
    :goto_3
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 646
    .restart local v4    # "createFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 647
    .restart local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v7, :cond_8

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v4}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 648
    :cond_8
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v17

    .line 647
    if-eqz v17, :cond_12

    .line 649
    :cond_9
    const-string/jumbo v17, "Clipboard.FileManager"

    const-string/jumbo v18, "ok path change.."

    invoke-static/range {v17 .. v18}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 652
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    .line 653
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1fd

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-static/range {v17 .. v20}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 656
    const-string/jumbo v17, "previewhtmlclipboarditem"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/sec/clipboard/data/file/FileManager;->-get0(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;

    move-result-object v17

    if-eqz v17, :cond_c

    .line 658
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/sec/clipboard/data/file/FileManager;->-get0(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501f4

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/clipboard/data/file/FileManager;->-get0(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10501f3

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 658
    invoke-virtual/range {v17 .. v20}, Landroid/sec/clipboard/util/FileHelper;->createThumnailImage(Ljava/lang/String;II)Z

    .line 666
    :cond_a
    :goto_4
    const/16 v17, 0x1

    return v17

    .line 642
    .end local v4    # "createFile":Ljava/io/File;
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_b
    add-int/lit8 v17, v12, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "fileName":Ljava/lang/String;
    goto/16 :goto_3

    .line 662
    .restart local v4    # "createFile":Ljava/io/File;
    .restart local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_c
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/sec/clipboard/util/FileHelper;->createThumnailImage(Ljava/lang/String;)Z

    goto :goto_4

    .line 669
    .end local v4    # "createFile":Ljava/io/File;
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v12    # "separatorIndex":I
    :cond_d
    const/16 v17, 0x1

    return v17

    .end local v10    # "htmlClip":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    .end local v11    # "path":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v16, v14

    .line 674
    check-cast v16, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .line 675
    .local v16, "uriClip":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v11

    .line 676
    .restart local v11    # "path":Ljava/lang/String;
    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    if-eq v11, v0, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_11

    .line 677
    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 678
    .restart local v12    # "separatorIndex":I
    if-gez v12, :cond_10

    move-object v8, v11

    .line 679
    .restart local v8    # "fileName":Ljava/lang/String;
    :goto_5
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 681
    .restart local v4    # "createFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 682
    .restart local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v7, :cond_e

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v4}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 683
    :cond_e
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v17

    .line 682
    if-eqz v17, :cond_12

    .line 684
    :cond_f
    const-string/jumbo v17, "Clipboard.FileManager"

    const-string/jumbo v18, "ok path change.."

    invoke-static/range {v17 .. v18}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 687
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    .line 688
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1fd

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-static/range {v17 .. v20}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 691
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v17

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/sec/clipboard/util/FileHelper;->createThumnailImage(Ljava/lang/String;)Z

    .line 693
    const/16 v17, 0x1

    return v17

    .line 678
    .end local v4    # "createFile":Ljava/io/File;
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_10
    add-int/lit8 v17, v12, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "fileName":Ljava/lang/String;
    goto :goto_5

    .line 696
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v12    # "separatorIndex":I
    :cond_11
    const/16 v17, 0x1

    return v17

    .line 704
    .end local v11    # "path":Ljava/lang/String;
    .end local v16    # "uriClip":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    :cond_12
    const/16 v17, 0x0

    return v17

    .line 583
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private saveInfoFile()Z
    .locals 5

    .prologue
    .line 428
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 430
    .local v1, "saveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    :try_start_0
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :try_start_1
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroid/sec/clipboard/util/FileHelper;->saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3

    return v2

    .line 430
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 435
    const/4 v2, 0x0

    return v2
.end method

.method private saveTempInfoFile()Z
    .locals 5

    .prologue
    .line 441
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 443
    .local v1, "saveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    :try_start_0
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :try_start_1
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroid/sec/clipboard/util/FileHelper;->saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3

    return v2

    .line 443
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 448
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public allDelete()V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public createData(Lcom/samsung/android/content/clipboard/data/SemClipData;)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .locals 1
    .param p1, "element"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 403
    new-instance v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-direct {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;-><init>(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    return-object v0
.end method

.method public createDataList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public dump()V
    .locals 5

    .prologue
    .line 708
    const-string/jumbo v2, "Clipboard.FileManager"

    const-string/jumbo v3, "==========================================================="

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "wrap$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 711
    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 712
    const-string/jumbo v2, "Clipboard.FileManager"

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string/jumbo v2, "Clipboard.FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 716
    .end local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    const-string/jumbo v2, "Clipboard.FileManager"

    const-string/jumbo v3, "==========================================================="

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-void
.end method

.method public gc()V
    .locals 6

    .prologue
    .line 720
    const-string/jumbo v3, "Clipboard.FileManager"

    const-string/jumbo v4, "run gc()1"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 724
    .local v1, "list":[Ljava/io/File;
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 725
    :cond_0
    return-void

    .line 729
    :cond_1
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->deleteEquals(Ljava/util/ArrayList;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 730
    array-length v2, v1

    .line 733
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 734
    aget-object v3, v1, v0

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v4}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 735
    const-string/jumbo v3, "Clipboard.FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "list [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 733
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_3
    return-void
.end method

.method public load()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createDataList()Ljava/util/ArrayList;

    move-result-object v1

    .line 475
    .local v1, "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    const-string/jumbo v2, "Clipboard.FileManager"

    const-string/jumbo v3, "load ...info file"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 486
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 487
    const-string/jumbo v2, "Clipboard.FileManager"

    const-string/jumbo v3, "failed load ...clips.info file"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_1
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    const-string/jumbo v2, "Clipboard.FileManager"

    const-string/jumbo v3, "load ...clips.info_temp file"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :try_start_1
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->infoTempFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 503
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 504
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 505
    const-string/jumbo v2, "Clipboard.FileManager"

    const-string/jumbo v3, "failed to load info file. create new list."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_3
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createDataList()Ljava/util/ArrayList;

    move-result-object v1

    .line 511
    :cond_4
    :try_start_2
    invoke-direct {p0, v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->loadDataList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 516
    :goto_2
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    return-object v2

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 481
    const/4 v1, 0x0

    .local v1, "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    goto :goto_0

    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    :catch_1
    move-exception v0

    .line 496
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 497
    const/4 v1, 0x0

    .restart local v1    # "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    goto :goto_1

    .line 512
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "temp_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    :catch_2
    move-exception v0

    .line 513
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createDataList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    .line 514
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public removeDB()V
    .locals 3

    .prologue
    .line 742
    const-string/jumbo v0, "Clipboard.FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDB()_rootPath :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 741
    return-void
.end method

.method public removeKNOXClipFilder()V
    .locals 5

    .prologue
    .line 747
    const-string/jumbo v3, "Clipboard.FileManager"

    const-string/jumbo v4, "run removeKNOXClipFilder()"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 751
    .local v1, "list":[Ljava/io/File;
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 754
    :cond_1
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->dataList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->deleteEquals(Ljava/util/ArrayList;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 755
    array-length v2, v1

    .line 758
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 759
    aget-object v3, v1, v0

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v4}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 760
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "clips.info"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 758
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    :cond_3
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    goto :goto_1

    .line 746
    :cond_4
    return-void
.end method

.method public declared-synchronized save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z
    .locals 1
    .param p1, "wfClip"    # Landroid/sec/clipboard/data/file/WrapFileClipData;

    .prologue
    monitor-enter p0

    .line 536
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save(Landroid/sec/clipboard/data/file/WrapFileClipData;Z)Z
    .locals 7
    .param p1, "wfClip"    # Landroid/sec/clipboard/data/file/WrapFileClipData;
    .param p2, "isForced"    # Z

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 540
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v2

    .line 541
    .local v2, "fh":Landroid/sec/clipboard/util/FileHelper;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 543
    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 544
    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    invoke-static {}, Landroid/sec/clipboard/util/StringHelper;->getUniqueString()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 549
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v1, "dir":Ljava/io/File;
    if-nez p2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 552
    const-string/jumbo v4, "Clipboard.FileManager"

    const-string/jumbo v5, "Saving WrapFileClipData, folder already exists"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 553
    return v6

    .line 556
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/sec/clipboard/util/FileHelper;->checkDir(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 557
    invoke-virtual {v2, v1}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    .line 561
    :cond_1
    invoke-direct {p0, v1, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->makeDataValue(Ljava/io/File;Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 563
    const-string/jumbo v4, "/clip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    .local v0, "cfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/sec/clipboard/util/FileHelper;->saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 566
    const-string/jumbo v4, "Clipboard.FileManager"

    const-string/jumbo v5, "ok Wrap saveData"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p1, v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setDir(Ljava/io/File;)V

    .line 568
    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 572
    :cond_2
    :try_start_2
    const-string/jumbo v4, "Clipboard.FileManager"

    const-string/jumbo v5, "Can\'t Save File, Delete Directory"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {v2, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 574
    return v6

    .end local v0    # "cfile":Ljava/io/File;
    :cond_3
    monitor-exit p0

    .line 577
    return v6

    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "fh":Landroid/sec/clipboard/util/FileHelper;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public update()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    return-void
.end method

.method public updateForced()V
    .locals 3

    .prologue
    .line 416
    const-string/jumbo v0, "Clipboard.FileManager"

    const-string/jumbo v1, "updateForced()"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->saveInfoFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gcLifeCount:I

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 419
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gc()V

    .line 421
    :cond_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->saveTempInfoFile()Z

    .line 422
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    invoke-static {v0}, Landroid/sec/clipboard/data/file/FileManager;->-wrap0(Landroid/sec/clipboard/data/file/FileManager;)V

    .line 415
    :cond_1
    return-void
.end method
