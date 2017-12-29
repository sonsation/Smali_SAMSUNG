.class public Lcom/samsung/android/sdk/handwriting/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsInitialized:Z

.field private static mIsSdkAvailable:Z

.field private static mIsSdlAvailable:Z

.field private static mLibraryAbi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/handwriting/Recognizer;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    .line 22
    sput v1, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    .line 23
    sput-boolean v1, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsInitialized:Z

    .line 24
    sput-boolean v1, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    .line 25
    sput-boolean v1, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v8, "java.library.path"

    .line 28
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "/system/lib"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x2

    .line 31
    sput v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    .line 38
    :goto_0
    const/4 v5, 0x0

    .local v5, "isSDLinFramework":Z
    :try_start_0
    const-string/jumbo v8, "com.samsung.android.handwriting.SemRecognizer"

    .line 40
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    .local v0, "clazz":Ljava/lang/Class;
    if-nez v0, :cond_1

    .line 46
    .end local v0    # "clazz":Ljava/lang/Class;
    :goto_1
    if-nez v5, :cond_2

    .line 59
    sput-boolean v11, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    .line 63
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .local v7, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    const-string/jumbo v8, "com.samsung.android.sdk.handwriting"

    const/16 v9, 0x80

    .line 67
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 68
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    sget-object v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "APK Version = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v8, 0x1

    sput-boolean v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    .line 76
    sget v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    invoke-static {v8}, Lcom/samsung/android/sdk/handwriting/common/HwrConfig;->setLibraryAbi(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 84
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :goto_3
    sput-boolean v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsInitialized:Z

    .line 85
    return-void

    .line 29
    .end local v5    # "isSDLinFramework":Z
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    sput v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    goto :goto_0

    .line 42
    .restart local v0    # "clazz":Ljava/lang/Class;
    .restart local v5    # "isSDLinFramework":Z
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 45
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "No SDL apis"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 47
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    sget v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    invoke-static {p0, v8}, Lcom/samsung/android/handwriting/SemRecognizer;->initialize(Landroid/content/Context;I)V

    .line 48
    invoke-static {}, Lcom/samsung/android/handwriting/SemRecognizer;->isHandwritingSupported()Z

    move-result v8

    sput-boolean v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    .line 50
    :try_start_2
    new-instance v4, Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;

    const/4 v8, 0x1

    invoke-direct {v4, p0, v8}, Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;-><init>(Landroid/content/Context;Z)V

    .line 51
    .local v4, "engine":Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;
    invoke-virtual {v4}, Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    .end local v4    # "engine":Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;
    :goto_4
    sput-boolean v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    goto :goto_2

    .line 55
    :catch_1
    move-exception v3

    .line 53
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v10, "No framework authority"

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 54
    sput-boolean v11, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    goto :goto_4

    .line 83
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v1

    .line 78
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v11, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    .line 79
    sget-object v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "No SDK apis"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 83
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v3

    .line 81
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v10, "No authority to handwriting provider"

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 82
    sput-boolean v11, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    goto :goto_3
.end method

.method public static isSDKAvailable()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    return v0
.end method
