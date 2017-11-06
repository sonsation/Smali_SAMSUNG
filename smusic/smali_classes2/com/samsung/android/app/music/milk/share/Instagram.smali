.class public Lcom/samsung/android/app/music/milk/share/Instagram;
.super Lcom/samsung/android/app/music/milk/share/ShareItemImpl;
.source "Instagram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.instagram.android"

.field private static final SHARING_SCREENSHOT_FILE_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/app/music/milk/share/Instagram;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/share/Instagram;->LOG_TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sharing_screenshot_image.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/share/Instagram;->SHARING_SCREENSHOT_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;-><init>(Landroid/app/Activity;)V

    .line 33
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/share/Instagram;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/Instagram;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/Instagram;->saveCoverArtImage(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/samsung/android/app/music/milk/share/Instagram;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const v0, 0x7f020123

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getSnsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "Instagram"

    return-object v0
.end method

.method private saveCoverArtImage(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 7
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 112
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/share/Instagram;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/music/milk/share/Instagram;->SHARING_SCREENSHOT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v3, "screenshotImageFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 117
    :cond_0
    const/4 v1, 0x0

    .line 119
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    if-eqz v2, :cond_1

    .line 127
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :cond_1
    :goto_0
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-object v4

    .line 129
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/samsung/android/app/music/milk/share/Instagram;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "saveCoverArtImage >> Error closing screen shot FileOutpuStream"

    invoke-static {v4, v5, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-object v4, Lcom/samsung/android/app/music/milk/share/Instagram;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "saveCoverArtImage >> Error opening screen shot image file"

    invoke-static {v4, v5, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    const/4 v4, 0x0

    .line 126
    if-eqz v1, :cond_2

    .line 127
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 129
    :catch_2
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/app/music/milk/share/Instagram;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "saveCoverArtImage >> Error closing screen shot FileOutpuStream"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 126
    :goto_3
    if-eqz v1, :cond_3

    .line 127
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 131
    :cond_3
    :goto_4
    throw v4

    .line 129
    :catch_3
    move-exception v0

    .line 130
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/app/music/milk/share/Instagram;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "saveCoverArtImage >> Error closing screen shot FileOutpuStream"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 121
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public getSharedType()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x3ee

    return v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public login()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onSendButtonClicked(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 5
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 67
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Instagram;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 68
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const-string v2, "com.instagram.android"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v1, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;-><init>(Lcom/samsung/android/app/music/milk/share/Instagram;Lcom/samsung/android/app/music/milk/share/Instagram$1;)V

    .line 71
    .local v1, "task":Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;->access$100(Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    .line 72
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    .end local v1    # "task":Lcom/samsung/android/app/music/milk/share/Instagram$LoadImageTask;
    :cond_0
    return-void
.end method

.method public share(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 6
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 47
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/Instagram;->mContext:Landroid/content/Context;

    const-string v4, "com.instagram.android"

    const-string v5, "image/jpeg"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->isAbleToShareVia(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/Instagram;->onSendButtonClicked(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    :try_start_0
    const-string v3, "market://details?id=com.instagram.android"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 52
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/Instagram;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
