.class Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
.super Ljava/lang/Object;
.source "SamsungStartingWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungStartingWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomStartingWindowData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;
    }
.end annotation


# static fields
.field public static final CUSTOM_STARTING_WINDOW_AUTO_CAPTURE:Ljava/lang/String; = "com.samsung.android.startingwindow.AUTO_CAPTURE"

.field private static final CUSTOM_STARTING_WINDOW_FILE_NAME:Ljava/lang/String; = "CustomStartingWindowImage"

.field public static final CUSTOM_STARTING_WINDOW_IMAGE_PATH:Ljava/lang/String; = "com.samsung.android.startingwindow.IMAGE_PATH"

.field public static final CUSTOM_STARTING_WINDOW_IMAGE_PATH_QUALIFIER:Ljava/lang/String; = "com.samsung.android.startingwindow.IMAGE_PATH_QUALIFIER"

.field public static final CUSTOM_STARTING_WINDOW_IS_FIXED_ORIENTATION:Ljava/lang/String; = "com.samsung.android.startingwindow.fixedorientation"

.field public static final CUSTOM_STARTING_WINDOW_LAYOUT_RESID:Ljava/lang/String; = "com.samsung.android.startingwindow.LAYOUT_RESID"

.field public static final CUSTOM_STARTING_WINDOW_LAYOUT_RESID_FOR_MASS:Ljava/lang/String; = "com.samsung.android.startingwindow.LAYOUT_RESID_FOR_MASS"

.field public static final CUSTOM_STARTING_WINDOW_REVERSE_LAYOUT_RESID:Ljava/lang/String; = "com.samsung.android.startingwindow.REVERSE_LAYOUT_RESID"

.field private static final TAG:Ljava/lang/String; = "CustomStartingWindowData"


# instance fields
.field public bitmapIsLoaded:Z

.field captureSavingThread:Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;

.field capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

.field public customImage:Ljava/lang/String;

.field private customImageQualifier:Ljava/lang/String;

.field public isFixedOrientation:Z

.field public isStartingWindowRemoveRequested:Z

.field public isTransitionFinished:Z

.field public key:Ljava/lang/String;

.field private mStartingWindowTag:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field public resIdOfDefaultLayout:I

.field public resIdOfReverseLayout:I

.field public taskUserId:I

.field final synthetic this$0:Lcom/android/server/wm/SamsungStartingWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->mStartingWindowTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->mStartingWindowTag:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/server/wm/SamsungStartingWindowManager;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wm/SamsungStartingWindowManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1287
    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1241
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->key:Ljava/lang/String;

    .line 1244
    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->packageName:Ljava/lang/String;

    .line 1247
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->taskUserId:I

    .line 1253
    iput v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfDefaultLayout:I

    .line 1256
    iput v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfReverseLayout:I

    .line 1259
    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    .line 1261
    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    .line 1265
    iput-boolean v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->bitmapIsLoaded:Z

    .line 1268
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->mStartingWindowTag:Ljava/lang/String;

    .line 1274
    iput-boolean v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->isFixedOrientation:Z

    .line 1283
    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    .line 1284
    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->captureSavingThread:Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;

    .line 1287
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/SamsungStartingWindowManager;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/wm/SamsungStartingWindowManager;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "metaData"    # Landroid/os/Bundle;
    .param p4, "_taskUserId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1292
    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1241
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->key:Ljava/lang/String;

    .line 1244
    iput-object v5, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->packageName:Ljava/lang/String;

    .line 1247
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->taskUserId:I

    .line 1253
    iput v4, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfDefaultLayout:I

    .line 1256
    iput v4, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfReverseLayout:I

    .line 1259
    iput-object v5, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    .line 1261
    iput-object v5, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    .line 1265
    iput-boolean v4, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->bitmapIsLoaded:Z

    .line 1268
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->mStartingWindowTag:Ljava/lang/String;

    .line 1274
    iput-boolean v4, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->isFixedOrientation:Z

    .line 1283
    iput-object v5, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    .line 1284
    iput-object v5, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->captureSavingThread:Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;

    .line 1294
    if-nez p2, :cond_0

    .line 1295
    return-void

    .line 1300
    :cond_0
    iput-object p2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->packageName:Ljava/lang/String;

    .line 1303
    iput p4, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->taskUserId:I

    .line 1305
    const/4 v0, 0x0

    .line 1320
    .local v0, "autoCapture":Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 1323
    invoke-static {}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1324
    const-string v1, "com.samsung.android.startingwindow.LAYOUT_RESID_FOR_MASS"

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfDefaultLayout:I

    .line 1328
    :cond_1
    iget v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfDefaultLayout:I

    if-nez v1, :cond_2

    .line 1329
    const-string v1, "com.samsung.android.startingwindow.LAYOUT_RESID"

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfDefaultLayout:I

    .line 1332
    :cond_2
    iget v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfDefaultLayout:I

    if-eqz v1, :cond_3

    .line 1333
    const-string v1, "CustomStartingWindowData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomStartingWindow : load layout resource id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfDefaultLayout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_3
    const-string v1, "com.samsung.android.startingwindow.fixedorientation"

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->isFixedOrientation:Z

    .line 1337
    const-string v1, "CustomStartingWindowData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomStartingWindow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isFixedOrientation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->isFixedOrientation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const-string v1, "com.samsung.android.startingwindow.REVERSE_LAYOUT_RESID"

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfReverseLayout:I

    .line 1341
    iget v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfReverseLayout:I

    if-eqz v1, :cond_4

    .line 1342
    const-string v1, "CustomStartingWindowData"

    const-string v2, "CustomStartingWindow Reverse Layout support app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_4
    const-string v1, "com.samsung.android.startingwindow.IMAGE_PATH"

    invoke-virtual {p3, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    .line 1346
    const-string v1, "com.samsung.android.startingwindow.IMAGE_PATH_QUALIFIER"

    invoke-virtual {p3, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    .line 1347
    iget-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1348
    :cond_5
    const-string v1, "CustomStartingWindowData"

    const-string v2, "CustomStartingWindow custom Image Path support app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_6
    return-void
.end method

.method private getQualifierFilePath(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 11
    .param p1, "qual"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/io/File;

    .prologue
    .line 1577
    if-eqz p1, :cond_4

    .line 1578
    const-string v4, "qualifier"

    .line 1579
    .local v4, "qualifierFilePath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1581
    .local v5, "qualifiers":[Ljava/lang/String;
    const-string v7, "all"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1583
    .local v0, "allQualifier":Z
    const/4 v2, 0x1

    .line 1584
    .local v2, "findFolder":Z
    const/4 v7, 0x0

    array-length v8, v5

    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v3, v5, v7

    .line 1585
    .local v3, "qualifier":Ljava/lang/String;
    const-string v9, "locale"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1586
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1584
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1587
    :cond_1
    if-nez v0, :cond_2

    const-string v9, "font"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1588
    :cond_2
    invoke-static {}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get1()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 1589
    .local v6, "selectedFont":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1590
    if-eqz v6, :cond_0

    .line 1591
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1596
    .end local v3    # "qualifier":Ljava/lang/String;
    .end local v6    # "selectedFont":Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_4

    .line 1597
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local p2    # "filePath":Ljava/io/File;
    .local v1, "filePath":Ljava/io/File;
    move-object p2, v1

    .line 1601
    .end local v0    # "allQualifier":Z
    .end local v1    # "filePath":Ljava/io/File;
    .end local v2    # "findFolder":Z
    .end local v4    # "qualifierFilePath":Ljava/lang/String;
    .end local v5    # "qualifiers":[Ljava/lang/String;
    .restart local p2    # "filePath":Ljava/io/File;
    :cond_4
    return-object p2
.end method


# virtual methods
.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 1417
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->getBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "capturedFile"    # Ljava/io/File;
    .param p2, "rotation"    # I

    .prologue
    .line 1509
    const/4 v4, 0x0

    .line 1511
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 1512
    const/4 v9, 0x0

    return-object v9

    .line 1515
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1516
    .local v2, "before":J
    const/4 v7, 0x0

    .line 1518
    .local v7, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 1519
    .local v5, "customImageFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    const-string v10, "auto"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1520
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 1522
    :cond_2
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/custom_image/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->taskUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1523
    .local v8, "tmpFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1524
    const-string v9, "CustomStartingWindowData"

    const-string v10, "CustomStartingWindow system takes"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    move-object v5, v8

    .line 1533
    .end local v8    # "tmpFile":Ljava/io/File;
    .local v5, "customImageFile":Ljava/io/File;
    :goto_0
    if-eqz v5, :cond_3

    .line 1534
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1535
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v9, v5, v1}, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->getBitmapFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v7

    .line 1539
    .end local v7    # "file":Ljava/io/File;
    :cond_3
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1541
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1542
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    sget-boolean v9, Lcom/android/server/wm/SamsungStartingWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "CustomStartingWindowData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow getImageFromCustomFile "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v2

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bitmap : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1553
    :cond_4
    return-object v4

    .line 1527
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    .local v5, "customImageFile":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "tmpFile":Ljava/io/File;
    :cond_5
    new-instance v5, Ljava/io/File;

    .end local v5    # "customImageFile":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/user/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->taskUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/custom_image/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "customImageFile":Ljava/io/File;
    goto/16 :goto_0

    .line 1530
    .end local v8    # "tmpFile":Ljava/io/File;
    .local v5, "customImageFile":Ljava/io/File;
    :cond_6
    new-instance v5, Ljava/io/File;

    .end local v5    # "customImageFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "customImageFile":Ljava/io/File;
    goto/16 :goto_0

    .line 1543
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "file":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 1544
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    sget-boolean v9, Lcom/android/server/wm/SamsungStartingWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "CustomStartingWindowData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow taking bitmap from custom file is fail by OOM. just show original starting window. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_7
    const/4 v9, 0x0

    return-object v9

    .line 1548
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    sget-boolean v9, Lcom/android/server/wm/SamsungStartingWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_9

    const-string v9, "CustomStartingWindowData"

    const-string v10, "CustomStartingWindow getTaskImage from file is failed. file not exists"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_9
    const/4 v9, 0x0

    return-object v9
.end method

.method getBitmapFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;
    .locals 2
    .param p1, "qual"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/io/File;
    .param p3, "rotation"    # I

    .prologue
    .line 1558
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->getQualifierFilePath(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 1561
    packed-switch p3, :pswitch_data_0

    .line 1569
    :pswitch_0
    new-instance v0, Ljava/io/File;

    const-string v1, "CustomStartingWindowImage.jpg"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1573
    .local v0, "file":Ljava/io/File;
    :goto_0
    return-object v0

    .line 1564
    .end local v0    # "file":Ljava/io/File;
    :pswitch_1
    new-instance v0, Ljava/io/File;

    const-string v1, "CustomStartingWindowImage_rotated.jpg"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1565
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 1561
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
