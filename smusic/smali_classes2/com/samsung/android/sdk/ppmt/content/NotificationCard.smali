.class public Lcom/samsung/android/sdk/ppmt/content/NotificationCard;
.super Lcom/samsung/android/sdk/ppmt/content/Card;
.source "NotificationCard.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBannerPicturePath:Ljava/lang/String;

.field private mBigPicturePath:Ljava/lang/String;

.field private mClickActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation
.end field

.field private mContentText:Ljava/lang/String;

.field private mContentTitle:Ljava/lang/String;

.field private mExpandedFlipAnim:I

.field private mExpandedFlipPeriod:I

.field private mExpandedFlipperPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedType:I

.field private mFoldedFlipAnim:I

.field private mFoldedFlipPeriod:I

.field private mFoldedFlipperPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldedType:I

.field private mLargeIconPath:Ljava/lang/String;

.field private mSmallIconPath:Ljava/lang/String;

.field private mSubContentText:Ljava/lang/String;

.field private mTicker:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "msgType"    # Ljava/lang/String;
    .param p3, "marketingType"    # Ljava/lang/String;
    .param p4, "displayId"    # I
    .param p5, "targetid"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/ppmt/content/Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mFoldedFlipperPaths:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mExpandedFlipperPaths:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method private isDisabledNotiSettingOpt(Landroid/content/Context;)Z
    .locals 14
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 79
    const-string v2, "android.app.AppOpsManager"

    .line 80
    .local v2, "className":Ljava/lang/String;
    const-string v7, "checkOp"

    .line 81
    .local v7, "methodName":Ljava/lang/String;
    const/16 v5, 0xb

    .line 83
    .local v5, "field":I
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x13

    if-lt v10, v13, :cond_0

    .line 85
    :try_start_0
    const-string v10, "appops"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "appOpsManager":Ljava/lang/Object;
    const-string v10, "android.app.AppOpsManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 89
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x3

    new-array v8, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v8, v10

    const/4 v10, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v8, v10

    const/4 v10, 0x2

    const-class v13, Ljava/lang/String;

    aput-object v13, v8, v10

    .line 90
    .local v8, "paramTypes":[Ljava/lang/Class;
    const-string v10, "checkOp"

    invoke-virtual {v3, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 91
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x3

    new-array v1, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v13, 0xb

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v1, v10

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v1, v10

    const/4 v10, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v1, v10

    .line 92
    .local v1, "args":[Ljava/lang/Object;
    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 93
    .local v9, "result":I
    if-eqz v9, :cond_1

    move v10, v11

    :goto_0
    move v12, v10

    .line 98
    .end local v0    # "appOpsManager":Ljava/lang/Object;
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .end local v9    # "result":I
    :cond_0
    :goto_1
    return v12

    .restart local v0    # "appOpsManager":Ljava/lang/Object;
    .restart local v1    # "args":[Ljava/lang/Object;
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "paramTypes":[Ljava/lang/Class;
    .restart local v9    # "result":I
    :cond_1
    move v10, v12

    .line 93
    goto :goto_0

    .line 94
    .end local v0    # "appOpsManager":Ljava/lang/Object;
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "paramTypes":[Ljava/lang/Class;
    .end local v9    # "result":I
    :catch_0
    move-exception v4

    .line 95
    .local v4, "e":Ljava/lang/Exception;
    goto :goto_1
.end method


# virtual methods
.method public filterCardBeforeDisplay(Landroid/content/Context;)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->isDisabledNotiSettingOpt(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] cannot show noti : disabled \'show notification\' option"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DISABLE_NOTI_OPTION:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->filterCardBeforeDisplay(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBannerPicturePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mBannerPicturePath:Ljava/lang/String;

    return-object v0
.end method

.method public getBigPicturePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mBigPicturePath:Ljava/lang/String;

    return-object v0
.end method

.method public getClickActions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mClickActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mContentText:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayMeta()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 239
    invoke-super {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getDisplayMeta()Landroid/os/Bundle;

    move-result-object v1

    .line 240
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "ticker"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getTicker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v3, "f_type"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getFoldedType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string v3, "e_type"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getExpandedType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    const-string v3, "content_title"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getContentTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v3, "content_text"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getContentText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v3, "sub_content_text"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getSubContentText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v3, "app_icon"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getAppIconId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    const-string/jumbo v3, "small_icon"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getSmallIconPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v3, "large_icon"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getLargeIconPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v3, "big_picture"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getBigPicturePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v3, "banner"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getBannerPicturePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getFoldedFlipperPaths()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    const-string v3, "f_flip_path"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getFoldedFlipperPaths()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 253
    const-string v3, "f_flip_period"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getFoldedFlipPeriod()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    const-string v3, "f_flip_anim"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getFoldedFlipAnim()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getExpandedFlipperPaths()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    const-string v3, "e_flip_path"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getExpandedFlipperPaths()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 258
    const-string v3, "e_flip_period"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getExpandedFlipPeriod()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v3, "e_flip_anim"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getExpandedFlipAnim()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getClickActions()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 262
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getClickActions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->getClickActions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;

    .line 264
    .local v0, "action":Lcom/samsung/android/sdk/ppmt/content/CardAction;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "click_action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "action":Lcom/samsung/android/sdk/ppmt/content/CardAction;
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public getExpandedFlipAnim()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mExpandedFlipAnim:I

    return v0
.end method

.method public getExpandedFlipPeriod()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mExpandedFlipPeriod:I

    return v0
.end method

.method public getExpandedFlipperPaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mExpandedFlipperPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExpandedType()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mExpandedType:I

    return v0
.end method

.method public getFoldedFlipAnim()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mFoldedFlipAnim:I

    return v0
.end method

.method public getFoldedFlipPeriod()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mFoldedFlipPeriod:I

    return v0
.end method

.method public getFoldedFlipperPaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mFoldedFlipperPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFoldedType()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mFoldedType:I

    return v0
.end method

.method public getLargeIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mLargeIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mSmallIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSubContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mSubContentText:Ljava/lang/String;

    return-object v0
.end method

.method public getTicker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mTicker:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportType()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-super {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->isSupportType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget v1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mFoldedType:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mFoldedType:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 55
    iget v1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mExpandedType:I

    packed-switch v1, :pswitch_data_0

    .line 64
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :pswitch_1
    return v0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public putExpandedFlipperPaths(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mExpandedFlipperPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public putFoldedFlipperPaths(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mFoldedFlipperPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public setBannerPicturePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "bannerPicturePath"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mBannerPicturePath:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setBigPicturePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "bigPicturePath"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mBigPicturePath:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setClickActions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/content/CardAction;>;"
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mClickActions:Ljava/util/ArrayList;

    .line 235
    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentText"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mContentText:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentTitle"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mContentTitle:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setExpandedFlipAnim(I)V
    .locals 0
    .param p1, "expandedFlipAnim"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mExpandedFlipAnim:I

    .line 227
    return-void
.end method

.method public setExpandedFlipPeriod(I)V
    .locals 0
    .param p1, "expandedFlipPeriod"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mExpandedFlipPeriod:I

    .line 211
    return-void
.end method

.method public setExpandedType(I)V
    .locals 0
    .param p1, "expandedType"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mExpandedType:I

    .line 115
    return-void
.end method

.method public setFoldedFlipAnim(I)V
    .locals 0
    .param p1, "foldedFlipAnim"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mFoldedFlipAnim:I

    .line 219
    return-void
.end method

.method public setFoldedFlipPeriod(I)V
    .locals 0
    .param p1, "foldedFlipPeriod"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mFoldedFlipPeriod:I

    .line 203
    return-void
.end method

.method public setFoldedType(I)V
    .locals 0
    .param p1, "foldedType"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mFoldedType:I

    .line 107
    return-void
.end method

.method public setLargeIconPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "largeIconPath"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mLargeIconPath:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setSmallIconPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "smallIconPath"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mSmallIconPath:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setSubContentText(Ljava/lang/String;)V
    .locals 0
    .param p1, "subContentText"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mSubContentText:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setTicker(Ljava/lang/String;)V
    .locals 0
    .param p1, "ticker"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->mTicker:Ljava/lang/String;

    .line 123
    return-void
.end method
