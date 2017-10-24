.class public Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;
.super Ljava/lang/Object;
.source "NaviBarForceTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$1;,
        Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$2;
    }
.end annotation


# static fields
.field private static mSingleton:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;


# instance fields
.field private mActionArray:[Landroid/net/Uri;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private final mFlashCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mForceTouchList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceTouchTestPkgChecked:I

.field private mIsFlashOn:Z

.field private mNavibarButtonCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;)[Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mActionArray:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mIsFlashOn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;I)V
    .locals 0
    .param p1, "buttonId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->updateForceTouchList(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSingleton:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mIsFlashOn:Z

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchList:Landroid/util/SparseArray;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    .line 60
    const-string/jumbo v1, "navigationbar_left_additional"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "navigationbar_left"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "navigationbar_center"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "navigationbar_right"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "navigationbar_right_additional"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 59
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mActionArray:[Landroid/net/Uri;

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$1;-><init>(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mNavibarButtonCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    .line 105
    new-instance v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$2;-><init>(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mFlashCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 333
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchTestPkgChecked:I

    .line 66
    return-void
.end method

.method private broadcastForceTouchEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 349
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 350
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.systemui.FORCE_TOUCH_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string/jumbo v1, "KeyCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    return-void
.end method

.method private callToNumber(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 315
    const-string/jumbo v2, "NaviBarForceTouchHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "callToNumber() number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "callIntent":Landroid/content/Intent;
    const v2, 0x10004000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NaviBarForceTouchHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeAutoRotateConfiguration()V
    .locals 3

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    .line 267
    .local v0, "isRotationLocked":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 265
    return-void

    .line 267
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getEventId(II)I
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 146
    const/4 v3, -0x1

    .line 147
    .local v3, "event":I
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d01d0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 148
    .local v7, "naviBarHeight":I
    const/4 v2, 0x0

    .line 149
    .local v2, "centerIcon":[I
    const/4 v10, 0x0

    .line 150
    .local v10, "rightIcon":[I
    const/4 v6, 0x0

    .line 151
    .local v6, "leftIcon":[I
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 152
    const/4 v5, 0x1

    .line 154
    .local v5, "landscape":Z
    :goto_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v8

    .line 155
    .local v8, "navigationBarView":Landroid/view/View;
    const v12, 0x7f130018

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 156
    .local v4, "homeIcon":Landroid/view/View;
    const v12, 0x7f1300c2

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 157
    .local v1, "backIcon":Landroid/view/View;
    const v12, 0x7f13033e

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 159
    .local v9, "recentIcon":Landroid/view/View;
    if-eqz v5, :cond_8

    .line 160
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentRotation()I

    move-result v11

    .line 161
    .local v11, "rotation":I
    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 162
    invoke-virtual {v4}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v2

    .line 163
    .local v2, "centerIcon":[I
    invoke-virtual {v1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v12

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v9}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v13

    const/4 v14, 0x1

    aget v13, v13, v14

    if-ge v12, v13, :cond_1

    .line 164
    invoke-virtual {v1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v10

    .line 165
    .local v10, "rightIcon":[I
    invoke-virtual {v9}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v6

    .line 170
    .local v6, "leftIcon":[I
    :goto_1
    const/4 v12, 0x0

    aget v12, v2, v12

    move/from16 v0, p1

    if-ge v0, v12, :cond_4

    .line 171
    return v3

    .line 152
    .end local v1    # "backIcon":Landroid/view/View;
    .end local v4    # "homeIcon":Landroid/view/View;
    .end local v5    # "landscape":Z
    .end local v8    # "navigationBarView":Landroid/view/View;
    .end local v9    # "recentIcon":Landroid/view/View;
    .end local v11    # "rotation":I
    .local v2, "centerIcon":[I
    .local v6, "leftIcon":[I
    .local v10, "rightIcon":[I
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "landscape":Z
    goto :goto_0

    .line 167
    .restart local v1    # "backIcon":Landroid/view/View;
    .local v2, "centerIcon":[I
    .restart local v4    # "homeIcon":Landroid/view/View;
    .restart local v8    # "navigationBarView":Landroid/view/View;
    .restart local v9    # "recentIcon":Landroid/view/View;
    .restart local v11    # "rotation":I
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v10

    .line 168
    .local v10, "rightIcon":[I
    invoke-virtual {v1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v6

    .local v6, "leftIcon":[I
    goto :goto_1

    .line 173
    .local v2, "centerIcon":[I
    .local v6, "leftIcon":[I
    .local v10, "rightIcon":[I
    :cond_2
    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    .line 174
    invoke-virtual {v4}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v2

    .line 175
    .local v2, "centerIcon":[I
    invoke-virtual {v1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v12

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v9}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v13

    const/4 v14, 0x1

    aget v13, v13, v14

    if-ge v12, v13, :cond_3

    .line 176
    invoke-virtual {v9}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v10

    .line 177
    .local v10, "rightIcon":[I
    invoke-virtual {v1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v6

    .line 182
    .local v6, "leftIcon":[I
    :goto_2
    const/4 v12, 0x0

    aget v12, v2, v12

    add-int/2addr v12, v7

    move/from16 v0, p1

    if-le v0, v12, :cond_4

    .line 183
    return v3

    .line 179
    .local v6, "leftIcon":[I
    .local v10, "rightIcon":[I
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v10

    .line 180
    .local v10, "rightIcon":[I
    invoke-virtual {v9}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v6

    .local v6, "leftIcon":[I
    goto :goto_2

    .line 187
    .end local v2    # "centerIcon":[I
    .end local v6    # "leftIcon":[I
    .end local v10    # "rightIcon":[I
    :cond_4
    const/4 v12, 0x1

    aget v12, v2, v12

    move/from16 v0, p2

    if-le v0, v12, :cond_6

    const/4 v12, 0x1

    aget v12, v2, v12

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    move/from16 v0, p2

    if-ge v0, v12, :cond_6

    .line 188
    const/4 v3, 0x2

    .line 215
    .end local v11    # "rotation":I
    :cond_5
    :goto_3
    return v3

    .line 189
    .restart local v11    # "rotation":I
    :cond_6
    const/4 v12, 0x1

    aget v12, v6, v12

    move/from16 v0, p2

    if-le v0, v12, :cond_7

    const/4 v12, 0x1

    aget v12, v6, v12

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    move/from16 v0, p2

    if-ge v0, v12, :cond_7

    .line 190
    const/4 v3, 0x1

    .line 189
    goto :goto_3

    .line 191
    :cond_7
    const/4 v12, 0x1

    aget v12, v10, v12

    move/from16 v0, p2

    if-le v0, v12, :cond_5

    const/4 v12, 0x1

    aget v12, v10, v12

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    move/from16 v0, p2

    if-ge v0, v12, :cond_5

    .line 192
    const/4 v3, 0x3

    goto :goto_3

    .line 196
    .end local v11    # "rotation":I
    .local v2, "centerIcon":[I
    .local v6, "leftIcon":[I
    .local v10, "rightIcon":[I
    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v2

    .line 197
    .local v2, "centerIcon":[I
    invoke-virtual {v1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v9}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    if-ge v12, v13, :cond_9

    .line 198
    invoke-virtual {v9}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v10

    .line 199
    .local v10, "rightIcon":[I
    invoke-virtual {v1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v6

    .line 205
    .local v6, "leftIcon":[I
    :goto_4
    const/4 v12, 0x1

    aget v12, v2, v12

    move/from16 v0, p2

    if-ge v0, v12, :cond_a

    .line 206
    return v3

    .line 201
    .local v6, "leftIcon":[I
    .local v10, "rightIcon":[I
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v10

    .line 202
    .local v10, "rightIcon":[I
    invoke-virtual {v9}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v6

    .local v6, "leftIcon":[I
    goto :goto_4

    .line 207
    :cond_a
    const/4 v12, 0x0

    aget v12, v2, v12

    move/from16 v0, p1

    if-le v0, v12, :cond_b

    const/4 v12, 0x0

    aget v12, v2, v12

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    move/from16 v0, p1

    if-ge v0, v12, :cond_b

    .line 208
    const/4 v3, 0x2

    .line 207
    goto :goto_3

    .line 209
    :cond_b
    const/4 v12, 0x0

    aget v12, v6, v12

    move/from16 v0, p1

    if-le v0, v12, :cond_c

    const/4 v12, 0x0

    aget v12, v6, v12

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    move/from16 v0, p1

    if-ge v0, v12, :cond_c

    .line 210
    const/4 v3, 0x1

    .line 209
    goto/16 :goto_3

    .line 211
    :cond_c
    const/4 v12, 0x0

    aget v12, v10, v12

    move/from16 v0, p1

    if-le v0, v12, :cond_5

    const/4 v12, 0x0

    aget v12, v10, v12

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    move/from16 v0, p1

    if-ge v0, v12, :cond_5

    .line 212
    const/4 v3, 0x3

    goto/16 :goto_3
.end method

.method private getForceAction(I)Ljava/lang/String;
    .locals 2
    .param p1, "buttonId"    # I

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 141
    const-string/jumbo v0, "NaviBarForceTouchHandler"

    const-string/jumbo v1, "getForceAction() buttonId invalied : return None"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string/jumbo v0, "None"

    return-object v0

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavBarLeftCornerForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavBarLeftForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavBarCenterForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavBarRightForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavBarRightCornerForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSingleton:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    return-object v0
.end method

.method private handleFlash()V
    .locals 4

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_0

    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const-string/jumbo v3, "0"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mIsFlashOn:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_1
    return-void

    .line 273
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string/jumbo v1, "NaviBarForceTouchHandler"

    const-string/jumbo v2, "Fail to set Torch Mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private injectKeyEvent(I)V
    .locals 10
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 281
    if-gez p1, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->sendEvent(IIIJ)V

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v6, 0x1

    move-object v4, p0

    move v5, p1

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->sendEvent(IIIJ)V

    .line 280
    return-void
.end method

.method private isForceTouchTestPackageInstalled()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 336
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchTestPkgChecked:I

    if-gez v3, :cond_0

    .line 337
    const-string/jumbo v1, "com.reliability.forcetouch"

    .line 338
    .local v1, "forceTouchTestPkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 340
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 343
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v2, :cond_1

    move v3, v4

    :goto_1
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchTestPkgChecked:I

    .line 345
    .end local v1    # "forceTouchTestPkg":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchTestPkgChecked:I

    if-ne v3, v4, :cond_2

    :goto_2
    return v4

    .restart local v1    # "forceTouchTestPkg":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 343
    goto :goto_1

    .end local v1    # "forceTouchTestPkg":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 345
    goto :goto_2

    .line 341
    .restart local v1    # "forceTouchTestPkg":Ljava/lang/String;
    .restart local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private launchActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    .line 297
    const-string/jumbo v3, "NaviBarForceTouchHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "launchActivity packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", activityName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .local v2, "launcher":Landroid/content/ComponentName;
    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 300
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 301
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "NaviBarForceTouchHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActivityNotFoundException intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processFactoryCodes(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->isForceTouchTestPackageInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->broadcastForceTouchEvent(I)V

    .line 327
    :cond_0
    return-void
.end method

.method private sendEvent(IIIJ)V
    .locals 16
    .param p1, "keyCode"    # I
    .param p2, "action"    # I
    .param p3, "flags"    # I
    .param p4, "when"    # J

    .prologue
    .line 289
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    .line 290
    .local v10, "repeatCount":I
    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    .line 291
    or-int/lit8 v2, p3, 0x8

    or-int/lit8 v14, v2, 0x40

    .line 290
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 291
    const/4 v13, 0x0

    const/16 v15, 0x101

    move-wide/from16 v4, p4

    move-wide/from16 v6, p4

    move/from16 v8, p2

    move/from16 v9, p1

    .line 290
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 292
    .local v3, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 288
    return-void

    .line 289
    .end local v3    # "ev":Landroid/view/KeyEvent;
    .end local v10    # "repeatCount":I
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "repeatCount":I
    goto :goto_0
.end method

.method private updateForceTouchList(I)V
    .locals 2
    .param p1, "buttonId"    # I

    .prologue
    .line 122
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 123
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchList:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->getForceAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    return-void
.end method


# virtual methods
.method public forceClickOnNaviBar(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->getEventId(II)I

    move-result v1

    .line 220
    .local v1, "buttonId":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchList:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    .local v3, "settingStr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->processFactoryCodes(I)V

    .line 224
    if-ltz v1, :cond_0

    if-nez v3, :cond_1

    .line 225
    :cond_0
    const-string/jumbo v4, "NaviBarForceTouchHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "*** Force action null *** buttonId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", settingStr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v8

    .line 229
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchList:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "actionPackages":[Ljava/lang/String;
    const-string/jumbo v4, "NaviBarForceTouchHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "forceClickOnNaviBar() buttonId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    aget-object v4, v0, v8

    const-string/jumbo v5, "None"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 236
    return v8

    .line 234
    :cond_2
    const-string/jumbo v5, "FullScreen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 238
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v8, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->changeNavigationBarHeight(IZ)V

    .line 239
    return v7

    .line 234
    :cond_3
    const-string/jumbo v5, "AutoRotate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->changeAutoRotateConfiguration()V

    .line 242
    return v7

    .line 234
    :cond_4
    const-string/jumbo v5, "Flash"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->handleFlash()V

    .line 245
    return v7

    .line 234
    :cond_5
    const-string/jumbo v5, "QuickPanel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 247
    const/16 v4, 0x3eb

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->injectKeyEvent(I)V

    .line 248
    return v7

    .line 234
    :cond_6
    const-string/jumbo v5, "Capture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 250
    const/16 v4, 0x3ec

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->injectKeyEvent(I)V

    .line 251
    return v7

    .line 234
    :cond_7
    const-string/jumbo v5, "LaunchApp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 253
    aget-object v4, v0, v7

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "launchAppPackages":[Ljava/lang/String;
    aget-object v4, v2, v8

    aget-object v5, v2, v7

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->launchActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return v7

    .line 234
    .end local v2    # "launchAppPackages":[Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, "DirectCall"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 257
    const-string/jumbo v4, "NaviBarForceTouchHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "forceClickOnNaviBar DirectCall ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->callToNumber(Ljava/lang/String;)V

    .line 259
    return v7

    .line 262
    :cond_9
    return v8
.end method

.method public init(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mNavibarButtonCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mActionArray:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 81
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchList:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->getForceAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mFlashCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 74
    return-void
.end method
