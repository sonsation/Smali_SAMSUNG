.class public Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;
.super Ljava/lang/Object;
.source "DeepLinkManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildDeepLinkTask(Landroid/content/Context;Landroid/app/Activity;Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 85
    invoke-static {p3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getSchemeType(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    move-result-object v2

    .line 86
    .local v2, "schemeType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    invoke-static {p3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getHostType(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    move-result-object v1

    .line 87
    .local v1, "hostType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;
    invoke-static {p3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getActionType(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object v0

    .line 89
    .local v0, "actionType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildDeepLinkTask : URI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-nez v2, :cond_0

    .line 203
    :goto_0
    return-object v3

    .line 95
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$SchemeType:[I

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 201
    :goto_1
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildDeepLinkTask : Matched task not exist : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 99
    :cond_1
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleDeepLink : Host or Action is not supported"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$HostType:[I

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 105
    :pswitch_1
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$ActionType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    goto :goto_1

    .line 107
    :pswitch_2
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 109
    :pswitch_3
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 113
    :pswitch_4
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$ActionType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3

    goto :goto_1

    .line 115
    :pswitch_5
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/MainLaunchTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 117
    :pswitch_6
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 119
    :pswitch_7
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;

    invoke-direct {v3, p2, p3, v7}, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 121
    :pswitch_8
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;

    invoke-direct {v3, p2, p3, v8}, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 123
    :pswitch_9
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;

    invoke-direct {v3, p2, p3, v7}, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 125
    :pswitch_a
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;

    invoke-direct {v3, p2, p3, v8}, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 129
    :pswitch_b
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$ActionType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_4

    goto/16 :goto_1

    .line 131
    :pswitch_c
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 135
    :pswitch_d
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$ActionType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    .line 137
    :sswitch_0
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 139
    :sswitch_1
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuShareTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 143
    :pswitch_e
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$ActionType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_1

    goto/16 :goto_1

    .line 145
    :sswitch_2
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 147
    :sswitch_3
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 151
    :pswitch_f
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$ActionType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_5

    goto/16 :goto_1

    .line 153
    :pswitch_10
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 157
    :pswitch_11
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$ActionType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_6

    goto/16 :goto_1

    .line 159
    :pswitch_12
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/AppUpdateTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/AppUpdateTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 163
    :pswitch_13
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$ActionType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_7

    goto/16 :goto_1

    .line 165
    :pswitch_14
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 169
    :pswitch_15
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$ActionType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_8

    goto/16 :goto_1

    .line 171
    :pswitch_16
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 175
    :pswitch_17
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$ActionType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_9

    :pswitch_18
    goto/16 :goto_1

    .line 177
    :pswitch_19
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;

    invoke-direct {v3, p1, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePlayTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 179
    :pswitch_1a
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePauseTask;

    invoke-direct {v3, p1, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePauseTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 181
    :pswitch_1b
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePrevTask;

    invoke-direct {v3, p1, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePrevTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 183
    :pswitch_1c
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceNextTask;

    invoke-direct {v3, p1, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceNextTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 185
    :pswitch_1d
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;

    invoke-direct {v3, p1, p3, v7}, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 187
    :pswitch_1e
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;

    invoke-direct {v3, p1, p3, v8}, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceAddTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 189
    :pswitch_1f
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;

    invoke-direct {v3, p1, p3, v7}, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 191
    :pswitch_20
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;

    invoke-direct {v3, p1, p3, v8}, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 198
    :pswitch_21
    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/FilePlayTask;

    invoke-direct {v3, p2, p3}, Lcom/samsung/android/app/music/milk/deeplink/task/FilePlayTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_21
    .end packed-switch

    .line 103
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_17
    .end packed-switch

    .line 105
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 113
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 129
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch

    .line 143
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x8 -> :sswitch_3
    .end sparse-switch

    .line 151
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch

    .line 157
    :pswitch_data_6
    .packed-switch 0x9
        :pswitch_12
    .end packed-switch

    .line 163
    :pswitch_data_7
    .packed-switch 0xa
        :pswitch_14
    .end packed-switch

    .line 169
    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_16
    .end packed-switch

    .line 175
    :pswitch_data_9
    .packed-switch 0x2
        :pswitch_19
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public static getInstance()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->mInstance:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->mInstance:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->mInstance:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    return-object v0
.end method

.method private internalHandleDeepLink(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "result":Z
    if-nez p3, :cond_0

    move v1, v0

    .line 81
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_0
    return v1

    .line 62
    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 64
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_3

    .line 65
    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->buildDeepLinkTask(Landroid/content/Context;Landroid/app/Activity;Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;

    move-result-object v2

    .line 67
    .local v2, "task":Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->isValidTask()Z

    move-result v0

    .line 70
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 71
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->preExecute()V

    .line 72
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .end local v2    # "task":Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
    :cond_1
    :goto_1
    move v1, v0

    .line 81
    .restart local v1    # "result":I
    goto :goto_0

    .line 74
    .end local v1    # "result":I
    .restart local v2    # "task":Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
    :cond_2
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "internalHandleDeepLink : URI is not null, but task is not valid"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 78
    .end local v2    # "task":Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
    :cond_3
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "internalHandleDeepLink : URI is null, cannot build a task"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public handleDeepLink(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->internalHandleDeepLink(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public handleServiceDeepLink(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->internalHandleDeepLink(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
