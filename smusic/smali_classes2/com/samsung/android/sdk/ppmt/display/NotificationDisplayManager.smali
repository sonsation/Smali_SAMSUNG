.class public Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;
.super Lcom/samsung/android/sdk/ppmt/display/DisplayManager;
.source "NotificationDisplayManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;-><init>()V

    return-void
.end method

.method private buildNotificationWithBuilder(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fType"    # I
    .param p3, "eType"    # I
    .param p4, "smallIconId"    # I
    .param p5, "smallIconPath"    # Ljava/lang/String;
    .param p6, "ticker"    # Ljava/lang/String;
    .param p7, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 122
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    invoke-static {p5}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 124
    .local v1, "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 129
    .end local v1    # "smallIcon":Landroid/graphics/drawable/Icon;
    :goto_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 130
    invoke-direct {p0, p1, v0, p7}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->setBasicBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    .line 133
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    .line 134
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 145
    :goto_1
    return-object v2

    .line 126
    :cond_1
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 136
    :cond_2
    packed-switch p3, :pswitch_data_0

    .line 145
    :goto_2
    :pswitch_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto :goto_1

    .line 138
    :pswitch_1
    invoke-direct {p0, p1, v0, p7}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->setBigPictureBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    goto :goto_2

    .line 141
    :pswitch_2
    invoke-direct {p0, p1, v0, p7}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->setBigTextBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    goto :goto_2

    .line 136
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getBannerLayoutId(Landroid/content/Context;)I
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getScreenType(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 256
    sget v0, Lcom/samsung/android/sdk/ppmt/R$layout;->noti_banner_tablet:I

    .line 258
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/samsung/android/sdk/ppmt/R$layout;->noti_banner:I

    goto :goto_0
.end method

.method private getBannerRemoteView(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 240
    const-string v3, "banner"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "bannerPicturePath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 242
    sget-object v3, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v4, "fail to make notification. banner path null"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v3, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v3

    .line 246
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    .local v0, "bannerBmp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->getBannerLayoutId(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 249
    .local v2, "customView":Landroid/widget/RemoteViews;
    sget v3, Lcom/samsung/android/sdk/ppmt/R$id;->banner_icon:I

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 250
    return-object v2
.end method

.method private getBigContentView(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "eType"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;
        }
    .end annotation

    .prologue
    .line 231
    packed-switch p2, :pswitch_data_0

    .line 235
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 233
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->getViewFlipperRemoteView(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private getClickPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mid"    # Ljava/lang/String;
    .param p3, "targetid"    # Ljava/lang/String;
    .param p4, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 361
    .local p5, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {p1, p2, p3, p5}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->getClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 363
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x8000000

    invoke-static {p1, p4, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getContentView(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fType"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;
        }
    .end annotation

    .prologue
    .line 220
    packed-switch p2, :pswitch_data_0

    .line 226
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 222
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->getBannerRemoteView(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    .line 224
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->getViewFlipperRemoteView(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDeletePendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mid"    # Ljava/lang/String;
    .param p3, "targetid"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    .line 368
    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->getDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x8000000

    invoke-static {p1, p4, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getNotification(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/Notification;
    .locals 23
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
        }
    .end annotation

    .prologue
    .line 78
    const-string v3, "f_type"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 79
    .local v11, "fType":I
    const-string v3, "e_type"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 80
    .local v12, "eType":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->isSupportType(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    sget-object v3, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v4, "fail to get notif. not supported type"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v3, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v3

    .line 84
    :cond_0
    const-string v3, "mid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "mid":Ljava/lang/String;
    const-string/jumbo v3, "targetid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "targetid":Ljava/lang/String;
    const-string/jumbo v3, "ticker"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 87
    .local v15, "ticker":Ljava/lang/String;
    const-string v3, "app_icon"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 88
    .local v17, "appIconId":I
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration;->getNotifSmallIcon()I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration;->getNotifSmallIcon()I

    move-result v13

    .line 89
    .local v13, "smallIconId":I
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    const-string/jumbo v3, "small_icon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 90
    .local v14, "smallIconPath":Ljava/lang/String;
    :goto_1
    const-string v3, "click_action"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->getActionList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 91
    .local v8, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-ltz v17, :cond_1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 92
    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v4, "fail to get notif. invalid data"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v3, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v3

    .end local v8    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v13    # "smallIconId":I
    .end local v14    # "smallIconPath":Ljava/lang/String;
    :cond_2
    move/from16 v13, v17

    .line 88
    goto :goto_0

    .line 89
    .restart local v13    # "smallIconId":I
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .restart local v8    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v14    # "smallIconPath":Ljava/lang/String;
    :cond_4
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p3

    .line 95
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->getClickPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)Landroid/app/PendingIntent;

    move-result-object v19

    .line 96
    .local v19, "clickIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->getDeletePendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v21

    .local v21, "deleteIntent":Landroid/app/PendingIntent;
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v16, p2

    .line 98
    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->buildNotificationWithBuilder(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v22

    .line 100
    .local v22, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v11, v2}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->getContentView(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object v20

    .line 101
    .local v20, "contentView":Landroid/widget/RemoteViews;
    if-eqz v20, :cond_5

    .line 102
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 104
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_6

    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v12, v2}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->getBigContentView(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object v18

    .line 106
    .local v18, "bigContentView":Landroid/widget/RemoteViews;
    if-eqz v18, :cond_6

    .line 107
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 110
    .end local v18    # "bigContentView":Landroid/widget/RemoteViews;
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 111
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 113
    return-object v22
.end method

.method private getViewFlipperLayoutId(Landroid/content/Context;Z)I
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "isExpanded"    # Z

    .prologue
    .line 319
    if-eqz p2, :cond_0

    .line 320
    sget v0, Lcom/samsung/android/sdk/ppmt/R$layout;->expanded_viewflipper:I

    .line 327
    :goto_0
    return v0

    .line 323
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getScreenType(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 325
    sget v0, Lcom/samsung/android/sdk/ppmt/R$layout;->folded_viewflipper_tablet:I

    goto :goto_0

    .line 327
    :cond_1
    sget v0, Lcom/samsung/android/sdk/ppmt/R$layout;->folded_viewflipper:I

    goto :goto_0
.end method

.method private getViewFlipperRemoteView(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "isExpanded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 263
    if-eqz p3, :cond_0

    const-string v8, "e_flip_path"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 265
    .local v3, "flipper_paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-nez v3, :cond_1

    .line 266
    sget-object v8, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v9, "fail to make notification. flipper paths null"

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v8, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v8}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v8

    .line 263
    .end local v3    # "flipper_paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const-string v8, "f_flip_path"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 269
    .restart local v3    # "flipper_paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v3}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->decodeFileList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 270
    .local v2, "flipper_imgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    if-eqz p3, :cond_3

    const-string v8, "e_flip_period"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 273
    .local v4, "flipper_period":I
    :goto_1
    if-lez v4, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_4

    .line 274
    :cond_2
    sget-object v8, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v9, "fail to make notification. invalid flipper period, images"

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v8, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;

    invoke-direct {v8}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;-><init>()V

    throw v8

    .line 270
    .end local v4    # "flipper_period":I
    :cond_3
    const-string v8, "f_flip_period"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 279
    .restart local v4    # "flipper_period":I
    :cond_4
    if-eqz p3, :cond_5

    const-string v8, "e_flip_anim"

    invoke-virtual {p2, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 281
    .local v0, "animId":I
    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->getViewFlipperResId(I)I

    move-result v7

    .line 283
    .local v7, "viewFlipperId":I
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/samsung/android/sdk/ppmt/R$layout;->noti_viewflipper:I

    invoke-direct {v1, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 284
    .local v1, "flipperRemoteView":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v7, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 285
    const-string/jumbo v8, "setFlipInterval"

    invoke-virtual {v1, v7, v8, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 287
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 288
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 289
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->getViewFlipperLayoutId(Landroid/content/Context;Z)I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 291
    .local v6, "rv":Landroid/widget/RemoteViews;
    if-eqz p3, :cond_7

    .line 292
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-gt v8, v9, :cond_6

    .line 293
    sget v9, Lcom/samsung/android/sdk/ppmt/R$id;->flipper_expanded_icon:I

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v8}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->resizeBitmapUpToScreenSize(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 300
    :goto_4
    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_3

    .line 279
    .end local v0    # "animId":I
    .end local v1    # "flipperRemoteView":Landroid/widget/RemoteViews;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    .end local v6    # "rv":Landroid/widget/RemoteViews;
    .end local v7    # "viewFlipperId":I
    :cond_5
    const-string v8, "f_flip_anim"

    invoke-virtual {p2, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    .line 295
    .restart local v0    # "animId":I
    .restart local v1    # "flipperRemoteView":Landroid/widget/RemoteViews;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    .restart local v6    # "rv":Landroid/widget/RemoteViews;
    .restart local v7    # "viewFlipperId":I
    :cond_6
    sget v9, Lcom/samsung/android/sdk/ppmt/R$id;->flipper_expanded_icon:I

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v9, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_4

    .line 298
    :cond_7
    sget v9, Lcom/samsung/android/sdk/ppmt/R$id;->flipper_folded_icon:I

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v9, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_4

    .line 302
    .end local v6    # "rv":Landroid/widget/RemoteViews;
    :cond_8
    return-object v1
.end method

.method private getViewFlipperResId(I)I
    .locals 1
    .param p1, "animation"    # I

    .prologue
    .line 306
    packed-switch p1, :pswitch_data_0

    .line 314
    sget v0, Lcom/samsung/android/sdk/ppmt/R$id;->viewflipper:I

    :goto_0
    return v0

    .line 308
    :pswitch_0
    sget v0, Lcom/samsung/android/sdk/ppmt/R$id;->viewflipper_anim1:I

    goto :goto_0

    .line 310
    :pswitch_1
    sget v0, Lcom/samsung/android/sdk/ppmt/R$id;->viewflipper_anim2:I

    goto :goto_0

    .line 312
    :pswitch_2
    sget v0, Lcom/samsung/android/sdk/ppmt/R$id;->viewflipper_anim3:I

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isSupportType(II)Z
    .locals 2
    .param p1, "foldedType"    # I
    .param p2, "expandedType"    # I

    .prologue
    const/4 v0, 0x1

    .line 391
    if-lt p1, v0, :cond_0

    const/4 v1, 0x3

    if-gt p1, v1, :cond_0

    .line 393
    packed-switch p2, :pswitch_data_0

    .line 401
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :pswitch_1
    return v0

    .line 393
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

.method private printBundle(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 405
    if-eqz p1, :cond_1

    .line 406
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 407
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .local v0, "dataStr":Ljava/lang/StringBuilder;
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 410
    .local v2, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 412
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    sget-object v4, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .end local v0    # "dataStr":Ljava/lang/StringBuilder;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private resizeBitmapUpToScreenSize(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 375
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 376
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 377
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 379
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v6, v7, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 380
    .local v0, "deviceSizeLong":I
    :goto_0
    move v4, v0

    .line 381
    .local v4, "imgWidth":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v6, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int v3, v6, v7

    .line 384
    .local v3, "imgHeight":I
    const/4 v6, 0x1

    :try_start_0
    invoke-static {p2, v4, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 386
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object p2

    .line 379
    .end local v0    # "deviceSizeLong":I
    .end local v3    # "imgHeight":I
    .end local v4    # "imgWidth":I
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 385
    .restart local v0    # "deviceSizeLong":I
    .restart local v3    # "imgHeight":I
    .restart local v4    # "imgWidth":I
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private setBasicBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "builder"    # Landroid/app/Notification$Builder;
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 151
    const-string v5, "content_title"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "contentTitle":Ljava/lang/String;
    const-string v5, "content_text"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "contentText":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 154
    :cond_0
    sget-object v5, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v6, "fail to build basic notification. invalid params"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v5, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v5

    .line 157
    :cond_1
    const-string v5, "large_icon"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "largeIconPath":Ljava/lang/String;
    const-string v5, "app_icon"

    const/4 v6, -0x1

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 159
    .local v0, "appIconId":I
    invoke-static {p1, v4, v0}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->decodeFile(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 161
    .local v3, "largeIcon":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 164
    return-void
.end method

.method private setBigPictureBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "builder"    # Landroid/app/Notification$Builder;
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->setBasicBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    .line 171
    const-string v4, "content_text"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "contentText":Ljava/lang/String;
    const-string v4, "big_picture"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "bigPicturePath":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    :cond_0
    sget-object v4, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v5, "fail to build bigpicture notification. invalid map"

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v4, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v4}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v4

    .line 177
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    .local v0, "bigPicture":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 179
    sget-object v4, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v5, "fail to decode bigPicture"

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v4, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;

    invoke-direct {v4}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;-><init>()V

    throw v4

    .line 183
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-gt v4, v5, :cond_3

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->resizeBitmapUpToScreenSize(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    :cond_3
    new-instance v4, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v4, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 191
    const-string/jumbo v4, "sub_content_text"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "subContentText":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 193
    invoke-virtual {p2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 195
    :cond_4
    return-void
.end method

.method private setBigTextBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "builder"    # Landroid/app/Notification$Builder;
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->setBasicBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    .line 202
    const-string v2, "content_text"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "contentText":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 205
    sget-object v2, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v3, "fail to build bigtext notification. invalid map"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v2

    .line 209
    :cond_0
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 212
    const-string/jumbo v2, "sub_content_text"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "subContentText":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 216
    :cond_1
    return-void
.end method

.method private setNotificationFlags(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    const/16 v6, 0x10

    .line 332
    const-wide/16 v4, 0x0

    iput-wide v4, p2, Landroid/app/Notification;->when:J

    .line 333
    iput v6, p2, Landroid/app/Notification;->flags:I

    .line 335
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_0

    .line 336
    const/4 v3, 0x2

    iput v3, p2, Landroid/app/Notification;->priority:I

    .line 339
    :cond_0
    if-eqz p1, :cond_2

    .line 340
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 341
    .local v0, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getVibrateEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getVibratePattern()[J

    move-result-object v2

    .line 343
    .local v2, "vibratePattern":[J
    if-nez v2, :cond_3

    .line 344
    iget v3, p2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p2, Landroid/app/Notification;->defaults:I

    .line 349
    .end local v2    # "vibratePattern":[J
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getSoundEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getSoundUriString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "soundUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 352
    iget v3, p2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p2, Landroid/app/Notification;->defaults:I

    .line 358
    .end local v0    # "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    .end local v1    # "soundUri":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 346
    .restart local v0    # "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    .restart local v2    # "vibratePattern":[J
    :cond_3
    iput-object v2, p2, Landroid/app/Notification;->vibrate:[J

    goto :goto_0

    .line 354
    .end local v2    # "vibratePattern":[J
    .restart local v1    # "soundUri":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1
.end method


# virtual methods
.method public clear(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "displayId"    # I

    .prologue
    .line 419
    sget-object v1, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear notification in the noti bar. displayId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 421
    :cond_0
    const/4 v1, 0x0

    .line 428
    :goto_0
    return v1

    .line 424
    :cond_1
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 426
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 428
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public display(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "resultHandler"    # Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;

    .prologue
    const/4 v6, 0x0

    .line 42
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 43
    if-nez p2, :cond_1

    .line 44
    sget-object v4, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v5, "fail to display. data null"

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, v4, v6}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->printBundle(Landroid/os/Bundle;)V

    .line 51
    const-string v4, "displayid"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 52
    .local v0, "displayId":I
    if-gez v0, :cond_2

    .line 53
    sget-object v4, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v5, "fail to display. invalid displayid"

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, v4, v6}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->getNotification(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/Notification;

    move-result-object v3

    .line 60
    .local v3, "notification":Landroid/app/Notification;
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/sdk/ppmt/display/NotificationDisplayManager;->setNotificationFlags(Landroid/content/Context;Landroid/app/Notification;)V

    .line 62
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 64
    .local v2, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v2, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 65
    invoke-virtual {p3, p1}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->onSuccess(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 66
    .end local v2    # "manager":Landroid/app/NotificationManager;
    .end local v3    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, v4, v6}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v1    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Throwable;
    :goto_1
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v5, "img_decode_fail"

    invoke-virtual {p3, p1, v4, v5}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, v4, v6}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    goto :goto_1
.end method
