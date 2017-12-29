.class final Lcom/android/server/cover/CoverVerifier;
.super Ljava/lang/Object;
.source "CoverVerifier.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultClearCoverHeight:I

.field private mDefaultClearCoverWidth:I

.field private mDefaultCoverColor:I

.field private mDefaultCoverModel:I

.field private mDefaultMiniSViewCoverHeight:I

.field private mDefaultMiniSViewCoverWidth:I

.field private mDefaultSViewCoverHeight:I

.field private mDefaultSViewCoverWidth:I

.field private mIsCoverAttached:Z

.field private mIsCoverVerified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/CoverVerifier;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    .line 41
    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverModel:I

    .line 42
    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    .line 43
    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    .line 44
    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    .line 45
    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    .line 46
    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 47
    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .line 49
    iput-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 53
    iput-object p1, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Lcom/android/server/cover/CoverVerifier;->initializeDefaultCoverState()V

    .line 52
    return-void
.end method

.method private getDefaultTypeOfCover()I
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportVerifyCover()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSViewCover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 61
    return v2

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-nez v0, :cond_1

    .line 64
    return v1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportClearCover()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 67
    return v4

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    .line 70
    const/16 v0, 0xff

    return v0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportNeonCover()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 73
    return v5

    .line 75
    :cond_4
    return v3

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 80
    return v1

    .line 83
    :cond_6
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSViewCover()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    return v2

    .line 85
    :cond_7
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 86
    return v1

    .line 90
    :cond_8
    return v3
.end method

.method private getScreenSizeForClearCover()V
    .locals 5

    .prologue
    .line 150
    iget-object v3, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 151
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 152
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 153
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 154
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 155
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .line 149
    return-void
.end method

.method private getSupportSViewCoverHeight(I)I
    .locals 1
    .param p1, "coverType"    # I

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 128
    :pswitch_0
    const/4 v0, 0x0

    .line 130
    .local v0, "supportSViewCoverHeight":I
    :goto_0
    return v0

    .line 118
    .end local v0    # "supportSViewCoverHeight":I
    :pswitch_1
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_0

    .line 121
    .end local v0    # "supportSViewCoverHeight":I
    :pswitch_2
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_0

    .line 125
    .end local v0    # "supportSViewCoverHeight":I
    :pswitch_3
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getSupportSViewCoverWidth(I)I
    .locals 1
    .param p1, "coverType"    # I

    .prologue
    .line 95
    packed-switch p1, :pswitch_data_0

    .line 108
    :pswitch_0
    const/4 v0, 0x0

    .line 110
    .local v0, "supportSViewCoverWidth":I
    :goto_0
    return v0

    .line 98
    .end local v0    # "supportSViewCoverWidth":I
    :pswitch_1
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_0

    .line 101
    .end local v0    # "supportSViewCoverWidth":I
    :pswitch_2
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_0

    .line 105
    .end local v0    # "supportSViewCoverWidth":I
    :pswitch_3
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static isFactoryMode()Z
    .locals 2

    .prologue
    .line 318
    const-string v1, "ro.factory.factory_binary"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "strFactoryProp":Ljava/lang/String;
    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 323
    const-string v0, " Current CoverVerifier state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    const-string v0, "  mIsCoverVerified="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 325
    const-string v0, "  mIsCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 326
    const-string v0, "  mDefaultCoverType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 327
    const-string v0, "  mDefaultCoverColor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 328
    const-string v0, "  mDefaultSViewCoverWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 329
    const-string v0, "  mDefaultSViewCoverHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 330
    const-string v0, "  mDefaultMiniSViewCoverWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 331
    const-string v0, "  mDefaultMiniSViewCoverHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 332
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method initializeDefaultCoverState()V
    .locals 2

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 137
    const v1, 0x105024d

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    .line 139
    const v1, 0x105024e

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    .line 141
    const v1, 0x105024f

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    .line 143
    const v1, 0x1050250

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    .line 145
    invoke-direct {p0}, Lcom/android/server/cover/CoverVerifier;->getScreenSizeForClearCover()V

    .line 133
    :cond_0
    return-void
.end method

.method isCoverAttached()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    return v0
.end method

.method isCoverVerified()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    return v0
.end method

.method isCoverVerifiedAndAttached()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateCoverAttachState(Z)Z
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    const/4 v3, 0x1

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "change":Z
    iget-object v1, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eq v1, p1, :cond_0

    .line 275
    iput-boolean p1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 276
    const/4 v0, 0x1

    .line 299
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    iput-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 300
    sget-object v1, Lcom/android/server/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCoverAttachState : mIsCoverVerified ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 301
    const-string v3, ", attached="

    .line 300
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 301
    const-string v3, ", change="

    .line 300
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v0

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isSupportVerifyCover()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-nez v1, :cond_0

    .line 281
    iput-boolean v3, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 282
    const/4 v0, 0x1

    goto :goto_0

    .line 285
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eq v1, p1, :cond_0

    .line 286
    iput-boolean p1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 287
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :cond_3
    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_4

    .line 292
    sget-object v1, Lcom/android/server/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string v2, "updateCoverAttachState : This device is not support cover attach"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-nez v1, :cond_0

    .line 295
    iput-boolean v3, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 296
    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V
    .locals 8
    .param p1, "destCoverState"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "srcCoverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 175
    if-nez p2, :cond_3

    .line 176
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v1

    .line 178
    .local v1, "type":I
    iget v2, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    .line 179
    .local v2, "color":I
    iget v6, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverModel:I

    .line 180
    .local v6, "model":I
    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v3

    .line 181
    .local v3, "widthPixel":I
    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v4

    .line 182
    .local v4, "heightPixel":I
    invoke-static {}, Lcom/android/server/cover/CoverVerifier;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-boolean v5, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    .line 185
    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string v5, "[SmartCover] CoverVerify : sview cover test mode enabled"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v1    # "type":I
    .end local v2    # "color":I
    .end local v3    # "widthPixel":I
    .end local v4    # "heightPixel":I
    .end local v6    # "model":I
    :cond_1
    :goto_0
    return-void

    .line 186
    :cond_2
    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 187
    sget-object v0, Lcom/android/server/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string v5, "[SmartCover] CoverVerify : updateCoverPropertiesLocked : srcCoverState is null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_3
    invoke-static {}, Lcom/android/server/cover/CoverVerifier;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 192
    invoke-virtual {p1, p2}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    .line 194
    iget v1, p1, Lcom/samsung/android/cover/CoverState;->type:I

    .line 195
    .restart local v1    # "type":I
    const/16 v0, 0xff

    if-eq v1, v0, :cond_4

    .line 196
    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    .line 197
    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    .line 200
    :cond_4
    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_5

    .line 201
    sget-object v0, Lcom/android/server/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SmartCover] CoverVerify : updateCoverPropertiesLocked : type ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 202
    const-string v7, ", color="

    .line 201
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 202
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v7

    .line 201
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 202
    const-string v7, ", app Uri="

    .line 201
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 202
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v7

    .line 201
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 203
    const-string v7, ", widthPixel="

    .line 201
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 203
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getWindowWidth()I

    move-result v7

    .line 201
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 203
    const-string v7, ", heightPixel="

    .line 201
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 203
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v7

    .line 201
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v1    # "type":I
    :cond_5
    :goto_1
    return-void

    .line 207
    :cond_6
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eqz v0, :cond_8

    .line 209
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {p0}, Lcom/android/server/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v5

    .line 208
    invoke-static {v0, v5}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v1

    .line 211
    .restart local v1    # "type":I
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    iget v5, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    .line 210
    invoke-static {v0, v5}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    .line 213
    .restart local v2    # "color":I
    const-string v0, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

    iget v5, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverModel:I

    .line 212
    invoke-static {v0, v5}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v6

    .line 219
    .restart local v6    # "model":I
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v3

    .line 220
    .restart local v3    # "widthPixel":I
    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v4

    .line 221
    .restart local v4    # "heightPixel":I
    invoke-static {}, Lcom/android/server/cover/CoverVerifier;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 222
    iget-boolean v5, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    .line 224
    :cond_7
    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_5

    .line 225
    sget-object v0, Lcom/android/server/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCoverPropertiesLocked : mIsCoverAttached ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 226
    iget-boolean v7, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 225
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 226
    const-string v7, ", type="

    .line 225
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 226
    const-string v7, ", color="

    .line 225
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 226
    const-string v7, ", model="

    .line 225
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    .end local v1    # "type":I
    .end local v2    # "color":I
    .end local v3    # "widthPixel":I
    .end local v4    # "heightPixel":I
    .end local v6    # "model":I
    :cond_8
    invoke-direct {p0}, Lcom/android/server/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v1

    .line 216
    .restart local v1    # "type":I
    iget v2, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    .line 217
    .restart local v2    # "color":I
    iget v6, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverModel:I

    .restart local v6    # "model":I
    goto :goto_2
.end method

.method updateCoverVerification()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "change":Z
    iget-object v2, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v2, :cond_0

    .line 240
    iput-boolean v4, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 241
    const/4 v0, 0x1

    .line 266
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    iput-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 267
    sget-object v2, Lcom/android/server/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverVerification : mIsCoverVerified ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", change="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return v0

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isSupportVerifyCover()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 244
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v2, :cond_0

    .line 246
    iput-boolean v4, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 247
    const/4 v0, 0x1

    goto :goto_0

    .line 251
    :cond_2
    const-string v2, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    const/4 v3, -0x1

    .line 250
    invoke-static {v2, v3}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 252
    .local v1, "verified":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-eq v2, v1, :cond_0

    .line 253
    iput-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 254
    const/4 v0, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "verified":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "verified":Z
    goto :goto_1

    .line 258
    .end local v1    # "verified":Z
    :cond_4
    sget-boolean v2, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v2, :cond_5

    .line 259
    sget-object v2, Lcom/android/server/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string v3, "updateCoverVerification : This device is not support cover verify"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v2, :cond_0

    .line 262
    iput-boolean v4, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateCoverWindowSize(Lcom/samsung/android/cover/CoverState;)V
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    sget-object v2, Lcom/android/server/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string v3, "updateCoverWindowSize(): CoverState is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v0

    .line 164
    .local v0, "height":I
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v1

    .line 165
    .local v1, "width":I
    sget-object v2, Lcom/android/server/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverWindowSize(): old window = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 166
    const-string v4, " new window = "

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 166
    const-string v4, "x"

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p1, v1}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    .line 168
    invoke-virtual {p1, v0}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    .line 158
    return-void
.end method
