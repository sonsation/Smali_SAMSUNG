.class Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationType:I

.field private mAnimationView:Landroid/view/View;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOnAnimation:Z

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

.field private mScreenshotView:Landroid/widget/ImageView;

.field final mShutterEffectLock:Ljava/lang/Object;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/screenshot/GlobalScreenshot;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenCaptureHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotSelectorView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/ScreenCaptureHelper;)Lcom/android/systemui/screenshot/ScreenCaptureHelper;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getScreenCaptureHelper(Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->playCaptureSound()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "screenBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 590
    const-class v0, Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    .line 602
    iput-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;

    .line 610
    iput-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    .line 622
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    .line 1043
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    .line 628
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 629
    .local v1, "r":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 631
    const-string/jumbo v4, "ro.build.scafe"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, "uiType":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 637
    :cond_0
    const-string/jumbo v4, "ro.build.scafe.version"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "uiVersion":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 647
    .end local v3    # "uiVersion":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 649
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040047

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 650
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v5, 0x7f130143

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    .line 652
    iget v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    if-ne v4, v9, :cond_6

    .line 653
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v5, 0x7f130145

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 662
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v5, 0x7f130146

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    .line 663
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v4, v8}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setFocusable(Z)V

    .line 664
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v4, v8}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setFocusableInTouchMode(Z)V

    .line 665
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 666
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 675
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 677
    const-string/jumbo v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 676
    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    .line 678
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 682
    const v4, 0x1050006

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 681
    iput v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    .line 685
    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    .line 686
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v4, v7}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->load(I)V

    .line 687
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    .line 689
    iput-boolean v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 627
    return-void

    .line 633
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_2
    const-string/jumbo v4, "capuccino"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "latte"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 634
    :cond_3
    iput v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    goto/16 :goto_0

    .line 638
    .restart local v3    # "uiVersion":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x4

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x7e0

    if-lt v4, v5, :cond_1

    .line 639
    const-string/jumbo v4, "2016A"

    const/4 v5, 0x5

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 640
    iput v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    goto/16 :goto_0

    .line 642
    :cond_5
    iput v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    goto/16 :goto_0

    .line 654
    .end local v3    # "uiVersion":Ljava/lang/String;
    .restart local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_6
    iget v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    if-ne v4, v10, :cond_7

    .line 655
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    const v5, 0x7f0b0125

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 656
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v5, 0x7f130145

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 657
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_1

    .line 659
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v5, 0x7f130144

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    goto/16 :goto_1
.end method

.method private getAnimationMode(I)I
    .locals 4
    .param p1, "sweepDirection"    # I

    .prologue
    .line 1113
    const/4 v0, 0x0

    .line 1114
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1115
    const/4 v0, 0x0

    .line 1121
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAnimationMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return v0

    .line 1116
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1117
    const/4 v0, 0x1

    goto :goto_0

    .line 1118
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 1119
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getCapacityState()I
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 882
    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "storage"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    .line 883
    .local v9, "storageManager":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 885
    .local v7, "extStoragePath":Ljava/io/File;
    if-eqz v7, :cond_3

    .line 888
    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .local v8, "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 895
    .local v4, "blockSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 898
    .local v0, "availableBlocks":J
    mul-long v2, v0, v4

    .line 900
    .local v2, "availableSpace":J
    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 901
    sget-object v10, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "GlobalScreenshot [UBS Enabled Mode]"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return v12

    .line 889
    .end local v0    # "availableBlocks":J
    .end local v2    # "availableSpace":J
    .end local v4    # "blockSize":J
    .end local v8    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v6

    .line 890
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    sget-object v10, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "IllegalArgumentException occured when create StatFs."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return v12

    .line 903
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "availableBlocks":J
    .restart local v2    # "availableSpace":J
    .restart local v4    # "blockSize":J
    .restart local v8    # "stat":Landroid/os/StatFs;
    :cond_0
    const-wide/32 v10, 0x200000

    cmp-long v10, v2, v10

    if-gez v10, :cond_1

    .line 905
    sget-object v10, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "GlobalScreenshot available Space = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return v13

    .line 907
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v10, v11, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 908
    sget-object v10, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Could not screen apture in live demo binary!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return v12

    .line 911
    :cond_2
    const/4 v10, 0x1

    return v10

    .line 914
    .end local v0    # "availableBlocks":J
    .end local v2    # "availableSpace":J
    .end local v4    # "blockSize":J
    .end local v8    # "stat":Landroid/os/StatFs;
    :cond_3
    sget-object v10, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "GlobalScreenshot extStoragePath is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return v12
.end method

.method private getScreenCaptureHelper(Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureType"    # I

    .prologue
    .line 1017
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1018
    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isMobildKeyboardCovered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    new-instance v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForMobileKeypad;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForMobileKeypad;-><init>()V

    return-object v0

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isEasyOneHandRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1021
    new-instance v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForEasyOneHand;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForEasyOneHand;-><init>()V

    return-object v0

    .line 1023
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1024
    new-instance v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForPartial;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForPartial;-><init>()V

    return-object v0

    .line 1025
    :cond_2
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    .line 1026
    new-instance v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;-><init>()V

    return-object v0

    .line 1029
    :cond_3
    new-instance v0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;-><init>()V

    return-object v0
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nManager"    # Landroid/app/NotificationManager;

    .prologue
    const v7, 0x7f0f0282

    const v5, 0x7f0f0281

    const/4 v6, 0x1

    .line 1199
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1202
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1203
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1202
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1204
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1202
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1205
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1202
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1206
    const v4, 0x7f02057c

    .line 1202
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1202
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1209
    const-string/jumbo v4, "err"

    .line 1202
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1212
    const v4, 0x106005a

    .line 1211
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 1202
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1213
    .local v0, "b":Landroid/app/Notification$Builder;
    invoke-static {p0, v0}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 1214
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1215
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1214
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1217
    .local v1, "n":Landroid/app/Notification;
    const v3, 0x7f13003a

    invoke-virtual {p1, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1198
    return-void
.end method

.method private playCaptureSound()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1165
    const-string/jumbo v7, "service.camera.running"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1166
    .local v3, "isCameraRunning":Z
    const-string/jumbo v7, "service.camera.rec.running"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1167
    .local v4, "isRecordRunning":Z
    const-string/jumbo v7, "service.camera.sfs.running"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1168
    .local v5, "isSmartStayRunning":Z
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isVideoCall(Landroid/content/Context;)Z

    move-result v6

    .line 1169
    .local v6, "isVtCallRunning":Z
    sget-object v7, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isCameraRunning = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isRecordRunning = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isSmartStayRunning = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isVtCallRunning = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v10, "CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera"

    invoke-virtual {v7, v10, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1172
    if-eqz v3, :cond_0

    if-eqz v4, :cond_3

    move v10, v8

    :goto_0
    if-eqz v5, :cond_4

    move v7, v8

    :goto_1
    and-int/2addr v7, v10

    if-nez v7, :cond_1

    :cond_0
    if-eqz v6, :cond_2

    .line 1173
    :cond_1
    sget-object v7, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "[CSCFEATURE_FRAMEWORK_ENABLESCRCAPTURESOUNDONLYINCAMERA] Camera is running!!!!"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    .line 1176
    :cond_2
    return-void

    :cond_3
    move v10, v9

    .line 1172
    goto :goto_0

    :cond_4
    move v7, v9

    goto :goto_1

    .line 1179
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "audio"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1180
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1181
    .local v1, "extraRingerMode":I
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_9

    move v2, v9

    .line 1183
    .local v2, "forcedShutterSound":Z
    :goto_2
    if-eqz v2, :cond_a

    if-eqz v3, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    if-eqz v6, :cond_a

    .line 1184
    :cond_7
    sget-object v7, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "[forcedShutterSound] Camera is running!!!!"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    .line 1164
    :cond_8
    :goto_3
    return-void

    .end local v2    # "forcedShutterSound":Z
    :cond_9
    move v2, v8

    .line 1181
    goto :goto_2

    .line 1187
    .restart local v2    # "forcedShutterSound":Z
    :cond_a
    const/4 v7, 0x2

    if-ne v1, v7, :cond_b

    .line 1188
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v7, v8, v8}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    goto :goto_3

    .line 1189
    :cond_b
    if-ne v1, v9, :cond_8

    .line 1190
    sget-object v7, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mVibrator.semIsHapticSupported() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v9}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v7}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1192
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc36c

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    goto :goto_3
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "screenBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 696
    const/4 v8, 0x0

    .line 697
    .local v8, "topActivityName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 698
    .local v0, "activtyMngr":Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    .line 699
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 700
    .local v7, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 701
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 702
    .local v8, "topActivityName":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 703
    const-string/jumbo v9, "com.samsung.palmswipetutorial.PalmSwipeActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 704
    const-string/jumbo v9, "com.samsung.pickuptutorial.PalmSwipeTutorial"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 702
    if-eqz v9, :cond_1

    .line 705
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v9}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenCaptureOrigin()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 706
    sget-object v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Capture is not executed in PalmSwipeTutorial."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 708
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 709
    return-void

    .line 716
    .end local v7    # "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v8    # "topActivityName":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 717
    .local v6, "r":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 719
    .local v3, "panelWidth":I
    const v9, 0x7f0d01ff

    :try_start_0
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 722
    :goto_0
    if-gtz v3, :cond_2

    .line 724
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v9}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDisplayWidth()I

    move-result v3

    .line 726
    :cond_2
    move v5, v3

    .line 727
    .local v5, "previewWidth":I
    const v9, 0x7f0d01e1

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 729
    .local v4, "previewHeight":I
    new-instance v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-direct {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;-><init>()V

    .line 730
    .local v1, "data":Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v9, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 731
    iput-object p2, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 732
    iget v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v9, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 733
    iput-object p1, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    .line 734
    iput v5, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    .line 735
    iput v4, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 736
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v9}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenCaptureOrigin()I

    move-result v9

    iput v9, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedOrigin:I

    .line 737
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    iput v9, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->rotation:I

    .line 738
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    iput-object v9, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->webData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    .line 739
    new-instance v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {v9, v10, v1, v11}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .line 740
    const/4 v11, 0x0

    aput-object v1, v10, v11

    .line 739
    invoke-virtual {v9, v10}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 695
    return-void

    .line 720
    .end local v1    # "data":Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .end local v4    # "previewHeight":I
    .end local v5    # "previewWidth":I
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method private showMemoryFullDialog(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "finisher"    # Ljava/lang/Runnable;

    .prologue
    .line 920
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v3, 0x7f100230

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 921
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f0284

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 922
    const v2, 0x7f0f0285

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 923
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 924
    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 932
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 933
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 934
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 935
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 919
    return-void
.end method

.method private startAnimation(Ljava/lang/Runnable;ZZ)V
    .locals 11
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z

    .prologue
    .line 1048
    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1049
    :try_start_0
    sget-object v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAnimation start!!! mAnimationType : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getAnimationWindowType()I

    move-result v3

    .line 1052
    .local v3, "windowType":I
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getAnimationWindowFlag()I

    move-result v4

    .line 1053
    .local v4, "windowFlag":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 1054
    const/4 v1, -0x1

    .line 1055
    const/4 v2, -0x1

    .line 1058
    const/4 v5, -0x3

    .line 1053
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1060
    .local v0, "effectViewParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1061
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1062
    const-string/jumbo v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1064
    const/4 v8, 0x0

    .line 1065
    .local v8, "frame":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/FrameLayout;

    .end local v8    # "frame":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1067
    .local v8, "frame":Landroid/widget/FrameLayout;
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1068
    new-instance v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;

    .line 1076
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1077
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1078
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1080
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1081
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1084
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1089
    :goto_1
    :try_start_4
    new-instance v9, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    invoke-direct {v9, p0, v8, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/widget/FrameLayout;Ljava/lang/Runnable;)V

    .line 1091
    .local v9, "onCaptureAnimationListener":Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/screenshot/CaptureEffectView;->setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;)V

    .line 1092
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v10

    .line 1047
    return-void

    .line 1069
    .end local v9    # "onCaptureAnimationListener":Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
    :cond_0
    :try_start_5
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1070
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    iget v1, v1, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSweepDirection:I

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getAnimationMode(I)I

    move-result v6

    .line 1071
    .local v6, "animationMode":I
    new-instance v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1048
    .end local v0    # "effectViewParams":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "windowType":I
    .end local v4    # "windowFlag":I
    .end local v6    # "animationMode":I
    .end local v8    # "frame":Landroid/widget/FrameLayout;
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 1073
    .restart local v0    # "effectViewParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "windowType":I
    .restart local v4    # "windowFlag":I
    .restart local v8    # "frame":Landroid/widget/FrameLayout;
    :cond_1
    :try_start_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AnimationType is wrong. animationType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1078
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1085
    :catch_0
    move-exception v7

    .line 1086
    .local v7, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mScreenshotLayout "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method stopScreenshot()V
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->stopSelection()V

    .line 1035
    :cond_0
    return-void
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZ)V
    .locals 19
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z

    .prologue
    .line 750
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    if-eqz v3, :cond_0

    .line 751
    sget-object v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Capture is not executed while animation is playing."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 753
    return-void

    .line 756
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    if-nez v3, :cond_2

    .line 757
    :cond_1
    sget-object v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mHelper :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", mContext :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0289

    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 759
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 760
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 761
    return-void

    .line 764
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 766
    invoke-static {}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isUPSMCaptureSupported()Z

    move-result v11

    .line 767
    .local v11, "isUPSMCaptureSupported":Z
    if-nez v11, :cond_4

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v4, 0x104081e

    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 769
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 770
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 771
    return-void

    .line 775
    .end local v11    # "isUPSMCaptureSupported":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v4, 0x104081d

    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 776
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 777
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 778
    return-void

    .line 797
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getCapacityState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 812
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenCaptureOrigin()I

    move-result v12

    .line 814
    .local v12, "origin":I
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 815
    const/4 v3, 0x1

    if-ne v12, v3, :cond_7

    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "SCOR"

    const-string/jumbo v7, "SCKE"

    invoke-static {v3, v4, v7}, Lcom/android/systemui/screenshot/UsabilityLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenWidth()I

    move-result v17

    .line 828
    .local v17, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenHeight()I

    move-result v14

    .line 829
    .local v14, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenshotRectToCapture()Landroid/graphics/Rect;

    move-result-object v2

    .line 830
    .local v2, "rectToCapture":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenNativeWidth()F

    move-result v16

    .line 831
    .local v16, "screenNativeWidth":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenNativeHeight()F

    move-result v15

    .line 832
    .local v15, "screenNativeHeight":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenshotMinLayer()I

    move-result v5

    .line 833
    .local v5, "minLayer":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenshotMaxLayer()I

    move-result v6

    .line 834
    .local v6, "maxLayer":I
    sget-object v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "screenWidth = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 835
    const-string/jumbo v7, ", screenHeight = "

    .line 834
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 836
    const-string/jumbo v7, ", rectToCapture = "

    .line 834
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 836
    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    .line 834
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 837
    const-string/jumbo v7, ", screenNativeWidth = "

    .line 834
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 838
    const-string/jumbo v7, ", screenNativeHeight = "

    .line 834
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 839
    const-string/jumbo v7, ", minLayer ="

    .line 834
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 840
    const-string/jumbo v7, ", maxLayer = "

    .line 834
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    move/from16 v0, v16

    float-to-int v3, v0

    float-to-int v4, v15

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 843
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gtz v3, :cond_a

    .line 844
    :cond_6
    sget-object v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mScreenBitmap is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0289

    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 846
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 847
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 848
    return-void

    .line 799
    .end local v2    # "rectToCapture":Landroid/graphics/Rect;
    .end local v5    # "minLayer":I
    .end local v6    # "maxLayer":I
    .end local v12    # "origin":I
    .end local v14    # "screenHeight":I
    .end local v15    # "screenNativeHeight":F
    .end local v16    # "screenNativeWidth":F
    .end local v17    # "screenWidth":I
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showMemoryFullDialog(Ljava/lang/Runnable;)V

    .line 800
    sget-object v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "CapacityState : CAPACITY_ERROR_MEMORY_FULL, so finish screenshot."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return-void

    .line 803
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0281

    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 804
    sget-object v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "CapacityState : CAPACITY_ERROR_UNKNOWN, so finish screenshot."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 806
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 807
    return-void

    .line 817
    .restart local v12    # "origin":I
    :cond_7
    const/4 v3, 0x2

    if-ne v12, v3, :cond_8

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "SCOR"

    const-string/jumbo v7, "SCPA"

    invoke-static {v3, v4, v7}, Lcom/android/systemui/screenshot/UsabilityLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 819
    :cond_8
    const/4 v3, 0x3

    if-ne v12, v3, :cond_9

    .line 820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "SCOR"

    const-string/jumbo v7, "SCQP"

    invoke-static {v3, v4, v7}, Lcom/android/systemui/screenshot/UsabilityLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 821
    :cond_9
    const/4 v3, 0x4

    if-ne v12, v3, :cond_5

    goto/16 :goto_0

    .line 843
    .restart local v2    # "rectToCapture":Landroid/graphics/Rect;
    .restart local v5    # "minLayer":I
    .restart local v6    # "maxLayer":I
    .restart local v14    # "screenHeight":I
    .restart local v15    # "screenNativeHeight":F
    .restart local v16    # "screenNativeWidth":F
    .restart local v17    # "screenWidth":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lez v3, :cond_6

    .line 851
    invoke-static {}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isWritingWebDataFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    move/from16 v0, v17

    invoke-static {v3, v0, v14}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->getWebData(Landroid/content/Context;II)Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    .line 855
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenDegrees()F

    move-result v10

    .line 856
    .local v10, "degrees":F
    const/4 v3, 0x0

    cmpl-float v3, v10, v3

    if-lez v3, :cond_d

    const/4 v13, 0x1

    .line 857
    .local v13, "requiresRotation":Z
    :goto_1
    if-eqz v13, :cond_c

    .line 859
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    invoke-static {v0, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 860
    .local v18, "ss":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 861
    .local v9, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 862
    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->rotate(F)V

    .line 863
    move/from16 v0, v16

    neg-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-float v4, v15

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 865
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 868
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 871
    .end local v9    # "c":Landroid/graphics/Canvas;
    .end local v18    # "ss":Landroid/graphics/Bitmap;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->onPostScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 875
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    monitor-enter v4

    .line 876
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    invoke-direct/range {p0 .. p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 746
    return-void

    .line 856
    .end local v13    # "requiresRotation":Z
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 875
    .restart local v13    # "requiresRotation":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 797
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZIII)V
    .locals 6
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z
    .param p4, "sweepDirection"    # I
    .param p5, "capturedDisplay"    # I
    .param p6, "capturedOrigin"    # I

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getScreenCaptureHelper(Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    .line 941
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallize(Landroid/content/Context;Landroid/view/Display;III)V

    .line 942
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    .line 939
    return-void
.end method

.method takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V
    .locals 8
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 957
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 958
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 959
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 961
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 963
    const/16 v5, 0x7f4

    .line 964
    const v6, 0x1080500

    .line 968
    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    .line 961
    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 969
    .local v0, "selectorViewParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1007
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 956
    return-void
.end method

.method takeScreenshotWindow(Ljava/lang/Runnable;ZZIIILandroid/os/Bundle;)V
    .locals 7
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z
    .param p4, "sweepDirection"    # I
    .param p5, "capturedDisplay"    # I
    .param p6, "capturedOrigin"    # I
    .param p7, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getScreenCaptureHelper(Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    .line 948
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallize(Landroid/content/Context;Landroid/view/Display;IIILandroid/os/Bundle;)V

    .line 949
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    .line 946
    return-void
.end method
