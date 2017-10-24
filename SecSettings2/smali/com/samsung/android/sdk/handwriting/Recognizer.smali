.class public Lcom/samsung/android/sdk/handwriting/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInitialized:Z

.field private mIsSdkAvailable:Z

.field private mIsSdlAvailable:Z

.field private mLibraryAbi:I

.field private mSettingAbi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-class v1, Lcom/samsung/android/sdk/handwriting/Recognizer;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/handwriting/Recognizer;->$assertionsDisabled:Z

    const-class v0, Lcom/samsung/android/sdk/handwriting/Recognizer;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 17
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsInitialized:Z

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    .line 41
    iput v1, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mSettingAbi:I

    .line 42
    iput v1, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 46
    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "1.1.0.20"

    .line 51
    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mSettingAbi:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 83
    iget v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mSettingAbi:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/handwriting/Recognizer;->initialize(Landroid/content/Context;I)V

    .line 84
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/handwriting/Recognizer;->initialize(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;I)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "libraryType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 101
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "HwrSdk version code = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/Recognizer;->getVersionCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "HwrSdk version name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/Recognizer;->getVersionName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Library eabi = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mSettingAbi:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 108
    :cond_0
    move/from16 v0, p2

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mSettingAbi:I

    .line 109
    if-eqz p2, :cond_4

    .line 125
    iget v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_8

    .line 128
    :cond_1
    move/from16 v0, p2

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    .line 130
    :goto_0
    iget v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_9

    .line 132
    iget v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_a

    .line 135
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "unknown library will be activated"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_1
    if-eqz p1, :cond_b

    .line 140
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Client package name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mContext:Landroid/content/Context;

    .line 144
    sget-object v12, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v12, :cond_c

    .line 145
    :cond_2
    new-instance v12, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string/jumbo v13, "Vendor is not supported"

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 105
    :cond_3
    iget v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mSettingAbi:I

    move/from16 v0, p2

    if-eq v12, v0, :cond_0

    .line 106
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "library abi mismatch: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mSettingAbi:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "-->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 110
    :cond_4
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-ge v12, v13, :cond_5

    const/4 v12, 0x1

    .line 122
    iput v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    goto :goto_0

    .line 111
    :cond_5
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Supported abis: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v12, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v12, v12

    if-gtz v12, :cond_6

    .line 115
    sget-object v12, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v12, v12

    if-gtz v12, :cond_7

    .line 119
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SDK library does not support target abis: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_6
    const/4 v12, 0x2

    .line 113
    iput v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    .line 114
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "System Default: 64 bit"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v12, 0x1

    .line 116
    iput v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    .line 117
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "System Default: 32 bit"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 125
    :cond_8
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-ge v12, v13, :cond_1

    .line 126
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "64 bit SDK library does not support on this platform: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 131
    :cond_9
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "32 bit library will be activated"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 133
    :cond_a
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "64 bit library will be activated"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 138
    :cond_b
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "context is invalid."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 144
    :cond_c
    sget-object v12, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v12, :cond_2

    const-string/jumbo v12, "Samsung"

    .line 147
    sget-object v13, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_10

    .line 151
    :cond_d
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x12

    if-lt v12, v13, :cond_11

    .line 159
    const/4 v7, 0x0

    .local v7, "isSDLinFramework":Z
    :try_start_0
    const-string/jumbo v12, "com.samsung.android.handwriting.SemRecognizer"

    .line 161
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 162
    .local v3, "clazz":Ljava/lang/Class;
    if-nez v3, :cond_12

    .line 167
    .end local v3    # "clazz":Ljava/lang/Class;
    :goto_2
    if-nez v7, :cond_13

    .line 172
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    .line 176
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    .local v8, "pi":Landroid/content/pm/PackageInfo;
    :try_start_1
    const-string/jumbo v12, "com.samsung.android.sdk.handwriting"

    const/16 v13, 0x80

    .line 179
    invoke-virtual {v9, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 180
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    iget v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    invoke-static {v12}, Lcom/samsung/android/sdk/handwriting/common/samsung/HwrConfig;->setLibraryAbi(I)V

    .line 181
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    :goto_4
    iget-boolean v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    if-eqz v12, :cond_14

    .line 225
    :cond_e
    :goto_5
    iget-boolean v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    if-eqz v12, :cond_1f

    :cond_f
    const/4 v12, 0x1

    :goto_6
    iput-boolean v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsInitialized:Z

    .line 226
    iget-boolean v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsInitialized:Z

    if-eqz v12, :cond_20

    .line 228
    return-void

    .end local v7    # "isSDLinFramework":Z
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_10
    const-string/jumbo v12, "Samsung"

    .line 147
    sget-object v13, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_d

    .line 148
    new-instance v12, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string/jumbo v13, "Vendor is not supported"

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 152
    :cond_11
    new-instance v12, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string/jumbo v13, "Device is not supported"

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 163
    .restart local v3    # "clazz":Ljava/lang/Class;
    .restart local v7    # "isSDLinFramework":Z
    :cond_12
    const/4 v7, 0x1

    goto :goto_2

    .line 166
    .end local v3    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v5

    .line 165
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "No SDL apis"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 168
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :cond_13
    iget v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/samsung/android/handwriting/SemRecognizer;->initialize(Landroid/content/Context;I)V

    .line 169
    invoke-static {}, Lcom/samsung/android/handwriting/SemRecognizer;->isHandwritingSupported()Z

    move-result v12

    iput-boolean v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    goto :goto_3

    .line 185
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v4

    .line 183
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    .line 184
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "No SDK apis"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 188
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    iget-boolean v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    if-eqz v12, :cond_e

    .line 189
    sget-boolean v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->$assertionsDisabled:Z

    if-eqz v12, :cond_17

    .line 190
    :cond_15
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "APK Version = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "SDK Version = 1.1.0.20"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v13, "\\."

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "apkVersion":[Ljava/lang/String;
    const-string/jumbo v12, "1.1.0.20"

    const-string/jumbo v13, "\\."

    .line 193
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .local v11, "sdkVersion":[Ljava/lang/String;
    const/4 v12, 0x4

    .line 194
    new-array v1, v12, [I

    .local v1, "apkData":[I
    const/4 v12, 0x4

    .line 195
    new-array v10, v12, [I

    .local v10, "sdkData":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    const/4 v12, 0x4

    .line 196
    if-lt v6, v12, :cond_18

    const/4 v6, 0x0

    :goto_8
    const/4 v12, 0x4

    .line 207
    if-lt v6, v12, :cond_1b

    const/4 v12, 0x0

    .line 218
    aget v12, v10, v12

    const/4 v13, 0x0

    aget v13, v1, v13

    if-le v12, v13, :cond_1e

    .line 219
    :cond_16
    sget-object v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "UPDATE sdk apk file!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    .line 221
    new-instance v12, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string/jumbo v13, "latest HwrSDK apk is required"

    const/4 v14, 0x3

    invoke-direct {v12, v13, v14}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 189
    .end local v1    # "apkData":[I
    .end local v2    # "apkVersion":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v10    # "sdkData":[I
    .end local v11    # "sdkVersion":[Ljava/lang/String;
    :cond_17
    if-nez v8, :cond_15

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 197
    .restart local v1    # "apkData":[I
    .restart local v2    # "apkVersion":[Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v10    # "sdkData":[I
    .restart local v11    # "sdkVersion":[Ljava/lang/String;
    :cond_18
    array-length v12, v2

    if-le v12, v6, :cond_19

    .line 201
    aget-object v12, v2, v6

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1a

    .line 205
    aget-object v12, v2, v6

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v1, v6

    .line 196
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_19
    const/4 v12, 0x0

    .line 198
    aput v12, v1, v6

    goto :goto_9

    :cond_1a
    const/4 v12, 0x0

    .line 202
    aput v12, v1, v6

    goto :goto_9

    .line 208
    :cond_1b
    array-length v12, v11

    if-le v12, v6, :cond_1c

    .line 212
    aget-object v12, v11, v6

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1d

    .line 216
    aget-object v12, v11, v6

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v10, v6

    .line 207
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_1c
    const/4 v12, 0x0

    .line 209
    aput v12, v10, v6

    goto :goto_a

    :cond_1d
    const/4 v12, 0x0

    .line 213
    aput v12, v10, v6

    goto :goto_a

    :cond_1e
    const/4 v12, 0x0

    .line 218
    aget v12, v10, v12

    const/4 v13, 0x0

    aget v13, v1, v13

    if-ne v12, v13, :cond_e

    const/4 v12, 0x1

    aget v12, v10, v12

    const/4 v13, 0x1

    aget v13, v1, v13

    if-gt v12, v13, :cond_16

    goto/16 :goto_5

    .line 225
    .end local v1    # "apkData":[I
    .end local v2    # "apkVersion":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v10    # "sdkData":[I
    .end local v11    # "sdkVersion":[Ljava/lang/String;
    :cond_1f
    iget-boolean v12, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    if-nez v12, :cond_f

    const/4 v12, 0x0

    goto/16 :goto_6

    .line 227
    :cond_20
    new-instance v12, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string/jumbo v13, "HwrSDK apk is not installed"

    const/4 v14, 0x2

    invoke-direct {v12, v13, v14}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v12
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsInitialized:Z

    return v0
.end method

.method public isSDKAvailable()Z
    .locals 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 262
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    return v0

    .line 261
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/handwriting/UninitializedException;

    const-string/jumbo v1, "Initialization is required."

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/handwriting/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSDLAvailable()Z
    .locals 2

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 249
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    return v0

    .line 248
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/handwriting/UninitializedException;

    const-string/jumbo v1, "Initialization is required."

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/handwriting/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
